import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Item {
    id: consultaDeArticulo
    width: 1200
    height: 677
    anchors.fill: parent
    property alias panel: panel
    property alias listaDeSeccionesVista: listaDeSeccionesVista
    property alias listaDeSeccionesModelo: listaDeSeccionesModelo
    property alias titulo: etiqueta
    property string seleccionArticulo: "SINCOD000"
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    Image {
        id: ambiente
        anchors.fill: parent
        source: rutaPorDefecto+"Fondos/fondo1.png"
        visible: true
    }
    Rectangle {
        id: panel
        anchors.fill: parent
        anchors.topMargin: 20; anchors.bottomMargin: 40
        anchors.centerIn: parent
        border.color:"lightgray"
        border.width: 1
        layer.enabled: true
        gradient: Gradient {
            GradientStop { position: 0.05; color: "#ffffff" }
            GradientStop { position: 0.10; color: "#eeebeb"; }
            GradientStop { position: 0.15; color: "#dddddd"; }
            GradientStop { position: 0.90; color: "#d9d9d9"; }
        }
        layer.effect: DropShadow {
            horizontalOffset: 5
            verticalOffset: 5
            radius: 3
            samples: radius * 2
            source: panel
            color: "gray"
        }
    }
    ScrollView {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 70
        anchors.bottomMargin: 40
        anchors.centerIn: parent
        ListView {
            id: listaDeSeccionesVista
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            anchors.bottomMargin: 25
            anchors.topMargin: 25
            anchors.fill: parent
            spacing: 2
            model: listaDeSeccionesModelo
        }
    }
    Label {
        anchors.fill: parent
        id: etiqueta
        x: 16
        y: 38
        anchors.bottomMargin: 620
        anchors.topMargin: 30
        anchors.leftMargin: 60
        font.pointSize: 16
        Rectangle {
            color: "lightGray"
            width:  etiqueta.width +60
            height: 1
            y: 30
            x: -60
        }
    }

    ListModel {
        id: listaDeSeccionesModelo
    }
}
