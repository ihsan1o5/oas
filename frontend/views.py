from django.shortcuts import render
from appointments.models import Doctor
# Create your views here.

def userFront(request):
    doctors = Doctor.objects.all().order_by('-id')[:4]
    context = {
        'doctors': doctors
    }
    return render(request, 'frontend/index.html', context)

def appointment(request):
    return render(request, 'frontend/appointment.html')
