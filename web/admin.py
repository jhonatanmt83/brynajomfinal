#-*- coding: utf-8 -*-
from django import forms
from captcha.fields import CaptchaField

from django.contrib import admin

from web.models import Slider
from web.models import Cliente
from web.models import Servicio
from web.models import Noticia
from web.models import Proyecto
from web.models import ImagenProyecto
from web.models import Informacion
from web.models import Empresa
from web.models import TipoEquipo
from web.models import Equipo
from web.models import Postulante
from web.models import Puesto


class ImagenProyectoInline(admin.TabularInline):
    model = ImagenProyecto


class ImagenProyectoInlineAdmin(admin.ModelAdmin):
    inlines = [
        ImagenProyectoInline,
    ]


class PostulanteAdminForm(forms.ModelForm):
    captcha = CaptchaField()

    class Meta:
        model = Postulante


class PostulanteAdmin(admin.ModelAdmin):
    form = PostulanteAdminForm


admin.site.register(Slider)
admin.site.register(Cliente)
admin.site.register(Servicio)
admin.site.register(Noticia)
admin.site.register(Proyecto, ImagenProyectoInlineAdmin)
admin.site.register(Informacion)
admin.site.register(Empresa)
admin.site.register(TipoEquipo)
admin.site.register(Equipo)
admin.site.register(Postulante, PostulanteAdmin)
admin.site.register(Puesto)