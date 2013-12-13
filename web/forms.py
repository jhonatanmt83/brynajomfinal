from django import forms
from web.models import Postulante, Comentario
from captcha.fields import CaptchaField


class PostulanteForm(forms.ModelForm):
    captcha = CaptchaField()

    class Meta:
        model = Postulante


class ComentarioForm(forms.ModelForm):
    captcha = CaptchaField()

    class Meta:
        model = Comentario

