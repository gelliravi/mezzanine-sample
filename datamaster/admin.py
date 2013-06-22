'''
Created on 18-Jun-2013

@author: sreekanth
'''
from datamaster.models import SubCourse,CourseType,EntranceTest,Course
from django.contrib import admin

admin.site.register(SubCourse)
admin.site.register(CourseType)
admin.site.register(EntranceTest)
admin.site.register(Course)

