import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Item {
    id: vistaDeArticulos
    width: 1200
    height: 677
    anchors.fill:  parent
    property alias ambiente: ambiente
    property alias etiqueta: etiqueta
    property alias panel: panel
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    property int seleccionUnidadCurricular: -1
    property string seleccionUnidadDidactica: "SINCOD00"
    property string seleccionArticulo: "SINCOD00"
    property alias listaDeUnidadesDidacticaVista: listaDeUnidadesDidacticaVista
    property alias listaDeUnidadesDidacticaModelo: listaDeUnidadesDidacticaModelo
    property alias listaDeArticulosVista: listaDeArticulosVista
    property alias listaDeArticulosModelo: listaDeArticulosModelo
    Image {
        id: ambiente
        anchors.fill: parent
        source: rutaPorDefecto+"Fondos/fondo1.png"
        visible: true
    }
    Label {
        id: etiqueta
        font.family: nombreDeFuente
        font.pointSize: 20
        color: "white"
        x: 10
        y: 40
        z: 30
        visible: true

        text: "Sin unidad curricular"
    }
    Rectangle {
        id: panel
        anchors.fill: parent
        anchors.leftMargin: 300
        anchors.rightMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 40
        color: "white"
        radius: 35
        border.color:"black"
        border.width: 2
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 5
            verticalOffset: 5
            radius: 3
            samples: radius * 2
            source: panel
            color: "#090909"
        }
        visible:  true
    }
    ScrollBar {
        anchors.fill: parent
        anchors.leftMargin: 90
        anchors.rightMargin: 910
        anchors.topMargin: 110
        anchors.bottomMargin: 70
        ListView {
            id: listaDeUnidadesDidacticaVista
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            spacing: 45
            model: listaDeUnidadesDidacticaModelo
            Rectangle {
                id: selectorUnidadDidactica
                x: -80
                y: (seleccionUnidadDidactica *45)-10
                z: -10
                width: 300; height: 45
                radius: 7
                opacity: 10
                color:"white"
                visible: true
            }
            visible: true
        }
    }
    ListModel {
        id: listaDeUnidadesDidacticaModelo
    }
    ScrollBar {
        anchors.fill: parent
        anchors.leftMargin: 400
        anchors.rightMargin: 35
        anchors.topMargin: 35
        anchors.bottomMargin: 75
        ListView {
            id: listaDeArticulosVista
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            spacing: 42
            model: listaDeArticulosModelo
            visible: true
        }
    }
    ListModel {
        id: listaDeArticulosModelo
    }
}
