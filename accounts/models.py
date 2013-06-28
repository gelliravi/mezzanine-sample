# from django.db import models
# from django.contrib.auth.models import User
# from institute.models import *
# from datamaster.models import *

# # ACCOUNT_TYPE[
# #     ('STUDENT', 'STUDENT'),
# #     ('INSTITUTE_OWNER', 'INSTITUTE_OWNER'),
# # ]

# class UserProfile(models.Model):
#     account_type = models.OneToOneField('User',choices=ACCOUNT_TYPE, blank=True)
    
#     email_id = models.CharField(max_length=200)
#     institution  = models.ForeignKey(Institution)
