from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext


def advanced(request):    
    return render_to_response('advanced/advanced.html', 
        context_instance=RequestContext(request))# Create your views here.
