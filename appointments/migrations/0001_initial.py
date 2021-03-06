# Generated by Django 3.1.1 on 2020-09-28 08:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('specialization', models.CharField(max_length=255)),
                ('image', models.ImageField(blank=True, null=True, upload_to='img')),
                ('clinical_address', models.TextField()),
                ('working_days', models.CharField(max_length=255)),
                ('time', models.CharField(max_length=255)),
            ],
        ),
    ]
