# Generated by Django 3.1.1 on 2020-09-17 05:12

from django.conf import settings
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('accounts', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='AccountTypes',
            new_name='AccountType',
        ),
        migrations.RenameField(
            model_name='accounttype',
            old_name='user_id',
            new_name='user',
        ),
    ]
