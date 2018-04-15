"""liedfestival URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from django.views.generic import TemplateView
from home import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', auth_views.login),
    path('logout/', auth_views.logout),
    path('motto/', views.letmesee, {'tag': 'motto'}),
    path('künstler/', views.letmesee, {'tag': 'kuenstler'}),
    path('konzerte/', views.letmesee, {'tag': 'konzerte'}),
    path('workshop/', views.letmesee, {'tag': 'workshop'}),
    path('förderer/', views.letmesee, {'tag': 'foerderer'}),
    path('sponsoren/', views.letmesee, {'tag': 'foerderer'}),
    path('karten/', views.karten),
    path('workshop-anmeldung/', views.workshop_anmeldung),
    #path('', TemplateView.as_view(template_name="home/base.html"))
    path('favicon.ico', views.favicon),
    path('b6f4082f943f3e9bcfb90d9f3b6b3307.txt', views.mailjet_verification),
    path('', views.index),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
