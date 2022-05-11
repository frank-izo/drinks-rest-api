from django.contrib import admin
from .models import Drink

admin.site.register(Drink)

def __str__(self):
    return self.name + ' ' + self.description