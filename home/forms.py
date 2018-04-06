from django import forms
from .models import TicketReservation, WorkshopReservation
from .choices import *

class TicketReservationForm(forms.ModelForm):

    class Meta:
        model = TicketReservation

        titel = forms.CharField(required=False)

        fields = ('anrede',
            'titel',
            'first_name',
            'last_name',
            'strasse',
            'hausnummer',
            'plz',
            'ort',
            'email',
            'tel',
            'tickets_schwanengesang',
            'tickets_schwanengesang_erm',
            'tickets_winterreise',
            'tickets_winterreise_erm',
            'tickets_quartettimkonzert',
            'tickets_quartettimkonzert_erm',
            'nachricht')
        labels = {
            'anrede': 'Anrede',
            'titel': 'Titel (falls vorhanden)',
            'first_name': 'Vorname',
            'last_name': 'Nachname',
            'strasse': 'Straße',
            'hausnummer': 'Hausnummer',
            'plz': 'PLZ',
            'ort': 'Ort',
            'email': 'E-Mail',
            'tel': 'Telefon',
        }

class WorkshopReservationForm(forms.ModelForm):

    class Meta:
        model = WorkshopReservation

        fields = ('anrede',
            'titel',
            'first_name',
            'last_name',
            'strasse',
            'hausnummer',
            'plz',
            'ort',
            'email',
            'tel',
            'alter',
            'stimmfach')

        labels = {
            'anrede': 'Anrede',
            'titel': 'Titel (falls vorhanden)',
            'first_name': 'Vorname',
            'last_name': 'Nachname',
            'strasse': 'Straße',
            'hausnummer': 'Hausnummer',
            'plz': 'PLZ',
            'ort': 'Ort',
            'email': 'E-Mail',
            'tel': 'Telefon',
            'alter': 'Alter',
            'stimmfach': 'Stimmfach'
        }
