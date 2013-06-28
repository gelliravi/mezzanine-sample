from django.db import models
from django.contrib.auth.models import User
from institute.models import Institution

ACCOUNT_TYPE = [
    ('INSTITUTE_OWNER', 'INSTITUTE_OWNER'),
    ('STUDENT', 'STUDENT'),
]

class UserProfile(models.Model):
	user = models.OneToOneField(User)
	account_type = models.CharField(max_length = 50, choices=ACCOUNT_TYPE, blank=True)
	institution = models.ForeignKey(Institution, max_length=100)