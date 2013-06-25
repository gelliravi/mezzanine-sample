# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Facilities'
        db.create_table(u'institute_facilities', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'institute', ['Facilities'])

        # Adding model 'University'
        db.create_table(u'institute_university', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'institute', ['University'])

        # Adding model 'Institution'
        db.create_table(u'institute_institution', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('address', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('city', self.gf('django.db.models.fields.CharField')(max_length=100, null=True, blank=True)),
            ('state', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('website', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('phone_number', self.gf('django.db.models.fields.CharField')(max_length=15)),
            ('email', self.gf('django.db.models.fields.EmailField')(max_length=200)),
            ('year_of_establishment', self.gf('django.db.models.fields.IntegerField')()),
            ('type_of_institution', self.gf('django.db.models.fields.CharField')(max_length=50, blank=True)),
            ('university', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['institute.University'], max_length=100)),
            ('courses', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['institute.InstituteCourse'], max_length=100)),
            ('aicte_approved', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('academic_section_start_date', self.gf('django.db.models.fields.DateField')()),
            ('minimum_eligibility', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('total_seats', self.gf('django.db.models.fields.IntegerField')()),
            ('other_courses', self.gf('django.db.models.fields.CharField')(max_length=50)),
        ))
        db.send_create_signal(u'institute', ['Institution'])

        # Adding M2M table for field facilities on 'Institution'
        m2m_table_name = db.shorten_name(u'institute_institution_facilities')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('institution', models.ForeignKey(orm[u'institute.institution'], null=False)),
            ('facilities', models.ForeignKey(orm[u'institute.facilities'], null=False))
        ))
        db.create_unique(m2m_table_name, ['institution_id', 'facilities_id'])

        # Adding M2M table for field entrance_test on 'Institution'
        m2m_table_name = db.shorten_name(u'institute_institution_entrance_test')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('institution', models.ForeignKey(orm[u'institute.institution'], null=False)),
            ('entrancetest', models.ForeignKey(orm[u'datamaster.entrancetest'], null=False))
        ))
        db.create_unique(m2m_table_name, ['institution_id', 'entrancetest_id'])

        # Adding model 'InstituteCourse'
        db.create_table(u'institute_institutecourse', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['datamaster.Course'])),
            ('duration', self.gf('django.db.models.fields.IntegerField')(max_length=50)),
            ('sub_courses', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['datamaster.SubCourse'])),
            ('course_type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['datamaster.CourseType'], max_length=100)),
            ('annual_fees', self.gf('django.db.models.fields.IntegerField')(max_length=100)),
        ))
        db.send_create_signal(u'institute', ['InstituteCourse'])

        # Adding model 'InstituteCourseSession'
        db.create_table(u'institute_institutecoursesession', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('start_date', self.gf('django.db.models.fields.DateField')()),
            ('end_date', self.gf('django.db.models.fields.DateField')()),
            ('institutecourse', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['institute.InstituteCourse'])),
            ('current', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal(u'institute', ['InstituteCourseSession'])


    def backwards(self, orm):
        # Deleting model 'Facilities'
        db.delete_table(u'institute_facilities')

        # Deleting model 'University'
        db.delete_table(u'institute_university')

        # Deleting model 'Institution'
        db.delete_table(u'institute_institution')

        # Removing M2M table for field facilities on 'Institution'
        db.delete_table(db.shorten_name(u'institute_institution_facilities'))

        # Removing M2M table for field entrance_test on 'Institution'
        db.delete_table(db.shorten_name(u'institute_institution_entrance_test'))

        # Deleting model 'InstituteCourse'
        db.delete_table(u'institute_institutecourse')

        # Deleting model 'InstituteCourseSession'
        db.delete_table(u'institute_institutecoursesession')


    models = {
        u'datamaster.course': {
            'Meta': {'object_name': 'Course'},
            'course_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.CourseType']"}),
            'duration': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'datamaster.coursetype': {
            'Meta': {'object_name': 'CourseType'},
            'course_type': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'datamaster.entrancetest': {
            'Meta': {'object_name': 'EntranceTest'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'test_name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'datamaster.subcourse': {
            'Meta': {'object_name': 'SubCourse'},
            'course': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.Course']", 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        u'institute.facilities': {
            'Meta': {'object_name': 'Facilities'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'institute.institutecourse': {
            'Meta': {'object_name': 'InstituteCourse'},
            'annual_fees': ('django.db.models.fields.IntegerField', [], {'max_length': '100'}),
            'course_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.CourseType']", 'max_length': '100'}),
            'duration': ('django.db.models.fields.IntegerField', [], {'max_length': '50'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.Course']"}),
            'sub_courses': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.SubCourse']"})
        },
        u'institute.institutecoursesession': {
            'Meta': {'object_name': 'InstituteCourseSession'},
            'current': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'end_date': ('django.db.models.fields.DateField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'institutecourse': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.InstituteCourse']"}),
            'start_date': ('django.db.models.fields.DateField', [], {})
        },
        u'institute.institution': {
            'Meta': {'object_name': 'Institution'},
            'academic_section_start_date': ('django.db.models.fields.DateField', [], {}),
            'address': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'aicte_approved': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'city': ('django.db.models.fields.CharField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'courses': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.InstituteCourse']", 'max_length': '100'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '200'}),
            'entrance_test': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['datamaster.EntranceTest']", 'symmetrical': 'False'}),
            'facilities': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['institute.Facilities']", 'max_length': '100', 'symmetrical': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'minimum_eligibility': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'other_courses': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'phone_number': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'state': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'total_seats': ('django.db.models.fields.IntegerField', [], {}),
            'type_of_institution': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'university': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.University']", 'max_length': '100'}),
            'website': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'year_of_establishment': ('django.db.models.fields.IntegerField', [], {})
        },
        u'institute.university': {
            'Meta': {'object_name': 'University'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        }
    }

    complete_apps = ['institute']