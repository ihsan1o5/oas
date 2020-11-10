from django.shortcuts import render, redirect
from django.views import View 
from django.contrib.auth.models import User 
from django.contrib import auth
from .models import AccountType
from django.contrib import messages
from appointments.models import Doctor

# Create your views here.

def login(request):
    return render(request, 'accounts/login.html')

class AddDoctor(View):
    def get(self, request):
        return render(request, 'appointments/add-new-doctor.html')

    def post(self, request):

        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']

        context = {
            'formData': request.POST 
        }

        if not User.objects.filter(username=username).exists():
            if not User.objects.filter(email=email).exists():
                if len(password) < 6:
                    messages.error(request, 'The Password is too short!')
                    return render(request, 'appointments/add-new-doctor.html', context)

                AccountType.objects.create(user=username, account_type='doctor')

                user = User.objects.create_user(username=username, email=email)
                user.set_password(password)
                user.save()

                Doctor.objects.create(username=username)

                messages.success(request, 'Doctor Account Created Successfully')
                return redirect('doctor')
            else:
                messages.error(request, 'This Email Address is already Taken')
                return render(request, 'appointments/add-new-doctor.html', context)
        else:
            messages.error(request, 'This Username is already Taken')
            return render(request, 'appointments/add-new-doctor.html', context)

class Register(View):
    def get(self, request):
        return render(request, 'accounts/register.html')

    def post(self, request):

        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']

        context = {
            'formData': request.POST 
        }

        if not User.objects.filter(username=username).exists():
            if not User.objects.filter(email=email).exists():
                if len(password) < 6:
                    messages.error(request, 'The Password is too short!')
                    return render(request, 'accounts/register.html', context)

                AccountType.objects.create(user=username, account_type='user')

                user = User.objects.create_user(username=username, email=email)
                user.set_password(password)
                user.save()
                messages.success(request, 'Account Created Successfully!!')
                return redirect('login')
            else:
                messages.error(request, 'This Email Address is already Taken')
                return render(request, 'accounts/register.html', context)
        else:
            messages.error(request, 'This Username is already Taken')
            return render(request, 'accounts/register.html', context)

class LoginView(View):

    def get(self, request):
        return render(request, 'accounts/login.html')

    def post(self, request):
        username = request.POST['username']
        password = request.POST['password']

        if username and password:
            user = auth.authenticate(username=username, password=password)

            if user:
                if user.is_active:
                    auth.login(request, user)

                    messages.success(request, 'Welcome '+user.username+' You are now loged in')
                    return redirect('index')

            messages.error(request, 'Your Account is not Active! Please activate your account')
            return render(request, 'accounts/login.html')
        messages.error(request, 'Username and Password both are required')
        return render(request, 'accounts/login.html')

class LogoutView(View):
    
    def post(self, request):
        auth.logout(request)
        messages.success(request, 'You have been loged out!')
        return redirect('login')


