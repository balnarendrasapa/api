from django.urls import path, include
from .views import *

urlpatterns = [
    path('', Userops.as_view()),
]