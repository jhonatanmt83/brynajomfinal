#-*- coding: utf-8 -*-
from django.db import models
from ckeditor.fields import RichTextField
from thumbs import ImageWithThumbsField
import os
from datetime import date


# funciones para rutas de de las imagenes
def get_image_path(instance, filename):
    return os.path.join('slider', str(instance.id), filename)


def get_image_cliente_path(instance, filename):
    return os.path.join('cliente', str(instance.id), filename)


def get_image_servicio_path(instance, filename):
    return os.path.join('servicio', str(instance.id), filename)


def get_image_noticia_path(instance, filename):
    return os.path.join('noticia', str(instance.id), filename)


def get_image_proyecto_path(instance, filename):
    return os.path.join('proyecto', str(instance.obra.pk), filename)


def get_image_equipo_path(instance, filename):
    return os.path.join('categoriaequipo', str(instance.id), filename)


def get_image_lista_equipo_path(instance, filename):
    return os.path.join('listaequipo', str(instance.id), filename)


def get_image_video_path(instance, filename):
    return os.path.join('video', str(instance.id), filename)


# Modelos
class Slider(models.Model):
    class Meta:
        verbose_name = ('Slider')
        verbose_name_plural = ('Sliders')

    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')
    descripcion = models.TextField(verbose_name=u'Descripción', blank=True, null=True)
    imagen = models.ImageField(upload_to=get_image_path, help_text="De preferencia mayor a 1350x250 (px)")
    orden = models.IntegerField(verbose_name=u'Número de orden', help_text="El orden sera de forma descendente, si desea ver una imagen en el principio ponga un número mayor.", blank=True, null=True)
    activo = models.BooleanField(verbose_name=u'Activo')

    def __unicode__(self):
        return self.nombre


class Slider(models.Model):
    class Meta:
        verbose_name = ('Slider')
        verbose_name_plural = ('Sliders')

    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')
    descripcion = models.TextField(verbose_name=u'Descripción', blank=True, null=True)
    imagen = models.ImageField(upload_to=get_image_path, help_text="De preferencia mayor a 1350x250 (px)")
    orden = models.IntegerField(verbose_name=u'Número de orden', help_text="El orden sera de forma descendente, si desea ver una imagen en el principio ponga un número mayor.", blank=True, null=True)
    activo = models.BooleanField(verbose_name=u'Activo')

    def __unicode__(self):
        return self.nombre


class Cliente(models.Model):
    class Meta:
        verbose_name = ('Cliente')
        verbose_name_plural = ('Clientes')

    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')
    url = models.URLField(max_length=250, verbose_name=u'Url del cliente', blank=True, null=True)
    imagen = models.ImageField(upload_to=get_image_path, help_text="De preferencia mayor a 280x220 (px)")
    orden = models.IntegerField(verbose_name=u'Número de orden', help_text="El orden sera de forma descendente, si desea ver una imagen en el principio ponga un número mayor.", blank=True, null=True)
    activo = models.BooleanField(verbose_name=u'Activo')

    def __unicode__(self):
        return self.nombre


class Servicio(models.Model):
    class Meta:
        verbose_name = ('Tipo de servicio')
        verbose_name_plural = ('Tipo de servicios')

    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')
    descripcion = RichTextField(verbose_name=u'Descripción', blank=True, null=True)
    imagen = ImageWithThumbsField(upload_to=get_image_servicio_path, sizes=((160, 120), (320, 240)))
    orden = models.IntegerField(verbose_name=u'Número de orden', help_text="El orden sera de forma descendente, si desea ver una imagen en el principio ponga un número mayor.", blank=True, null=True)
    activo = models.BooleanField(verbose_name=u'Activo')

    def __unicode__(self):
        return self.nombre


class Noticia(models.Model):
    class Meta:
        verbose_name = ('Noticia')
        verbose_name_plural = ('Noticias')

    titulo = models.CharField(max_length=250, verbose_name=u'Título')
    descripcion = models.TextField(verbose_name=u'Descripción')
    fecha = models.DateTimeField(auto_now_add=True)
    imagen = ImageWithThumbsField(upload_to=get_image_noticia_path, sizes=((130, 100), (500, 400)), blank=True, null=True)
    video = models.TextField(verbose_name=u'Url de video', blank=True, null=True)

    def __unicode__(self):
        return self.titulo


