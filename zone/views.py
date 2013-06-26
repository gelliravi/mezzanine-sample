from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext


def zone(request):    
    return render_to_response('zone/zone.html', 
    	{ },
        context_instance=RequestContext(request))

def main(request):    
    return render_to_response('zone/main.html', 
    	{ },
        context_instance=RequestContext(request))