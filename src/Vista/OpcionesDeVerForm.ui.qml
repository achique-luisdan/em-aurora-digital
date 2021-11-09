import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    height: 90
    width: 1200
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    Row {
        id: contenedor
        width: 336
        height: 70
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.leftMargin: 10
        spacing: 5
        Button {
            id: botonLector
            width: 70
            height: 70
            text: "\n\n\n Lector"
            Image {
                id: iconoLector
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/lector.png"
            }
        }

        Button {
            id: botonDiseoDePagina
            width: 70
            height: 70
            text: "\n\n\n Diseño de \n  página"
            Image {
                id: iconoDiseoDePagina
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/diseoDePagina.png"
            }
        }

        Button {
            id: botonDiseoWeb
            width: 70
            height: 70
            text: "\n\n\n Diseño web"
            Image {
                id: iconoDiseoWeb
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 20
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/articulo2.svg"
            }
            Image {
                id: iconoDiseoWebGlobo
                anchors.fill: parent
                anchors.topMargin: 25
                anchors.bottomMargin: 15
                anchors.leftMargin: 32
                anchors.rightMargin: 7
                source: rutaPorDefecto+"Iconos/diseoWeb.svg"
                z:100
            }
        }

        Button {
            id: botonZoom
            width: 70
            height: 70
            text: "\n\n\n Zoom"
            Image {
                id: iconoZoom
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/zoom.png"
            }
        }
        Rectangle {
            id: lineaSeparadora
            y: -10
            width: 1
            height: 90
            color: "lightGray"
            visible: true
        }
        Button {
            id: botonEncontrar
            width: 70
            height: 70
            text: "\n\n\n Encontrar "
            Image {
                id: iconoEncontrar
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 20
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/articulo.svg"
            }
            Image {
                id: iconoEncontrarLupa
                anchors.fill: parent
                anchors.topMargin: 25
                anchors.bottomMargin: 15
                anchors.leftMargin: 32
                anchors.rightMargin: 7
                source: rutaPorDefecto+"Iconos/encontrar.svg"
                z:100
            }
        }
    }
}
