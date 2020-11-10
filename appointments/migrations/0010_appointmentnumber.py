# Generated by Django 3.1.1 on 2020-10-02 05:05

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('appointments', '0009_appointments_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='AppointmentNumber',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=255)),
                ('date', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
    ]