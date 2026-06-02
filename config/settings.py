import os
import re
from pathlib import Path

from dotenv import load_dotenv

from config.platform_loader import build_runtime_config, load_platform_config

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent
load_dotenv(BASE_DIR / '.env')
PLATFORM_CONFIG = load_platform_config(BASE_DIR / 'config' / 'platform.config')
DT_RUNTIME_CONFIG = build_runtime_config(PLATFORM_CONFIG)


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.getenv('DJANGO_SECRET_KEY', 'django-insecure-local-dev-key')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = os.getenv('DJANGO_DEBUG', 'true').lower() == 'true'

ALLOWED_HOSTS = [host.strip() for host in os.getenv('DJANGO_ALLOWED_HOSTS', 'localhost,127.0.0.1').split(',') if host.strip()]


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'apps.core',
    'apps.environments',
    'apps.terraform_engine',
    'apps.account_management',
    'apps.env_config',
    'apps.platform_app',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'config.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'config.wsgi.application'


# Database
# https://docs.djangoproject.com/en/5.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}


# Password validation
# https://docs.djangoproject.com/en/5.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = os.getenv('DJANGO_TIME_ZONE', 'UTC')

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.2/howto/static-files/

STATIC_URL = 'static/'
STATICFILES_DIRS = [BASE_DIR / 'static']

DT_TERRAFORM_ROOT = BASE_DIR / 'terraform' / 'workspaces'
DT_TERRAFORM_EXECUTABLE = os.getenv('DT_TERRAFORM_EXECUTABLE', 'terraform')
DT_FERNET_KEY = os.getenv('DT_FERNET_KEY', '')
DT_ACCOUNT_CONFIG = DT_RUNTIME_CONFIG['account']
DT_DEFAULT_ENVIRONMENTS = DT_RUNTIME_CONFIG['environments']
DT_ACCOUNT_OAUTH_URL = os.getenv('DT_ACCOUNT_OAUTH_URL', 'https://sso.dynatrace.com/sso/oauth2/token')
DT_ACCOUNT_OAUTH_SCOPE = os.getenv('DT_ACCOUNT_OAUTH_SCOPE', 'account-idm-read')
DT_ACCOUNT_SSL_VERIFY = os.getenv('DT_ACCOUNT_SSL_VERIFY', 'true').lower() == 'true'
DT_ACCOUNT_CA_BUNDLE = os.getenv('DT_ACCOUNT_CA_BUNDLE', '')
DT_ENV_SSL_VERIFY = os.getenv('DT_ENV_SSL_VERIFY', 'true').lower() == 'true'
DT_ENV_CA_BUNDLE = os.getenv('DT_ENV_CA_BUNDLE', '')


def _discover_terraform_provider_version():
    lock_files = sorted(DT_TERRAFORM_ROOT.glob('**/.terraform.lock.hcl'))
    pattern = re.compile(r'provider\s+"registry\.terraform\.io/dynatrace-oss/dynatrace"\s*\{.*?version\s*=\s*"([^"]+)"', re.DOTALL)

    for lock_file in lock_files:
        try:
            content = lock_file.read_text(encoding='utf-8')
        except OSError:
            continue

        match = pattern.search(content)
        if match:
            return match.group(1)

    return os.getenv('DT_TERRAFORM_PROVIDER_VERSION', '>= 1.88.0')


DT_TERRAFORM_PROVIDER_SOURCE = os.getenv('DT_TERRAFORM_PROVIDER_SOURCE', 'dynatrace-oss/dynatrace')
DT_TERRAFORM_PROVIDER_VERSION = _discover_terraform_provider_version()

# Default primary key field type
# https://docs.djangoproject.com/en/5.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
