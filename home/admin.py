from django.contrib import admin
from home.models import Artist, TicketReservation, MailTemplate, Sponsor, Concert

# Register your models here.
admin.site.register(Artist)
admin.site.register(TicketReservation)
admin.site.register(MailTemplate)
admin.site.register(Sponsor)
admin.site.register(Concert)
