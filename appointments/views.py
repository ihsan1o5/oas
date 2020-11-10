from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User 
from django.views import View
from accounts.models import AccountType
from .models import Appointments

from django.contrib import messages


# Create your views here.

@login_required(login_url='/accounts/login')
def index(request):
    user = User.objects.filter(username=request.user)
    accountType = AccountType.objects.get(user=request.user)
    if accountType.account_type == 'user':
        appointments = Appointments.objects.filter(user_id=request.user.id)
    elif accountType.account_type == 'doctor':
        appointments = Appointments.objects.filter(doctor=request.user.username, status='pending')
    elif accountType.account_type == 'admin':
        appointments = Appointments.objects.all()
    else:
        appointments = ''
    context = {
        'user': user,
        'accountType': accountType,
        'appointments': appointments
    }
    return render(request, 'appointments/index.html', context)

def allPatients(request):
    user = User.objects.filter(username=request.user)
    accountType = AccountType.objects.get(user=request.user)
    if accountType.account_type == 'user':
        appointments = Appointments.objects.filter(user_id=request.user.id)
    elif accountType.account_type == 'doctor':
        appointments = Appointments.objects.filter(doctor=request.user.username, status='pending')
    elif accountType.account_type == 'admin':
        appointments = Appointments.objects.filter(doctor=request.user.username)
    else:
        appointments = ''
    context = {
        'user': user,
        'accountType': accountType,
        'appointments': appointments
    }
    return render(request, 'appointments/all-patients.html', context)

def changeAppointmentStatusToDone(request, id):
    appointment = Appointments.objects.get(id=id)
    appointment.status = 'done'
    appointment.save()
    return redirect('index')

def changeAppointmentStatusToCancel(request, id):
    appointment = Appointments.objects.get(id=id)
    appointment.status = 'canceled'
    appointment.save()
    return redirect('index')

def tackAppointment(request):
    user = User.objects.filter(username=request.user)
    accountType = AccountType.objects.get(user=request.user)
    from .models import Doctor
    doctors = Doctor.objects.filter()
    context = {
        'user': user,
        'accountType': accountType,
        'doctors': doctors
    }
    if request.method == 'GET':
        return render(request, 'appointments/appointment-form.html', context)

    if request.method == 'POST':
        name = request.POST['name']
        father_name = request.POST['father_name']
        gender = request.POST['gender']
        doctor = request.POST['doctor']
        age = request.POST['age']
        phone = request.POST['phone']
        email = request.POST['email']
        date = request.POST['date']
        description = request.POST['description']

        print(doctor)
        print(gender)

        if doctor == '':
            messages.error(request, 'Please Select a Doctor!')
            return render(request, 'appointments/appointment-form.html', context)
        elif gender == '':
            messages.error(request, 'Please Select Your Gender!')
            return render(request, 'appointments/appointment-form.html', context)
        else:
            Appointments.objects.create(
                name=name,
                father_name=father_name,
                gender=gender,
                doctor=doctor,
                age=age,
                phone=phone,
                email=email,
                date=date,
                description=description,
                status='pending',
                user_id = request.user.id
            )
            from .models import AppointmentNumber
            AppointmentNumber.objects.create(username=request.user.username)
            messages.success(request, 'Your appointment has been comfirmed please wait for your turn!')
            return redirect('index')

        return render(request, 'appointments/appointment-form.html', context)

class Doctor(View):

    def get(self, request):
        from .models import Doctor
        user = User.objects.filter(username=request.user)
        accountType = AccountType.objects.get(user=request.user)
        doctors = Doctor.objects.all()
        context = {
            'doctors': doctors,
            'user': user,
            'accountType': accountType
        }
        return render(request, 'appointments/doctors.html', context)

