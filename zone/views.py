from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect
from django import forms
from zone.forms import ContactForm
from zone.models import ContactForm
from django.template import RequestContext, Context
from django.core.mail import send_mail, BadHeaderError
from django.core.mail import EmailMultiAlternatives
from django.views.decorators.csrf import csrf_exempt

def zone(request):    
    return render_to_response('zone/zone.html', 
    	{ },
        context_instance=RequestContext(request))

def main(request):    
    return render_to_response('zone/main.html', 
    	{ },
        context_instance=RequestContext(request))
@csrf_exempt
def contactview(request):
		subject = request.POST.get('topic', '')
		message = request.POST.get('message', '')
		from_email = request.POST.get('email', '')
		#if 1 ==1:
		if subject and message and from_email:
			print "coming here 1"
		        try:
					 print "coming here 2"		        	
		 			 send_mail(subject, message, from_email, ['srikanth@prtouch.com'])
		 			 print "coming here 3"
        		except BadHeaderError:
        			print "coming here 4"
            		return HttpResponse('Invalid header found.')
        		print "coming here 5"
        		return HttpResponseRedirect('/zone/thankyou/')
		else:
			#return render_to_response('contacts.html', {'form': ContactForm()},)
			return render_to_response('contacts.html', {'form': ContactForm()},
			RequestContext(request))
		return render_to_response('contacts.html', {'form': ContactForm()},
			RequestContext(request))

def thankyou(request):
		return render_to_response('thankyou.html')