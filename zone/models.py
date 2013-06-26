from django.db import models
from django import forms
from django.core.mail import send_mail, BadHeaderError

class ContactForm(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    topic = models.CharField(max_length=100)
    message = models.CharField(max_length=100)
