# Generated by Django 3.1.1 on 2020-09-29 05:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('appointments', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='doctor',
            name='time',
        ),
        migrations.RemoveField(
            model_name='doctor',
            name='working_days',
        ),
    ]