class Proyecto(models.Model):
    class Meta:
        verbose_name = ('Proyecto')
        verbose_name_plural = ('Proyectos')

    entidad = models.CharField(max_length=250, verbose_name=u'Entidad')
    lugar = models.CharField(max_length=250, verbose_name=u'Lugar')
    proyecto = models.TextField(verbose_name=u'Proyecto')
    final = models.DateField(verbose_name=u'Final', blank=True, null=True)
    ejecutandose = models.BooleanField(verbose_name=u'A la fecha')
    monto = models.DecimalField(verbose_name=u'Monto', max_digits=10, decimal_places=2, null=True, blank=True)
    categoria = models.ForeignKey(Servicio)

    def __unicode__(self):
        return self.proyecto

    def monto_punto(self):
        cad = str(self.monto)
        cade = cad.replace(',', '.')
        entero = ''
        try:
            cade2 = cade[0:cade.index('.')]
            agregar = cade[cade.index('.'):]
        except:
            cade2 = cad
            agregar = ''
        division = len(cade2)//3
        posi_final = len(cade2)
        for x in range(0, division):
            if posi_final - 3 > 0:
                entero = "," + cade2[posi_final-3:posi_final] + entero
            else:
                entero = cade2[posi_final-3:posi_final] + entero
            posi_final = posi_final-3
        if posi_final > 0:
            entero = cade[0:posi_final] + entero
        cade_devolver = entero + agregar
        return cade_devolver

    def comprueba_imagen(self):
        if len(ImagenProyecto.objects.filter(proyecto=self)) > 0:
            return True
        else:
            return False

    def imagen_principal(self):
        lista_imagenes = ImagenProyecto.objects.filter(proyecto=self, principal=True)
        if lista_imagenes:
            return lista_imagenes[0]
        else:
            segunda_lista = ImagenProyecto.objects.filter(proyecto=self)
            if segunda_lista:
                return segunda_lista[0]
            else:
                return ""


class ImagenProyecto(models.Model):
    class Meta:
        verbose_name = ('ImagenProyecto')
        verbose_name_plural = ('ImagenesProyecto')

    proyecto = models.ForeignKey(Proyecto)
    imagen = ImageWithThumbsField(upload_to=get_image_proyecto_path, sizes=((160, 120), (615, 448),(510,150)))
    descripcion = models.TextField(verbose_name=u'Descripción', blank=True, null=True)
    principal = models.BooleanField(verbose_name=u'Principal', help_text="Marque si esta imagen sera la portada del proyecto")

    def __unicode__(self):
        return unicode(str(self.proyecto), "utf-8")


class Informacion(models.Model):
    class Meta:
        verbose_name = ('Brynajom')
        verbose_name_plural = ('Brynajom')

    nombre = models.CharField(max_length=250, verbose_name=u'Nombre')
    email = models.CharField(max_length=250, verbose_name=u'Email')
    direccion = RichTextField(verbose_name=u'Dirección')
    telefono = RichTextField(max_length=150, verbose_name=u'Teléfonos')
    facebook = models.CharField(max_length=200, verbose_name=u'Facebook')
    twitter = models.CharField(max_length=200, verbose_name=u'Twitter', blank=True, null=True)
    youtube = models.CharField(max_length=200, verbose_name=u'Youtube')
    googleplus = models.CharField(max_length=200, verbose_name=u'GooglePlus')
    video1 = models.TextField(verbose_name=u'Url de video 1')
    titulovideo1 = models.CharField(max_length=200, verbose_name=u'Titulo video 1')
    imagenvideo1 = ImageWithThumbsField(upload_to=get_image_video_path, sizes=((360, 360), (500, 500)))
    video2 = models.TextField(verbose_name=u'Url de video 2', null=True, blank=True)
    titulovideo2 = models.CharField(max_length=200, verbose_name=u'Titulo video 2', null=True, blank=True)
    imagenvideo2 = ImageWithThumbsField(upload_to=get_image_video_path, sizes=((360, 360), (500, 500)), null=True, blank=True)

    def __unicode__(self):
        return self.nombre


