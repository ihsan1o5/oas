# Generated by Django 3.1.1 on 2020-09-30 06:56

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('appointments', '0006_auto_20200930_1040'),
    ]

    operations = [
        migrations.CreateModel(
            name='Appointments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('father_name', models.CharField(max_length=255)),
                ('gender', models.CharField(max_length=255)),
                ('doctor', models.CharField(max_length=255)),
                ('age', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('date', models.DateField(default=django.utils.timezone.now)),
                ('description', models.TextField()),
            ],
        ),
    ]