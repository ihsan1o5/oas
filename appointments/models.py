from django.db import models
from django.contrib.auth.models import User
from django.utils.timezone import now

# Create your models here.

class Doctor(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    specialization = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(upload_to='img', blank=True, null=True)
    clinical_address = models.TextField(blank=True, null=True)
    username = models.CharField(max_length=255)

    def __str__(self):
        self.name

class Appointments(models.Model):
    name = models.CharField(max_length=255)
    father_name = models.CharField(max_length=255)
    gender = models.CharField(max_length=255)
    doctor = models.CharField(max_length=255)
    age = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    date = models.DateField(default=now)
    description = models.TextField()
    status = models.CharField(max_length=255)
    user = models.ForeignKey(to=User, on_delete=models.CASCADE)

    def __str__(self):
        return self.name 

class AppointmentNumber(models.Model):
    username = models.CharField(max_length=255)
    date = models.DateField(default=now)

    def __str__(self):
        return self.username

class Schedule(models.Model):
    dr_name = models.CharField(max_length=255)
    days = models.CharField(max_length=255)
    time = models.CharField(max_length=255)

    def __str__(self):
        return self.dr_name

    
