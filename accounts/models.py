from django.db import models
from django.contrib.auth.models import User 

# Create your models here.

class AccountType(models.Model):
    user = models.CharField(max_length=255)
    account_type = models.CharField(max_length=255)

    def __str__(self):
        return self.user_id
