# Generated by Django 3.1.1 on 2020-09-17 05:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_auto_20200917_1012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='accounttype',
            name='user',
            field=models.CharField(max_length=255),
        ),
    ]
