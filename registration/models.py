from django.db import models
from django.contrib.auth.models import User
from institute.models import Institution

class NewEntry(models.Model):
    institution = models.ForeignKey(Institution, null=True, blank=True)
    first_name=models.CharField(max_length=45)
    last_name=models.CharField(max_length=45)
    address = models.CharField(max_length=200)
    email_id = models.EmailField(max_length=200)
    mobile = models.CharField(max_length=200)
    created_on = models.DateTimeField(auto_now_add=True)


