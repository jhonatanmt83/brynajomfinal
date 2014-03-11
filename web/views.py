#-*- coding: utf-8 -*-
# Create your views here.
from django.shortcuts import render_to_response
#, get_object_or_404
from django.template import RequestContext
from django.http import HttpResponseRedirect, HttpResponse
from web.models import Slider, Cliente, Servicio, Noticia, Proyecto, Informacion, Empresa, TipoEquipo, Puesto, Postulante, Equipo, ImagenProyecto
from web.models import ProyectosIndex
# from web.models import Noticia, Obra, ImagenObra, Equipos, Categoria, Cliente, DatosEmpresa, Video, Tipo_de_equipo, Puesto, Trabaja, ImagenPorCategoria
# from web.forms import TrabajaForm
from web.forms import PostulanteForm, ComentarioForm
from web.funciones import Obtener_datos_iniciales, get_query
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import json


def home(request):
    datos = Obtener_datos_iniciales()
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    datos['clientes'] = clientes
    servicios = Servicio.objects.all().filter(activo=True).order_by("-orden")
    datos['servicios'] = servicios
    noticias = Noticia.objects.all().order_by("-fecha")[:4]
    datos['noticias'] = noticias
    proyectos = ProyectosIndex.objects.all().order_by("orden")
    datos['proyectos'] = proyectos

    datos_empresa= Empresa.objects.all()
    if datos_empresa:
        datos_empresa = datos_empresa[0]
    else:
        datos_empresa = ""
    # noticias = Noticia.objects.all().order_by('-fecha')[:4]
    # categorias = Categoria.objects.all()
    # categorias_servicios = []
    # for categoria in categorias:
    #     imagenes = []
    #     imagenes_env = ImagenPorCategoria.objects.filter(categoria=categoria)
    #     if len(imagenes_env)>0:
    #         imagenes = imagenes_env[0].imagenes.all()
    #     categorias_servicios.append({'categoria': categoria, 'obras': imagenes})
    # return render_to_response('index.html', {'datos': datos, 'noticias': noticias, 'categorias': categorias_servicios})
    return render_to_response('index.html', {'datos': datos, 'datos_empresa': datos_empresa})


def empresa(request):
    datos = Obtener_datos_iniciales()
    datos_empresa= Empresa.objects.all()
    if datos_empresa:
        datos_empresa = datos_empresa[0]
    else:
        datos_empresa = ""
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    datos['clientes'] = clientes
    return render_to_response('empresa.html', {'datos': datos, 'datos_empresa': datos_empresa})


def servicios(request, idservicio):
    datos = Obtener_datos_iniciales()
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    datos['clientes'] = clientes
    servicios = Servicio.objects.all().filter(activo=True).order_by("-orden")
    datos['servicios'] = servicios
    noticias = Noticia.objects.all().order_by("-fecha")[:4]
    datos['noticias'] = noticias
    sele_servicio = Servicio.objects.get(pk=idservicio)
    return render_to_response('servicios.html', {'datos': datos, 'sele_servicio': sele_servicio})


def clientes(request):
    datos = Obtener_datos_iniciales()
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    numero_de_grupos = len(clientes) // 3
    inicio = 0
    lista_clientes = []
    if numero_de_grupos != 0:
        for x in range(0,numero_de_grupos):
            lista_clientes.append(clientes[inicio:inicio+3])
            inicio += 3
    else:
        lista_clientes.append(clientes)
    datos['clientes'] = lista_clientes
    servicios = Servicio.objects.all().filter(activo=True).order_by("-orden")
    datos['servicios'] = servicios
    return render_to_response('clientes.html', {'datos': datos})


def equipos(request):
    datos = Obtener_datos_iniciales()
    tipo_equipos = TipoEquipo.objects.all()
    numero_de_grupos = len(tipo_equipos) // 3
    if len(tipo_equipos) % 3 != 0:
        numero_de_grupos += 1
    inicio = 0
    lista_tipos = []
    if numero_de_grupos != 0:
        for x in range(0,numero_de_grupos):
            lista_tipos.append(tipo_equipos[inicio:inicio+3])
            inicio += 3
    else:
        lista_tipos.append(tipo_equipos)
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    datos['clientes'] = clientes
    datos['tipo_equipos'] = lista_tipos
    return render_to_response('equipos.html', {'datos': datos})


def ofertalaboral(request):
    datos = Obtener_datos_iniciales()
    puestos = Puesto.objects.all().filter(mostrar=True)
    numero_de_grupos = len(puestos) // 3
    inicio = 0
    lista_puestos = []
    if numero_de_grupos != 0:
        for x in range(0,numero_de_grupos):
            lista_puestos.append(puestos[inicio:inicio+3])
            inicio += 3
    else:
        lista_puestos.append(puestos)
    datos['lista_puestos'] = lista_puestos
    noticias = Noticia.objects.all().order_by("-fecha")[:4]
    datos['noticias'] = noticias
    datos_empresa= Empresa.objects.all()
    if datos_empresa:
        datos_empresa = datos_empresa[0]
    else:
        datos_empresa = ""
    datos['empresa'] = datos_empresa
    servicios = Servicio.objects.all().filter(activo=True).order_by("-orden")
    datos['servicios'] = servicios
    return render_to_response('ofertalaboral.html', {'datos': datos})


def postular_satisfactorio(request):
    datos = Obtener_datos_iniciales()
    return render_to_response('postular_satisfactorio.html', {'datos': datos})


