from django import forms
from .models import TicketReservation
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
            'tickets_quartettimkonzert_erm',)
        labels = {
            'anrede': 'Anrede',
            'titel': 'Titel',
            'first_name': 'Vorname',
            'last_name': 'Nachname',
            'strasse': 'Straße',
            'hausnummer': 'Hausnummer',
            'plz': 'PLZ',
            'ort': 'Ort',
            'email': 'E-Mail',
            'tel': 'Telefon',
            'tickets_schwanengesang': 'Karten für »Schwanengesang«',
            'tickets_schwanengesang_erm': 'Karten für »Schwanengesang« (erm.)',
            'tickets_winterreise': 'Karten für »Winterreise«',
            'tickets_winterreise_erm': 'Karten für »Winterreise« (erm.)',
            'tickets_quartettimkonzert': 'Karten für »Quartett im Konzert«',
            'tickets_quartettimkonzert_erm': 'Karten für »Quartett im Konzert« (erm.)',
        }
