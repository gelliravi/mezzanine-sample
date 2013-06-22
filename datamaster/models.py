'''
Created on 17-Jun-2013

@author: sreekanth
'''

from django.db import models
from django.contrib.auth.models import User

# INSTITUTION_TYPE = [
#     ('GOVERNMENT', 'GOVERNMENT'),
#     ('PRIVATE', 'PRIVATE'),
# ]

# COURSES = [
#     ('Bachelors_of_Engineering', 'Bachelors_of_Engineering'),
#     ('Masters_of_Technology', 'Masters_of_Technology'),
#     ('PGDBM', 'PGDBM'),
#     ('MBA', 'MBA'),
#     ('MFA', 'MFA'),
#     ('MIB', 'MIB'),
#     ('BBM', 'BBM')
#     ('EMBA', 'EMBA'),
#     ('MCA', 'MCA')
# ]

# COURSE_TYPE = [
#     ('FULL_TIME', 'FULL_TIME'),
#     ('PART_TIME', 'PART_TIME'),
#     ('DISTANCE', 'DISTANCE'),
# ]


class EntranceTest(models.Model):
    test_name = models.CharField(max_length = 50)
    def __str__(self):
        return "%s" % (self.test_name)

class SubCourse(models.Model):
    name = models.CharField(max_length=255)
    course = models.ForeignKey('Course',blank=True, null=True)
    def __str__(self):
        return "%s" % (self.name)

class CourseType(models.Model):
    course_type = models.CharField(max_length=100)
    def __str__(self):
        return "%s" % (self.course_type)


class Course(models.Model):
    name = models.CharField(max_length=100)
    duration = models.CharField(max_length=50,blank=True, null=True)
    course_type = models.ForeignKey('CourseType')
    
    def __str__(self):
        return "%s" % (self.name)
    