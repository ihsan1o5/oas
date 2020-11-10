from django.urls import path
from .views import Register, LoginView, LogoutView, AddDoctor
from . import views

urlpatterns = [
    path('', LoginView.as_view(), name="login"),
    path('register/', Register.as_view(), name="register"),
    path('logout/', LogoutView.as_view(), name="logout"),
    path('add-doctor/', AddDoctor.as_view(), name='add-doctor')
]
