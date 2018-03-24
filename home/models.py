from django.db import models
from .choices import *

# Create your models here.
class Artist(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    instrument = models.CharField(max_length=50, default='')
    email = models.EmailField()
    bio = models.TextField()
    picture = models.ImageField(upload_to='img/artists/')
    photo_credit = models.CharField(max_length=100, default='')

    def __str__(self):
        return '{} {}'.format(self.first_name, self.last_name)


class TicketReservation(models.Model):
    anrede = models.IntegerField(choices=ANREDE_CHOICES, default=1)
    titel = models.CharField(max_length=15, default='')
    first_name = models.CharField(max_length=50, default='')
    last_name = models.CharField(max_length=50, default='')
    strasse = models.CharField(max_length=50, default='')
    hausnummer = models.CharField(max_length=4, default='')
    plz = models.CharField(max_length=5, default='')
    ort = models.CharField(max_length=50, default='')
    email = models.EmailField()
    tel = models.CharField(max_length=20, default='')
    tickets_schwanengesang = models.PositiveIntegerField(default=2)
    tickets_schwanengesang_erm = models.PositiveIntegerField(default=0)
    tickets_winterreise = models.PositiveIntegerField(default=2)
    tickets_winterreise_erm = models.PositiveIntegerField(default=2)
    tickets_quartettimkonzert = models.PositiveIntegerField(default=2)
    tickets_quartettimkonzert_erm = models.PositiveIntegerField(default=2)
    request_date = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return '{} - {} {}'.format(
            self.request_date,
            self.first_name,
            self.last_name
        )


class MailTemplate(models.Model):
    name = models.CharField(max_length=50)
    subject = models.CharField(max_length=200, default='')
    text = models.TextField()

    def __str__(self):
        return '{} (\'{}\')'.format(self.name, self.subject)


class Sponsor(models.Model):
    rang = models.IntegerField(default=0)
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Concert(models.Model):
    performance_date = models.DateTimeField()
    location = models.CharField(max_length=50, default='')
    title = models.CharField(max_length=50, default='')
    subtitle = models.CharField(max_length=50, default='')
    text = models.TextField()

    def __str__(self):
        return '{} - {}'.format(self.performance_date, self.title)
