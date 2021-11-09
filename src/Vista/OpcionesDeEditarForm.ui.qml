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
            id: botonDeshacer
            width: 70
            height: 70
            text: "\n\n\n Deshacer"
            Image {
                id: iconoDeshacer
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/deshacer.svg"
            }
        }
        Button {
            id: botonRehacer
            width: 70
            height: 70
            text: "\n\n\n Deshacer"
            Image {
                id: iconoRehacer
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/rehacer.svg"
            }
        }
        Button {
            id: botonCopiar
            width: 70
            height: 70
            text: "\n\n\n Copiar"
            Image {
                id: iconoCopiar1
                anchors.fill: parent
                anchors.topMargin: 0
                anchors.bottomMargin: 23
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                source: rutaPorDefecto+"Iconos/articulo2.svg"
                z: 100
            }
            Image {
                id: iconoCopiar2
                anchors.fill: parent
                anchors.topMargin: 3
                anchors.bottomMargin: 30
                anchors.leftMargin: 30
                anchors.rightMargin: 5
                source: rutaPorDefecto+"Iconos/articulo2.svg"
            }
        }
        Button {
            id: botonPegar
            width: 70
            height: 70
            text: "\n\n\n Pegar"
            Image {
                id: iconoPegar
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/pegar.svg"
            }
            Image {
                id: iconoPegarArticulo
                anchors.fill: parent
                anchors.topMargin: 15
                anchors.bottomMargin: 15
                anchors.leftMargin: 32
                anchors.rightMargin: 7
                source: rutaPorDefecto+"Iconos/articulo1.svg"
                z:100
            }
        }
        Button {
            id: botonCortar
            width: 70
            height: 70
            text: "\n\n\n Cortar"
            Image {
                id: iconoCortar
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/cortar.svg"
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
            id: botonFuente
            width: 70
            height: 70
            text: "\n\n\n Fuente"
            Image {
                id: iconoFuente
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/fuente.svg"
            }
        }

        Button {
            id: botonParrafo
            width: 70
            height: 70
            text: "\n\n\n Párrafo"
            Image {
                id: iconoParrafo
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/parrafo.png"
            }
        }
    }
}
