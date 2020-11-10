

from django.urls import path
from . import views
from .views import Doctor, EditDoctor, Profile, Schedule, AddSchedule, EditSchedule

urlpatterns = [
    path('', views.index, name="index"),
    path('tack_appointment/', views.tackAppointment, name="tack_appointment"),
    path('doctor/', Doctor.as_view(), name="doctor"),
    path('edit-doctor/', EditDoctor.as_view(), name="edit-doctor"),
    path('profile/', Profile.as_view(), name="profile"),
    path('change-appointment-status-done/<int:id>', views.changeAppointmentStatusToDone, name='change-appointment-status-done'),
    path('change-appointment-status-cancel/<int:id>', views.changeAppointmentStatusToCancel, name='change-appointment-status-cancel'),
    path('schedule/', Schedule.as_view(), name='schedule'),
    path('all-patients/', views.allPatients, name='all-patients'),
    path('add-schedule/', AddSchedule.as_view(), name='add-schedule'),
    path('edit-schedule/<int:id>', EditSchedule.as_view(), name="edit-schedule"),
    path('post-edit-schedule/', views.postEditSchedule, name="post-edit-schedule")
]


