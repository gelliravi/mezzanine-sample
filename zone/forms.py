from django import forms
from django.core.mail import send_mail, BadHeaderError
from zone.models import ContactForm

class ContactForm(forms.Form):
    class Meta:
    	model = ContactForm

