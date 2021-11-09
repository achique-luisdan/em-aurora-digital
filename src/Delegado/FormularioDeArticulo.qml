import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import QUnidadDidactica 0.1
import QArticulo 0.1
import QSeccion 0.1
import "qrc:/Vista/" as Vista
Item {
    id: opcionArticulo
    width: 1200
    height: 700
    anchors.fill: parent
    property string accion: "Agregar un nuevo artículo..."
    property string colorPredeterminado: "#3b0c42"  //"#3f0b4f"//"#46005b"
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    Rectangle {
        id: recuadroDeEtiquetaArticulo
        width: opcionArticulo.width
        height: 40
        gradient: Gradient {
            GradientStop { position: 0.05; color: "#ffffff" }
            GradientStop { position: 0.60; color: "#eeebeb"; }
            GradientStop { position: 0.98; color: "#dddddd"; }
        }
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 0
            verticalOffset: 1
            radius: 7.0
            samples: 24
            source: recuadroDeEtiquetaArticulo
            color: "gray"
        }
        Label {
            id: etiquetaArticulo
            y: 10
            x: 22
            text: "Artículo"
            font.pixelSize: recuadroDeEtiquetaArticulo.width/100*1.6
            color: "gray"
        }

        Label {
            id: etiquetaOpcionArticulo
            y: 13
            x: etiquetaArticulo.x + etiquetaArticulo.width +5
            text: "- Archivo"
            font.pixelSize: recuadroDeEtiquetaArticulo.width/100*1.3
            color: "gray"
        }
        Button {
            id: botonMenuArticulo
            x: recuadroDeEtiquetaArticulo.width -50
            y: recuadroDeEtiquetaArticulo.y +3
            width: 37
            height: etiquetaArticulo.height +10
            hoverEnabled: true
            background: Rectangle {
                color: "#00000000"
            }
            Image {
                id: imagenBotonMenuArticulo
                anchors.fill: parent
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                source: botonMenuArticulo.hovered ? rutaPorDefecto+"boton-de-menu-lightGray.png" : rutaPorDefecto+"boton-de-menu-gray.png"
            }
        }
    }

    TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        width:  opcionArticulo.width
        height: 35
        y: 40
        background: Rectangle {
            color: "#7F1E57"
        }
        TabButton {
            id: botonArticulo
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonArticulo.checked ? "white" : "transparent"
            }
            Label {
                anchors.centerIn: parent
                text: "Archivo"
                color: "white"
                font.family: "Arial"
                font.pointSize: 12
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                anchors.leftMargin: 99
                color: "pink"
            }
            onCheckedChanged: {
                etiquetaOpcionArticulo.text = "- Archivo"
            }
        }
        TabButton {
            id: botonEditar
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonEditar.checked ? "white" : "transparent"
            }
            Label {
                anchors.centerIn: parent
                text: "Editar"
                color: "white"
                font.family: "Arial"
                font.pointSize: 12
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                anchors.leftMargin: 99
                color: "pink"
            }
            onCheckedChanged: {
                etiquetaOpcionArticulo.text = "- Editar"
            }
        }
        TabButton {
            id: botonInsertar
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonInsertar.checked ? "white" : "transparent"
            }
            Label {
                anchors.centerIn: parent
                text: "Insertar"
                color: "white"
                font.family: "Arial"
                font.pointSize: 12
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                anchors.leftMargin: 99
                color: "pink"
            }
            onCheckedChanged: {
                etiquetaOpcionArticulo.text = "- Insertar"
            }
        }
        TabButton {
            id: botonVer
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonVer.checked ? "white" : "transparent"
            }
            Label {
                anchors.centerIn: parent
                text: "Ver"
                color: "white"
                font.family: "Arial"
                font.pointSize: 12
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                anchors.leftMargin: 99
                color: "pink"
            }

            onCheckedChanged: {
                etiquetaOpcionArticulo.text = "- Ver"
            }
        }
        TabButton {
            id: botonRevision
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonRevision.checked ? "white" : "transparent"
            }
            Label {
                anchors.centerIn: parent
                text: "Revisión"
                color: "white"
                font.family: "Arial"
                font.pointSize: 12
            }

            onCheckedChanged: {
                etiquetaOpcionArticulo.text = "- Revisión"
            }
        }
    }
    SwipeView {
        id: swipeView
        y:75
        width: opcionArticulo.width
        height: 90
        currentIndex: tabBar.currentIndex
        background: Rectangle {
            id: fondoDeSwipeView
            width:  swipeView.width
            height: swipeView.height
            gradient: Gradient {
                GradientStop { position: 0.05; color: "#f5f4f4"; }
                GradientStop { position: 0.60; color: "#eeebeb"; }
                GradientStop { position: 0.98; color: "#dddddd"; }
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 88
                color: "#d9d9d9"
            }
            layer.enabled: true
            layer.effect: DropShadow {
                horizontalOffset: 1
                verticalOffset: 2
                radius: 10.0
                samples: 24
                source: fondoDeSwipeView
                color: "gray"
            }
        }
        Vista.OpcionesDeArticuloForm {
             botonNuevo.onClicked: {
                 listaDeSeccionesModelo.clear()
             }
             botonGuardar.onClicked: {
                 guardarCambios()
             }
             botonGuardarComo.onClicked:{
                 var contador = new Number;
                 contador = 0
                 actualizar()
                 panelDeGuardarComoArticulo.panel.articulo.codigo = articulo.codigo
                 panelDeGuardarComoArticulo.panel.articulo.titulo = articulo.titulo
                 panelDeGuardarComoArticulo.panel.articulo.desambiguacion = articulo.desambiguacion
                 panelDeGuardarComoArticulo.panel.articulo.rutaDeIcono = articulo.rutaDeIcono
                 panelDeGuardarComoArticulo.panel.articulo.descripcion = articulo.descripcion
                 panelDeGuardarComoArticulo.panel.articulo.visitas = articulo.visitas
                 panelDeGuardarComoArticulo.panel.articulo.estadoDeAcceso = articulo.estadoDeAcceso
                 panelDeGuardarComoArticulo.panel.articulo.fechaReg = articulo.fechaReg
                 panelDeGuardarComoArticulo.panel.articulo.fechaModif = articulo.fechaModif
                 panelDeGuardarComoArticulo.panel.listaDeSeccionesModelo.clear()
                 while(contador < listaDeSeccionesModelo.count){
                     panelDeGuardarComoArticulo.panel.listaDeSeccionesModelo.append({indice: contador, codigo: listaDeSeccionesModelo.get(contador).codigo, titulo: listaDeSeccionesModelo.get(contador).titulo , tipo: listaDeSeccionesModelo.get(contador).tipo, nivel: ""+listaDeSeccionesModelo.get(contador).nivel, texto: listaDeSeccionesModelo.get(contador).texto, estadoDeAcceso: listaDeSeccionesModelo.get(contador).estadoDeAcceso})
                     contador = contador +1
                 }
                 panelDeGuardarComoArticulo.panel.actualizar()
                 panelDeGuardarComoArticulo.visible = true
             }
             botonInformacionDelArticulo.onClicked: {
                 formularioDeInformacionDeArticulos.formulario.desplegar()
                 formularioDeInformacionDeArticulos.formulario.campoCodigo.text = articulo.codigo
                 formularioDeInformacionDeArticulos.formulario.campoTitulo.text = articulo.titulo
                 formularioDeInformacionDeArticulos.formulario.campoDesambiguacion.text = articulo.desambiguacion
                 formularioDeInformacionDeArticulos.formulario.icono.source = articulo.rutaDeIcono
                 formularioDeInformacionDeArticulos.formulario.campoDescripcion.text = articulo.descripcion
                 formularioDeInformacionDeArticulos.formulario.campoVisitas.text = ""+articulo.visitas
                 while (formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeEstadoDeAcceso.currentIndex != 0){ formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeEstadoDeAcceso.decrementCurrentIndex()}
                 while (formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeEstadoDeAcceso.currentText != articulo.estadoDeAcceso){ formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeEstadoDeAcceso.incrementCurrentIndex()}
                 formularioDeInformacionDeArticulos.formulario.campoFechaDeRegistro.text = articulo.fechaReg
                 formularioDeInformacionDeArticulos.formulario.campoFechaDeModificacion.text = articulo.fechaModif
                 formularioDeInformacionDeArticulos.unidadDidacticaSeleccionada = panelDeGuardarComoArticulo.panel.unidadDidacticaSeleccionada
                 formularioDeInformacionDeArticulos.visible = true
             }
        }
        Vista.OpcionesDeEditarForm {

        }

        Vista.OpcionesDeInsertarForm {
            botonSeccion.onClicked: {
                listaDeSeccionesModelo.append({indice: listaDeSeccionesModelo.count , codigo: "SINCOD000", titulo: "Sin título" , tipo: "Desarrollo", nivel: 2, texto: "Nueva sección...", estadoDeAcceso: "En espera"})
            }
        }
        Vista.OpcionesDeVerForm {
        }
        Vista.OpcionesDeRevisionForm {
        }
    }
    ListModel {
        id: listaDeSeccionesModelo
    }
    Item {
        anchors.fill: parent
        anchors.topMargin: 90
        ScrollView {
            id: cuadroDeConsultaDeArticulo
            anchors.fill: parent
            anchors.centerIn: parent
            anchors.topMargin: 50
            anchors.bottomMargin:  2
            anchors.leftMargin: 2
            anchors.rightMargin: 2
            ListView {
                id: listaDeSecciones
                anchors.fill: parent
                anchors.topMargin: 50
                anchors.bottomMargin:  50
                anchors.leftMargin: 30
                anchors.rightMargin: 30
                spacing: 20
                model: listaDeSeccionesModelo
                delegate: Component {
                    Row {
                        Rectangle {
                            id: rectangulo
                            width: listaDeSecciones.width
                            height: campoTexto.height +40
                            color:  "lightgray"
                            radius: 10
                            Text {
                                id: campoIndice
                                text: indice
                                visible: false
                            }
                            Text {
                                id: campoCodigo
                                text: codigo
                                visible: false
                            }
                            TextInput {
                                id: campoTitulo
                                text: titulo
                                anchors.fill: parent
                                anchors.topMargin: 9
                                anchors.leftMargin: 9
                                anchors.rightMargin: 9
                                font.family: "Arial"
                                font.pointSize: 12
                                font.bold: true
                                color: "#848282"
                                onEditingFinished: {
                                    listaDeSeccionesModelo.set(campoIndice.text, {"codigo": campoCodigo.text, "titulo": campoTitulo.text,"tipo": campoTipo.text, "nivel": campoNivel.text,"texto": campoTexto.text, "estadoDeAcceso": campoEstadoDeAcceso.text})
                                }
                            }
                            Text {
                                id: campoTipo
                                text: tipo
                                visible: false
                            }
                            Text {
                                id: campoNivel
                                text: nivel
                                visible: false
                            }
                            TextInput {
                                id: campoTexto
                                text: texto
                                width: rectangulo.width -18
                                x: 9
                                y: 35
                                font.family: "Arial"
                                font.pointSize: 12
                                color: "gray"
                                wrapMode:Text.WordWrap
                                horizontalAlignment: Text.AlignJustify
                                MouseArea {
                                    id: areaDelMouse
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered: {
                                        rectangulo.color = "#dddada"
                                        campoTexto.color = "white"
                                    }
                                    onExited: {
                                        rectangulo.color = "lightgray"
                                        campoTexto.color = "gray"
                                    }
                                    onClicked: {
                                        areaDelMouse.enabled = false
                                    }
                                }
                                onEditingFinished: {
                                    rectangulo.color = "#dddada"
                                    campoTexto.color = "gray"
                                    areaDelMouse.enabled = true
                                    listaDeSeccionesModelo.set(campoIndice.text, {"codigo": campoCodigo.text, "titulo": campoTitulo.text,"tipo": campoTipo.text, "nivel": campoNivel.text,"texto": campoTexto.text, "estadoDeAcceso": campoEstadoDeAcceso.text})
                                }
                            }
                            Text {
                                id: campoEstadoDeAcceso
                                text: estadoDeAcceso
                                visible: false
                            }
                        }
                    }
                }
            }
        }
    }
    UnidadDidactica {
        id: unidadDidactica
    }
    Articulo {
        id: articulo
        rutaDeIcono: rutaPorDefecto+"Icono/pordefecto.png"

    }
    Seccion {
        id: seccion
    }
    function desplegarConsultaDeArticulo(codigoArticulo){
        var contador = new Number
        contador = 0
        listaDeSeccionesModelo.clear()
        articulo.cargar(codigoArticulo)
        articulo.cargarSecciones();
        while (contador < articulo.contarSecciones()){
            listaDeSeccionesModelo.append({indice: contador, codigo: articulo.devolverCodigoSeccion(contador), titulo: articulo.devolverTituloSeccion(contador) , tipo: articulo.devolverTipoSeccion(contador), nivel: ""+articulo.devolverNivelSeccion(contador), texto: articulo.devolverTextoSeccion(contador), estadoDeAcceso: articulo.devolverEstadoDeAccesoSeccion(contador)})
            contador = contador +1
        }
        return true
    }
    function guardarCambios(){
        var contador = new Number;
        contador = 0
        while(contador < listaDeSeccionesModelo.count){
            seccion.codigo = listaDeSeccionesModelo.get(contador).codigo
            seccion.titulo = listaDeSeccionesModelo.get(contador).titulo
            seccion.tipo = listaDeSeccionesModelo.get(contador).tipo
            seccion.nivel = ""+listaDeSeccionesModelo.get(contador).nivel
            seccion.texto = listaDeSeccionesModelo.get(contador).texto
            seccion.estadoDeAcceso = listaDeSeccionesModelo.get(contador).estadoDeAcceso
            seccion.modificar(articulo.codigo)
            contador = contador +1;
        }
    }
    function actualizar(){
        articulo.codigo = formularioDeInformacionDeArticulos.formulario.campoCodigo.text
        articulo.titulo = formularioDeInformacionDeArticulos.formulario.campoTitulo.text
        articulo.desambiguacion = formularioDeInformacionDeArticulos.formulario.campoDesambiguacion.text
        articulo.rutaDeIcono = formularioDeInformacionDeArticulos.formulario.icono.source
        articulo.descripcion = formularioDeInformacionDeArticulos.formulario.campoDescripcion.text
        articulo.visitas = ""+formularioDeInformacionDeArticulos.formulario.campoVisitas.text
        articulo.estadoDeAcceso = formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeEstadoDeAcceso.currentText
        articulo.fechaReg = formularioDeInformacionDeArticulos.formulario.campoFechaDeRegistro.text
        articulo.fechaModif = formularioDeInformacionDeArticulos.formulario.campoFechaDeModificacion.text
        panelDeGuardarComoArticulo.panel.unidadCurricularSeleccionada = formularioDeInformacionDeArticulos.formulario.cajaDeOpcionesDeUnidadCurricular.currentText
    }
    FormularioDeInformacionDeArticulos {
        id: formularioDeInformacionDeArticulos
        visible: false
    }
    PanelDeGuardarComoArticulo {
        id: panelDeGuardarComoArticulo
    }
}