class EditDoctor(View):

    def get(self, request):
        return render(request, 'appointments/edit-doctor.html')

    def post(self, request):
        name = request.POST['name']
        specialization = request.POST['specialization']
        clinical_address = request.POST['clinical_address']
        image = request.FILES['image']

        if name == '':
            messages.error(request, 'Name Field is Required')
            return render(request, 'appointments/edit-doctor.html')
        elif specialization == '':
            messages.error(request, 'Specialization Field is Required')
            return render(request, 'appointments/edit-doctor.html')
        elif clinical_address == '':
            messages.error(request, 'Clinical Address Field is Required')
            return render(request, 'appointments/edit-doctor.html')
        elif image == '':
            messages.error(request, 'Please Select an Image')
            return render(request, 'appointments/edit-doctor.html')
        else:
            from .models import Doctor
            doctor = Doctor.objects.get(username=request.user)
            doctor.name = name
            doctor.specialization = specialization
            doctor.image = image
            doctor.clinical_address = clinical_address

            doctor.save()

            messages.success(request, 'Your Profile is updated Successfully!')
            return redirect('index')
        return render(request, 'appointments/edit-doctor.html')

class Profile(View):
    def get(self, request):
        from .models import Doctor

        doctor = Doctor.objects.get(username=request.user)
        if doctor.username:
            context = {
                'doctor': doctor
            }
            return render(request, 'appointments/profile.html', context)
        elif doctor.image == '':
            return render(request, 'appointments/profile.html')

class Schedule(View):
    
    def get(self, request):
        user = User.objects.filter(username=request.user)
        accountType = AccountType.objects.get(user=request.user)
        if accountType.account_type == 'admin':
            from .models import Schedule
            schedules = Schedule.objects.all()
        elif accountType.account_type == 'doctor':
            from .models import Schedule
            schedules = Schedule.objects.filter(dr_name=request.user.username)
        context = {
            'user': user,
            'accountType': accountType,
            'schedules': schedules
        }
        return render(request, 'appointments/schedule.html', context)

class AddSchedule(View):
    def get(self, request):
        user = User.objects.filter(username=request.user)
        accountType = AccountType.objects.get(user=request.user)
        from .models import Doctor
        doctors = Doctor.objects.all()
        context = {
            'user': user,
            'accountType': accountType,
            'doctors': doctors
        }
        return render(request, 'appointments/add-schedule.html', context)

    def post(self, request):
        user = User.objects.filter(username=request.user)
        accountType = AccountType.objects.get(user=request.user)
        from .models import Doctor
        doctors = Doctor.objects.all()

        doctor_name = request.POST['doctor_username']
        working_days = request.POST['working_days']
        time = request.POST['time']

        context = {
            'user': user,
            'accountType': accountType,
            'doctors': doctors,
            'form_data': request.POST
        }

        if doctor_name == '':
            messages.error(request, 'Please Select a doctor name')
            return render(request, 'appointments/add-schedule.html', context)
        else:
            from .models import Schedule
            Schedule.objects.create(
                dr_name = doctor_name,
                days = working_days,
                time = time
            )
            messages.success(request, 'Doctor Schedule Created Successfully!')
            return redirect('schedule')
        return render(request, 'appointments/add-schedule.html', context)


class EditSchedule(View):
    def get(self, request, id):
        user = User.objects.filter(username=request.user)
        accountType = AccountType.objects.get(user=request.user)
        from .models import Schedule
        schedule = Schedule.objects.get(id=id)
        from .models import Doctor
        doctors = Doctor.objects.all()
        context = {
            'user': user,
            'accountType': accountType,
            'doctors': doctors,
            'schedule': schedule
        }
        return render(request, 'appointments/edit-schedule.html', context)

        

def postEditSchedule(request):
    user = User.objects.filter(username=request.user)
    accountType = AccountType.objects.get(user=request.user)
    from .models import Doctor
    doctors = Doctor.objects.all()
    context = {
        'user': user,
        'accountType': accountType,
        'schedule': request.POST,
        'doctors': doctors
    }

    doctor_name = request.POST['doctor_username']
    working_days = request.POST['working_days']
    time = request.POST['time']

    from .models import Schedule
    schedule = Schedule.objects.get(dr_name=doctor_name)

    schedule.dr_name = doctor_name
    schedule.days = working_days
    schedule.time = time
    schedule.save()

    messages.success(request, 'Doctor Schedule Updated Successfully!')

    return redirect('schedule')


