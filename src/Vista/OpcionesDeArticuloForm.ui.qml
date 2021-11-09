import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias botonNuevo: botonNuevo
    property alias botonGuardar: botonGuardar
    property alias botonGuardarComo: botonGuardarComo
    property alias botonAbrir: botonAbrir
    property alias botonBloquear: botonBloquear
    property alias botonImprimir: botonImprimir
    property alias botonInformacionDelArticulo: botonInformacionDelArticulo
    height: 90
    width: 1200
    Row {
        id: contenedor
        width: 336
        height: 70
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.leftMargin: 10
        spacing: 5
        Button {
            id: botonNuevo
            width: 70
            height: 70
            text: "\n\n\n Nuevo"
            Image {
                id: iconoNuevo
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/articulo2.svg"
            }
        }
        Button {
            id: botonGuardar
            width: 70
            height: 70
            text: "\n\n\n Guardar"
            Image {
                id: iconoGuardar
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/guardar.svg"
            }
        }

        Button {
            id: botonGuardarComo
            width: 70
            height: 70
            text: "\n\n\n Guardar \n  como"
            Image {
                id: iconoGuardarComo
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/guardar.svg"
            }
            Image {
                id: iconoGuardarComoLapiz
                anchors.fill: parent
                anchors.topMargin: 10
                anchors.bottomMargin: 25
                anchors.leftMargin: 18
                anchors.rightMargin: 15
                source: rutaPorDefecto+"Iconos/lapiz.png"
                z:100
            }
        }

        Button {
            id: botonAbrir
            width: 70
            height: 70
            text: "\n\n\n Abrir"
            Image {
                id: iconoAbrir
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/abrir.png"
            }
        }
        Button {
            id: botonBloquear
            width: 70
            height: 70
            text: "\n\n\n Bloquear"
            Image {
                id: iconoBloquear
                anchors.fill: parent
                anchors.topMargin: -1
                anchors.bottomMargin: 25
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/bloquear.png"
            }
        }

        Button {
            id: botonImprimir
            width: 70
            height: 70
            text: "\n\n\n Imprimir"
            Image {
                id: iconoImprimir
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/imprimir.png"
            }
        }

        Button {
            id: botonInformacionDelArticulo
            width: 70
            height: 70
            text: "\n\n\n Información \n del artículo "
            Image {
                id: iconoInformacionDelArticulo
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 20
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/articulo.svg"
            }

            Image {
                id: iconoInformacionDelArticuloI
                anchors.fill: parent
                anchors.topMargin: 25
                anchors.bottomMargin: 15
                anchors.leftMargin: 32
                anchors.rightMargin: 7
                source: rutaPorDefecto+"Iconos/informacion.png"
                z: 100
            }
        }
    }
}
