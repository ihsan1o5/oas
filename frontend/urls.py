

from django.urls import path
from . import views

urlpatterns = [
    path('', views.userFront, name="userFront"),
    path('tack-appointment/', views.appointment, name="tack-appointment"),
]


