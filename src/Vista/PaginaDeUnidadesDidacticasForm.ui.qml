import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
Item {
    id: vistaDeUnidadesDidacticas
    width: 1200
    height: 677
    anchors.fill: parent
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    property int tamanioDeLetra: 12
    property string nombreDeFuente: "Arial"
    property int seleccionUnidadCurricular: -1
    property string seleccionUnidadCurricularCodigo: "SINCOD000"
    property string seleccionUnidadDidactica: "SINCOD000"
    property alias ambiente: ambiente
    property alias etiqueta: etiqueta
    property alias  panel: panel
    property alias listaDeUnidadesCurricularesVista: listaDeUnidadesCurricularesVista
    property alias listaDeUnidadesCurricularesModelo : listaDeUnidadesCurricularesModelo
    property alias listaDeUnidadesDidacticaVista: listaDeUnidadesDidacticaVista
    property alias listaDeUnidadesDidacticaModelo: listaDeUnidadesDidacticaModelo

    Image {
        id: ambiente
        anchors.fill: parent
        source: rutaPorDefecto+"Fondos/fondo1.png"
        visible: true
    }
    Label {
        id: etiqueta
        x: 50
        y: 40
        z: 30
        font.family: nombreDeFuente
        font.pointSize: 20
        color: "white"
        text: "Página inicio"
        visible: true
    }
    Rectangle {
        id: panel
        anchors.fill: parent
        anchors.leftMargin: 300
        anchors.rightMargin: 5
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
            id: listaDeUnidadesCurricularesVista
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            spacing: 48
            model: listaDeUnidadesCurricularesModelo
            visible: true
            Rectangle {
                id: selectorUnidadCurricular
                x: -80
                y: (seleccionUnidadCurricular *45)-10
                z: -10
                width: 300
                height: 45
                radius: 7
                opacity: 10
                color: "white"
                visible: true
            }
        }
    }
    ListModel {
        id: listaDeUnidadesCurricularesModelo
    }
    ScrollBar {
        anchors.fill: parent
        anchors.leftMargin: 400
        anchors.rightMargin: 35
        anchors.topMargin: 35
        anchors.bottomMargin: 75
        ListView {
            id: listaDeUnidadesDidacticaVista
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            spacing: 42
            model: listaDeUnidadesDidacticaModelo
            visible: true
        }
    }
    ListModel {
        id: listaDeUnidadesDidacticaModelo
    }
}
