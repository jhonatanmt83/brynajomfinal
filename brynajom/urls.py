# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url
from django.conf import settings
from django.views.static import serve
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', 'web.views.home', name='home'),
    url(r'^empresa/$', 'web.views.empresa'),
    url(r'^servicios/(?P<idservicio>\d+)/$', 'web.views.servicios'),
    url(r'^clientes/$', 'web.views.clientes'),
    url(r'^equipos/$', 'web.views.equipos'),
    url(r'^oferta/laboral/$', 'web.views.ofertalaboral'),
    url(r'^postular/(?P<id_puesto>\d+)/$', 'web.views.postular'),
    url(r'^postular/satisfactorio/$', 'web.views.postular_satisfactorio'),
    url(r'^noticias/$', 'web.views.noticias'),
    url(r'^noticias/detalle/(?P<id_noticia>\d+)/$', 'web.views.detallenoticia'),
    url(r'^equipos/(?P<codigo>\d+)/$', 'web.views.listaequipos'),
    url(r'^contactenos/$', 'web.views.contactenos'),
    url(r'^lista/proyectos/(?P<idservicio>\d+)/$', 'web.views.listaproyectos'),
    url(r'^proyectos/$', 'web.views.proyectos'),
    url(r'^proyectos/(?P<codigo>\d+)/$', 'web.views.detalleproyecto'),
    url(r'^busqueda/$', 'web.views.busqueda'),
    # url(r'^noticias/detalle/(?P<codigo>\d+)/$', 'web.views.detalle_noticia'),
    # url(r'^obras/$', 'web.views.obras'),
    # url(r'^obras/detalle/(?P<codigo>\d+)/$', 'web.views.detalle_obra'),
    # url(r'^equipo/$', 'web.views.lista_equipo'),
    # url(r'^equipo/(?P<codigo>\d+)/$', 'web.views.lista_equipo_categoria'),
    # url(r'^clientes/$', 'web.views.clientes'),
    # url(r'^servicios/(?P<codigo>\d+)/$', 'web.views.servicios'),
    # url(r'^empresa/$', 'web.views.empresa'),
    # url(r'^videos/$', 'web.views.video'),
    # url(r'^trabaja_con_nosotros/$', 'web.views.trabaja'),
    # url(r'^postular/(?P<id_puesto>\d+)/$', 'web.views.postula'),
    # url(r'^postula_satisfactorio/$', 'web.views.postula_satisfactorio'),
    # url(r'^correo_corporativo/$', 'web.views.correo_corporativo'),
    #Administrar
    # url(r'^administrar/categoria/$', 'web.views.administrar_categoria'),
    # url(r'^administrar/categoria/(?P<id_categoria>\d+)/$', 'web.views.administrar_categoria_imagenes'),
    # url(r'^brynajom/', include('brynajom.foo.urls')),

    url(r'^captcha/', include('captcha.urls')),
    # (r'^feeds/$', NoticiasFeed()),

    (r'^ckeditor/', include('ckeditor.urls')),
    url(r'^admin/', include(admin.site.urls)),

)

urlpatterns += patterns('',
    (r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
)