class Empresa(models.Model):
    class Meta:
        verbose_name = ('Empresa')
        verbose_name_plural = ('Datos de la Empresa')

    nombre = models.CharField(max_length=250, verbose_name=u'Nombre')
    mision = RichTextField(verbose_name=u'Misión')
    vision = RichTextField(verbose_name=u'Visión')
    objetivos = RichTextField(verbose_name=u'Objetivos')
    valores = RichTextField(verbose_name=u'Valores')
    mapa = models.TextField(verbose_name=u'Url de mapa')
    quienes_somos = RichTextField(verbose_name=u'¿Quiénes somos?')
    gestion_empresarial = RichTextField(verbose_name=u'Gestión Empresarial')
    organigrama = RichTextField(verbose_name=u'Organigrama')
    plan_estrategico = RichTextField(verbose_name=u'Planeamiento Estratégico')
    politicas_seguridad = RichTextField(verbose_name=u'Políticas de seguridad')
    politicas_ambientales = RichTextField(verbose_name=u'Políticas ambientales')
    certificados = RichTextField(verbose_name=u'Certificados')

    def __unicode__(self):
        return str(self.nombre)


class TipoEquipo(models.Model):
    class Meta:
        verbose_name = ('Categoria Equipo')
        verbose_name_plural = ('Categoria de equipos')

    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')
    imagen = models.ImageField(upload_to=get_image_equipo_path, help_text="De preferencia mayor a 700x500 (px)")
    descripcion = models.TextField(verbose_name=u'Descripción', blank=True, null=True)

    def __unicode__(self):
        return self.nombre


class Equipo(models.Model):
    class Meta:
        verbose_name = ('Equipo')
        verbose_name_plural = ('Equipos')

    descripcion = models.TextField(verbose_name=u'Descripción')
    modelo_equipo = models.CharField(max_length=50, verbose_name=u'Moderlo_Equipos', blank=True, null=True)
    marca_equipo = models.CharField(max_length=50, verbose_name=u'Marca_equipo')
    serie_equipo = models.CharField(max_length=50, verbose_name=u'Serie_equipo')
    potencia = models.CharField(max_length=50, verbose_name=u'Potencia', blank=True, null=True)
    anio = models.CharField(max_length=4, verbose_name=u'Año')
    propiedad = models.CharField(max_length=50, verbose_name=u'Propiedad')
    capacidad = models.CharField(max_length=50, verbose_name=u'Capacidad', blank=True, null=True)
    imagen = ImageWithThumbsField(upload_to=get_image_lista_equipo_path, sizes=((130, 130), (840, 565)), null=True, blank=True)
    tipo_de_equipo = models.ForeignKey(TipoEquipo)

    def __unicode__(self):
        return self.modelo_equipo + " " + self.descripcion


class Puesto(models.Model):
    class Meta:
        verbose_name = ('Puesto')
        verbose_name_plural = ('Puestos')

    titulo = models.CharField(max_length=250, verbose_name=u'Título')
    descripcion = RichTextField(verbose_name=u'Descripción')
    imagen = RichTextField(verbose_name=u'Imagen', blank=True, null=True)
    fecha_inicio = models.DateField(verbose_name=u'Desde', blank=True, null=True)
    fecha_final = models.DateField(verbose_name=u'Hasta', blank=True, null=True)
    mostrar = models.BooleanField(verbose_name=u'Mostrar')

    def __unicode__(self):
        return self.titulo

    def vencido(self):
        if date.today() > self.fecha_final:
            return True
        else:
            return False


class Postulante(models.Model):
    class Meta:
        verbose_name = ('Postulante')
        verbose_name_plural = ('Postulantes')

    nombres = models.CharField(max_length=250, verbose_name=u'Nombres')
    apellidos = models.CharField(max_length=250, verbose_name=u'Apellidos')
    curriculum = models.FileField(upload_to='curriculum', help_text="Los archivos deben ser menores que 5 MB. Tipos de archivo permitidos: doc docx odt pdf.")
    puesto = models.ForeignKey(Puesto, verbose_name=u'Puesto')

    def __unicode__(self):
        return str(self.nombres) + " " + str(self.apellidos)


class Comentario(models.Model):
    class Meta:
        verbose_name = ('Postulante')
        verbose_name_plural = ('Postulantes')

    nombres = models.CharField(max_length=250, verbose_name=u'Nombres')
    apellidos = models.CharField(max_length=250, verbose_name=u'Apellidos')
    email = models.EmailField(max_length=75, verbose_name=u'Email')
    comentario = models.TextField(verbose_name=u'Comentario')
    fecha = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return str(self.nombres) + " " + str(self.apellidos)
