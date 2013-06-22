from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from institute.models import Institution


def show_institutions(request):
    inst_names = Institution.objects.all()    
    return render_to_response('institute/institutions.html', {'institutes': inst_names },
                              context_instance=RequestContext(request))
def institution_details(request, InstId):
    institute = Institution.objects.get(id=InstId)
    return render_to_response('institute/institutiondetails.html', {'institutes': institute },
                              context_instance=RequestContext(request))
