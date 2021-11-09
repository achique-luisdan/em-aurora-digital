import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import "qrc:/Delegado" as Delegado
Item {
    id: item
    width: 1200
    height: 800
    anchors.fill: parent
    property string colorDelTema: "#3b0c42"
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias panel: panel
    property alias menuDeElementos: menuDeElementos
    property alias campoDeBusqueda: campoDeBusqueda
    property alias opcionUnidadCurricular: opcionUnidadCurricular
    property alias opcionUnidadDidactica: opcionUnidadDidactica
    property alias opcionArticulo: opcionArticulo
    property alias opcionProblema: opcionProblema
    property alias opcionLecturaAdicional: opcionLecturaAdicional
    property alias opcionElementoMultimedia: opcionElementoMultimedia
    property alias opcionJuegoEnlazado: opcionJuegoEnlazado
    property alias opcionVolver: opcionVolver
    property alias contenedor: contenedor
    property alias etiquetaCentroDeProduccionDeContenidos: etiquetaCentroDeProduccionDeContenidos
    property alias botonBuscar: botonBuscar
    property alias imagenBotonBuscar: imagenBotonBuscar
    property alias botonAyuda: botonAyuda
    property alias imagenBotonAyuda: imagenBotonAyuda
    property alias botonMenu: botonMenu
    property alias imagenBotonMenu: imagenBotonMenu
    property alias botonAgregar: botonAgregar
    property alias imagenBotonAgregar: imagenBotonAgregar
    property alias formularioDeUnidadCurricular: formularioDeUnidadCurricular
    Pane {
        id: panel
        width: item.width
        height: 90
        visible: true
        background:  Rectangle {
            id: fondoDelPanel
            color: colorDelTema
            layer.enabled: true
            layer.effect: DropShadow {
                horizontalOffset: 1
                verticalOffset: 1
                radius: 10.0
                samples: 24
                source: fondoDelPanel
                color: "black"
            }
        }
        Label {
            id: etiquetaCentroDeProduccionDeContenidos
            text: "Centro de Producción de Contenidos"
            anchors.verticalCenterOffset: -16
            anchors.horizontalCenterOffset: -182
            anchors.centerIn: parent
            color: "white"
            font.pixelSize:  item.width/100*3
            layer.enabled: true
            layer.effect: DropShadow {
                horizontalOffset: 1
                verticalOffset: 1
                radius: 15.0
                samples: 24
                source: etiquetaCentroDeProduccionDeContenidos
                color: "black"
            }
        }

        Button {
            id: botonMenu
            x: 5
            y: etiquetaCentroDeProduccionDeContenidos.y +7
            width: 37
            height: etiquetaCentroDeProduccionDeContenidos.height -7
            hoverEnabled: true
            background: Rectangle {
                color: "#00000000"
            }
            Image {
                id: imagenBotonMenu
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                anchors.fill: parent
                layer.enabled: botonMenu.hovered ? true : false
                source: rutaPorDefecto+"boton-de-menu.png"
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                layer.effect: DropShadow {
                    color: "#ffffff"
                    radius: 20
                    horizontalOffset: 1
                    source: imagenBotonMenu
                    samples: 24
                    verticalOffset: 1
                }
            }
        }

        Button {
            id: botonBuscar
            x: panel.width -105
            y: etiquetaCentroDeProduccionDeContenidos.y +7
            width: 37
            height: etiquetaCentroDeProduccionDeContenidos.height -7
            hoverEnabled: true
            background: Rectangle {
                color: "transparent"
            }
            Image {
                id: imagenBotonBuscar
                anchors.fill: parent
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                source: rutaPorDefecto+"lupa-para-buscar.png"
                layer.enabled: botonBuscar.hovered ? true : false
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 20.0
                    samples: 24
                    source: imagenBotonBuscar
                    color: "white"
                }
            }
        }

        TextField {
            id: campoDeBusqueda
            x: etiquetaCentroDeProduccionDeContenidos.x + etiquetaCentroDeProduccionDeContenidos.width +30
            y: 7
            width: 323
            height: 30
            placeholderText: "Teclear para buscar..."
            font.pixelSize: 16
            visible: false
            background: Rectangle {
                radius: 2
                implicitWidth: 100
                implicitHeight: 24
                border.color:  campoDeBusqueda.focus ? "#7F1E57" : "lightgray"
                border.width: campoDeBusqueda.focus ? 2 : 1
            }
         }
        Button {
            id: botonAyuda
            x: panel.width -60
            y: etiquetaCentroDeProduccionDeContenidos.y +7
            width: 37
            height: etiquetaCentroDeProduccionDeContenidos.height -12
            hoverEnabled: true
            background: Rectangle {
                color: "transparent"
            }
            Image {
                id: imagenBotonAyuda
                anchors.fill: parent
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                source: rutaPorDefecto+"boton-de-ayuda-bocadillo-con-signo-de-interrogacion.png"
                layer.enabled: botonAyuda.hovered ? true : false
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 20.0
                    samples: 24
                    source: imagenBotonAyuda
                    color: "white"
                }
            }
        }

        Button {
            id: botonAgregar
            x: panel.width -200
            y: 52
            z: 10
            width: 50
            height: 50
            hoverEnabled: true
            background: Rectangle {
                id: fondoBotonAgregar
                color: botonAgregar.hovered ? "#9c3073" : "#7F1E57"
                radius: 100
                layer.enabled: true
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 5.0
                    samples: 10
                    source: fondoBotonAgregar
                    color: "black"
                }
            }
            Image {
                id: imagenBotonAgregar
                anchors.topMargin: 15
                anchors.bottomMargin: 15
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                anchors.fill: parent
                source: rutaPorDefecto+"boton-anadir.png"
            }
        }
    }

    Menu {
        id: menuDeElementos
        contentWidth: 400
        MenuItem {
            id: opcionUnidadCurricular
            text: " Unidad curricular"
        }
        MenuItem {
            id: opcionUnidadDidactica
            text: " Unidad didáctica"
        }
        MenuItem {
            id: opcionArticulo
            text: " Artículo"
        }
        MenuItem {
            id: opcionProblema
            text: " Problema"
        }
        MenuItem {
            id: opcionLecturaAdicional
            text: " Lectura adicional"
        }
        MenuItem {
            id: opcionElementoMultimedia
            text: " Elemento multimedia"
        }
        MenuItem {
            id: opcionJuegoEnlazado
            text: " Juego enlazado"
        }
        MenuItem {
            id: opcionVolver
            text: " Volver"
        }
    }
    SwipeView {
        id: contenedor
        y: 94
        z: -10
        width: item.width
        height: item.height -94
        Page {
            id: paginaDeProduccionDeUnidadCurricular
            Delegado.FormularioDeUnidadCurricular{
                id: formularioDeUnidadCurricular

            }
        }

        Page {

        }
        Page {
            Delegado.FormularioDeArticulo {
                id: formularioDeArticulo
            }
        }
    }
}