def postular(request, id_puesto):
    datos = Obtener_datos_iniciales()
    puesto = Puesto.objects.get(pk=id_puesto)
    if request.method == 'POST':
        formulario = PostulanteForm(request.POST, request.FILES)
        if formulario.is_valid():
            formulario.save()
            return HttpResponseRedirect('/postular/satisfactorio/')
    else:
        instancia = Postulante(puesto=puesto)
        formulario = PostulanteForm(instance=instancia)
    return render_to_response('postular.html', {'datos': datos, 'formulario': formulario, 'puesto': puesto}, context_instance=RequestContext(request))


def noticias(request):
    datos = Obtener_datos_iniciales()
    noticias = Noticia.objects.all().order_by("-fecha")
    datos['noticias'] = noticias
    return render_to_response('noticias.html', {'datos': datos})


def detallenoticia(request, id_noticia):
    datos = Obtener_datos_iniciales()
    noticia = Noticia.objects.get(pk=id_noticia)
    datos['noticia'] = noticia
    return render_to_response('detallenoticia.html', {'datos': datos})


def listaequipos(request, codigo):
    datos = Obtener_datos_iniciales()
    tipo = TipoEquipo.objects.get(pk=codigo)
    equipos = Equipo.objects.filter(tipo_de_equipo=tipo)
    datos['equipos'] = equipos
    datos['tipo'] = tipo
    return render_to_response('listaequipos.html', {'datos': datos})


def contactenos(request,):
    datos = Obtener_datos_iniciales()
    servicios = Servicio.objects.all().filter(activo=True).order_by("-orden")
    datos['servicios'] = servicios
    formulario = ComentarioForm()
    clientes = Cliente.objects.all().filter(activo=True).order_by("-orden")
    datos['clientes'] = clientes
    return render_to_response('contactenos.html', {'datos': datos, 'formulario': formulario}, context_instance=RequestContext(request))


def listaproyectos(request, idservicio):
    datos = Obtener_datos_iniciales()
    servicio = Servicio.objects.get(pk=idservicio)
    proyectos_list = Proyecto.objects.filter(categoria=servicio)
    paginator = Paginator(proyectos_list, 10)
    page = request.GET.get('page')
    try:
        proyectos = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer, deliver first page.
        proyectos = paginator.page(1)
        page=1
    except EmptyPage:
        # If page is out of range (e.g. 9999), deliver last page of results.
        proyectos = paginator.page(paginator.num_pages)
    datos['proyectos'] = proyectos
    datos['servicio'] = servicio
    return render_to_response('listaproyectos.html', {'datos': datos, })


def proyectos(request):
    datos = Obtener_datos_iniciales()
    proyectos = Proyecto.objects.all().order_by("-pk")
    datos['proyectos'] = proyectos
    return render_to_response('proyectos.html', {'datos': datos})


def detalleproyecto(request, codigo):
    datos = Obtener_datos_iniciales()
    proyecto = Proyecto.objects.get(pk=codigo)
    imagenes = ImagenProyecto.objects.filter(proyecto=proyecto)
    datos['proyecto'] = proyecto
    datos['imagenes'] = imagenes
    return render_to_response('detalleproyecto.html', {'datos': datos})


def error404(request):
    datos = Obtener_datos_iniciales()
    return render_to_response('404.html', {'datos': datos})


def busqueda(request):
    datos = Obtener_datos_iniciales()
    query_string = ''
    found_entries = None
    if ('q' in request.GET) and request.GET['q'].strip():
        query_string = request.GET['q']
        #busqueda en Servicio
        entry_query1 = get_query(query_string, ['nombre', 'descripcion',])
        found_entries1 = Servicio.objects.filter(entry_query1).order_by('-pk')
        #busqueda en Noticia
        entry_query2 = get_query(query_string, ['titulo', 'descripcion',])
        found_entries2 = Noticia.objects.filter(entry_query2).order_by('-fecha')
        #busqueda en Proyecto
        entry_query3 = get_query(query_string, ['entidad', 'proyecto',])
        found_entries3 = Proyecto.objects.filter(entry_query3).order_by('-final')
        #busqueda en Equipo
        entry_query4 = get_query(query_string, ['descripcion', 'modelo_equipo','serie_equipo',])
        found_entries4 = Equipo.objects.filter(entry_query4).order_by('-pk')
        found_entries_all = [{'url':'/servicios/','lista':found_entries1},
            {'url':'/noticias/','lista':found_entries2},
            {'url':'/proyectos/','lista':found_entries3},
            {'url':'/equipos/','lista':found_entries4},
            ]
    return render_to_response('busqueda.html',
                          { 'query_string': query_string, 'found_entries': found_entries_all, 'datos': datos },
                          context_instance=RequestContext(request))


def ordenproyectos(request):
    datos = Obtener_datos_iniciales()
    proyectos = ProyectosIndex.objects.all().order_by("orden")
    datos['proyectos'] = proyectos
    return render_to_response('ordenproyectos.html', {'datos': datos}, context_instance=RequestContext(request))



def ordenproyectos_guardar(request):
    """Guarda el orden de los proyectos"""
    print request.POST
    print request.POST['orden']
    lista = request.POST['orden'][0]
    print lista
    contador = 1
    lista = lista.split("&")
    print lista
    for elemento in lista:
        print elemento
        id_elemento = elemento[5:]
        orden = ProyectosIndex.objects.get(pk=int(id_elemento))
        orden.orden = contador
        contador += 1
    new_result = []
    datos = {}
    datos['mensaje'] = "Guardado"
    new_result.append(datos)
    return HttpResponse(json.dumps(new_result))