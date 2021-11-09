import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    height: 90
    width: 1200
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias botonElementoMultimedia: botonElementoMultimedia
    property alias botonSeccion: botonSeccion
    property alias botonProblema: botonProblema
    property alias botonJuegoEnlazado: botonJuegoEnlazado
    property alias botonLecturaAdicional: botonLecturaAdicional
    Row {
        id: contenedor
        width: 336
        height: 70
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.leftMargin: 10
        spacing: 5
        Button {
            id: botonElementoMultimedia
            width: 70
            height: 70
            text: "\n\n\n Elemento multimedia"
            Image {
                id: iconoElementoMultimedia
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/elementoMultimedia.svg"
            }
        }

        Button {
            id: botonSeccion
            width: 70
            height: 70
            text: "\n\n\n Sección"
            Image {
                id: iconoSeccion
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/seccion.png"
            }
        }
        Button {
            id: botonProblema
            width: 70
            height: 70
            text: "\n\n\n Problema"
            Image {
                id: iconoProblema
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/problema.png"
            }
        }
        Button {
            id: botonJuegoEnlazado
            width: 70
            height: 70
            text: "\n\n\n Juego enlazado"
            Image {
                id: iconoJuegoEnlazado
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/juego.png"
            }
        }
        Button {
            id: botonLecturaAdicional
            width: 70
            height: 70
            text: "\n\n\n Lectura adicional"
            Image {
                id: iconoLecturaAdicional
                anchors.fill: parent
                anchors.topMargin: -3
                anchors.bottomMargin: 18
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                source: rutaPorDefecto+"Iconos/lector.svg"
            }
        }
    }
}
