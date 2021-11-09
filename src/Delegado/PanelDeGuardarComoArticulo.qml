import QtQuick 2.4
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1
import QArticulo 0.1
import QSeccion 0.1
import "qrc:/Vista/" as Vista
Window {
    id: ventana
    width: 600
    height: 600
    maximumWidth: Screen.width
    maximumHeight: Screen.height
    property alias panel: panelDeGuardarComoArticulo
    Vista.PanelDeGuardarComoArticuloForm {
        id: panelDeGuardarComoArticulo
        property string unidadCurricularSeleccionada: panelDeGuardarComoArticulo.listaDeUnidadesCurricularesVista.seleccion
        property string unidadDidacticaSeleccionada: panelDeGuardarComoArticulo.listaDeUnidadesDidacticasVista.seleccion
        property alias articulo: articulo
        property alias listaDeSeccionesModelo: listaDeSeccionesModelo
        listaDeUnidadesCurricularesVista.delegate: Item{
            id: item
            Label {
                id: codigoUnidadCurricular
                text: codigo
                visible : false
            }
            Text {
                id: nombreUnidadCurricular
                width: 200
                text: nombre
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Text {
                id: iconoPrimarioUnidadCurricular
                text: rutaPrimaria
                visible : false
            }
            Text {
                id: iconoSecundarioUnidadCurricular
                text: rutaSecundaria
                visible : false
            }
            Text {
                id: fechaDeModifUnidadCurricular
                x: nombreUnidadCurricular.x + nombreUnidadCurricular.width +25
                width: 100
                text: fechaModif
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Text {
                id: estadoDeAccesoUnidadCurricular
                x: fechaDeModifUnidadCurricular.x + fechaDeModifUnidadCurricular.width +90
                width: 70
                text: estadoDeAcceso
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Rectangle {
                id: rectanguloUnidadCurricular
                opacity: 10
                y: nombreUnidadCurricular.y -12
                x: nombreUnidadCurricular.x -80
                z: -2
                width: 570; height: 45
                radius: 7
                color:"transparent"
                Image {
                    id: ilustracionUnidadCurricular
                    x: 20
                    source: iconoPrimarioUnidadCurricular.text
                    width: 40
                    height: 40
                    SequentialAnimation on source {
                        id: cambiarIcono
                        loops: Animation.Infinite
                        running: false
                        PropertyAnimation {
                            duration: 700
                            to: iconoSecundarioUnidadCurricular.text
                        }
                        PropertyAnimation {
                            duration: 900
                            to: iconoPrimarioUnidadCurricular.text
                        }
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: {
                        nombreUnidadCurricular.color = "#3b0c42"
                        panelDeGuardarComoArticulo.listaDeUnidadesCurricularesVista.seleccion = nombreUnidadCurricular.text
                        panelDeGuardarComoArticulo.etiquetaNombre.text = "Unidad didáctica"
                        panelDeGuardarComoArticulo.listaDeUnidadesCurricularesVista.continuar = true

                        panelDeGuardarComoArticulo.cargarUnidadesDidacticas(nombreUnidadCurricular.text)
                    }
                    onEntered: {
                        nombreUnidadCurricular.color = "#3b0c42"
                        cambiarIcono.running = true
                    }
                    onExited: {
                        nombreUnidadCurricular.color = "gray"
                        cambiarIcono.running = false
                    }
                }
                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 43
                    anchors.bottomMargin: 1
                    anchors.leftMargin: 15
                    color: "lightGray"
                }

                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 44
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 15
                    color: "#e6e6e6"
                }
                visible: true
            }
        }

        listaDeUnidadesDidacticasVista.delegate: Item{
            Text {
                id: codigoUnidadesDidactica
                text: codigo
                visible : false
            }
            Text {
                id: nombreUnidadesDidactica
                text: nombre
                width: 200
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"

            }
            Text {
                id: iconoUnidadesDidactica
                text: ruta
                visible : false
            }
            Text {
                id: fechaDeModifUnidadDidactica
                x: nombreUnidadesDidactica.x + nombreUnidadesDidactica.width +45
                width: 100
                text: fechaModif
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Text {
                id: estadoDeAccesoUnidadDidactica
                x: fechaDeModifUnidadDidactica.x + fechaDeModifUnidadDidactica.width +60
                width: 70
                text: estadoDeAcceso
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Rectangle {
                id: rectanguloUnidadesDidactica
                opacity: 10
                x: nombreUnidadesDidactica.x-80
                y: nombreUnidadesDidactica.y -10; z:-2
                width: 570
                height: 45
                radius: 7
                color:"transparent"
                Image {
                    id: ilustracionUnidadesDidactica
                    source: iconoUnidadesDidactica.text
                    height: 40
                    width: 40
                    x: 20
                }
                MouseArea {
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        nombreUnidadesDidactica.color = "#3b0c42"
                    }
                    onExited: {
                        nombreUnidadesDidactica.color = "gray"
                    }
                    onClicked: {
                        nombreUnidadesDidactica.color = "#3b0c42"
                        panelDeGuardarComoArticulo.listaDeUnidadesDidacticasVista.seleccion = codigoUnidadesDidactica.text
                        panelDeGuardarComoArticulo.listaDeUnidadesDidacticasVista.continuar = true
                        panelDeGuardarComoArticulo.etiquetaNombre.text = "Artículo"
                        panelDeGuardarComoArticulo.listaDeUnidadesDidacticasVista.visible = false
                        panelDeGuardarComoArticulo.cargarArticulos(codigoUnidadesDidactica.text)
                    }
                }

                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 43
                    anchors.bottomMargin: 1
                    anchors.leftMargin: 15
                    color: "lightGray"
                }

                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 44
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 15
                    color: "#e6e6e6"
                }
            }
        }

        listaDeArticulosVista.delegate: Item{
            Text {
                id: codigoArticulo
                text: codigo
                visible : false
            }
            Text {
                id: tituloArticulo
                text: titulo
                width: 200
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"

            }
            Text {
                id: iconoArticulo
                text: ruta
                visible : false
            }
            Text {
                id: fechaDeModifArticulo
                x: tituloArticulo.x + tituloArticulo.width +45
                width: 100
                text: fechaModif
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Text {
                id: estadoDeAccesoArticulo
                x: fechaDeModifArticulo.x + fechaDeModifArticulo.width +60
                width: 70
                text: estadoDeAcceso
                font.family: "Arial"
                font.pointSize: 12
                color: "gray"
            }
            Rectangle {
                id: rectanguloArticulo
                opacity: 10
                x: tituloArticulo.x-80
                y: tituloArticulo.y -10; z:-2
                width: 570
                height: 45
                radius: 7
                color:"transparent"
                Image {
                    id: ilustracionArticulo
                    source: iconoArticulo.text
                    height: 40
                    width: 40
                    x: 20
                }
                MouseArea {
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        tituloArticulo.color = "#3b0c42"
                    }
                    onExited: {
                        tituloArticulo.color = "gray"
                    }
                    onClicked: {
                        tituloArticulo.color = "#3b0c42"
                         panelDeGuardarComoArticulo.listaDeArticulosVista.seleccion = codigoArticulo.text
                    }
                }
                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 43
                    anchors.bottomMargin: 1
                    anchors.leftMargin: 15
                    color: "lightGray"
                }
                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 44
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 15
                    color: "#e6e6e6"
                }
            }
        }
        mouseAreaBotonGuardar.onClicked: {
                var codigoBaseGenerado = new String;
                var codigoFinalGenerado = new String;
                var entero = new Number;
                articulo.titulo = panelDeGuardarComoArticulo.campoTitulo.text
                entero = unidadDidactica.contarArticulosEnGeneral()+1
                codigoBaseGenerado =  panelDeGuardarComoArticulo.unidadDidacticaSeleccionada+"-"+entero
                articulo.codigo = codigoBaseGenerado
                articulo.guardar(panelDeGuardarComoArticulo.unidadDidacticaSeleccionada)
                articulo.cargar(articulo.codigo)
                codigoFinalGenerado = codigoBaseGenerado
                articulo.actualizarCodigo(codigoFinalGenerado)
                articulo.codigo = codigoFinalGenerado
                console.log(articulo.codigo)
                guardarSecciones()
            ventana.close();
        }
        UnidadCurricular {
            id: unidadCurricular
        }
        function actualizar(){
            panelDeGuardarComoArticulo.campoTitulo.text = articulo.titulo
            cargarUnidadesCurriculares();
        }
        function cargarUnidadesCurriculares(){
            var contador = new Number;
            contador = 0
            panelDeGuardarComoArticulo.listaDeUnidadesCurricularesModelo.clear()
            while (contador < unidadCurricular.contarEnGeneral()){
                unidadCurricular.cargarEnGeneral(contador)
                panelDeGuardarComoArticulo.listaDeUnidadesCurricularesModelo.append({codigo: unidadCurricular.codigo, nombre: unidadCurricular.nombre, rutaPrimaria: unidadCurricular.rutaDeIconoPrim, rutaSecundaria: unidadCurricular.rutaDeIconoSec, fechaModif: unidadCurricular.fechaModif, estadoDeAcceso: unidadCurricular.estadoDeAcceso})
                contador = contador +1
            }
            return true
        }
        UnidadDidactica {
            id: unidadDidactica
        }
        function cargarUnidadesDidacticas(codigoUnidadCurricular){
            var contador = new Number;
            contador = 0
            panelDeGuardarComoArticulo.listaDeUnidadesDidacticasModelo.clear()
            unidadCurricular.cargar(codigoUnidadCurricular)
            unidadCurricular.cargarUnidadesDidacticasEnGeneral()
            while (contador < unidadCurricular.contarUnidadesDidacticasEnGeneral()){
                panelDeGuardarComoArticulo.listaDeUnidadesDidacticasModelo.append({codigo: unidadCurricular.devolverCodigoUnidadDidactica(contador), nombre: unidadCurricular.devolverNombreUnidadDidactica(contador), ruta: unidadCurricular.devolverRutaDeIconUnidadDidactica(contador), fechaModif: unidadCurricular.devolverFechaModifUnidadDidactica(contador), estadoDeAcceso : unidadCurricular.devolverEstadoDeAccesoUnidadDidactica(contador)})
                contador = contador +1
            }
            return 0
        }
        Articulo {
            id: articulo
        }
        function cargarArticulos(unidadDidacticaSeleccionada){
            var contador = new Number;
            contador = 0
            panelDeGuardarComoArticulo.listaDeArticulosModelo.clear()
            unidadDidactica.cargar(unidadDidacticaSeleccionada, unidadCurricular.codigo)
            unidadDidactica.cargarArticulosEnGeneral()
            while (contador < unidadDidactica.contarArticulosEnGeneral()){
                panelDeGuardarComoArticulo.listaDeArticulosModelo.append({codigo: unidadDidactica.devolverCodigoArticulo(contador), titulo: unidadDidactica.devolverTituloArticulo(contador) , ruta: unidadDidactica.devolverRutaDeIconoArticulo(contador), fechaModif: unidadDidactica.devolverFechaModifArticulo(contador), estadoDeAcceso: unidadDidactica.devolverEstadoDeAccesoArticulo(contador)})
                contador = contador +1
            }
            return true
        }
        Seccion {
            id: seccion
        }
        ListModel {
            id: listaDeSeccionesModelo
        }
        function guardarSecciones(){
            var contador = new Number;
            contador = 0
            var codigoBaseGenerado = new String;
            var codigoFinalGenerado = new String;
            var entero = new Number;
            while(contador < listaDeSeccionesModelo.count){
                entero = articulo.contarSeccionesEnGeneral()+1
                codigoBaseGenerado =  articulo.codigo+"-"+entero
                seccion.codigo = codigoBaseGenerado
                seccion.titulo = listaDeSeccionesModelo.get(contador).titulo
                seccion.tipo = listaDeSeccionesModelo.get(contador).tipo
                seccion.nivel = ""+listaDeSeccionesModelo.get(contador).nivel
                seccion.texto = listaDeSeccionesModelo.get(contador).texto
                seccion.estadoDeAcceso = listaDeSeccionesModelo.get(contador).estadoDeAcceso
                seccion.guardar(articulo.codigo)
                contador = contador +1;
            }
        }
    }
}
