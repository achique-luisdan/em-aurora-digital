import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
Item {
    id: caja
    width: 1200
    height: 800
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property int tamanioDeLetra: 12
    property string nombreDeFuente: "Arial"
    property alias etiqueta: etiqueta
    property alias rhema: rhema
    property alias ambiente: ambiente
    property alias panel: panel
    property alias listaDeUnidadesCurricularesVista: listaDeUnidadesCurricularesVista
    property alias listaDeUnidadesCurricularesModelo: listaDeUnidadesCurricularesModelo
    Label {
        id: etiqueta
        x: 150
        y: 42
        z:10
        text: "Aurora Digital"
        font.family: nombreDeFuente
        font.pointSize: 32
        font.bold: true
        color: "#fde1ee"
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 4
            verticalOffset: 4
            radius: 3
            samples: radius * 2
            source: etiqueta
            color: "#090909"
        }
        visible: caja.visible
    }

    Label {
        id: rhema
        x: 800
        y: 58
        z:10
        text: "Una Exploxión de Saberes"
        font.family: "Kaushan Script"
        font.pointSize: 20
        color: "#ffffff"
        visible: caja.visible
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 2
            verticalOffset: 2
            radius: 3
            samples: radius * 2
            source: rhema
            color: "#090909"
        }
    }

    Image {
        id: ambiente
        anchors.fill: parent
        source: rutaPorDefecto+"Fondos/ambiente.png"
        visible: true
    }

    Rectangle {
        id: panel
        color: "#a806b3"
        anchors.fill: parent
        anchors.leftMargin: 100
        anchors.rightMargin: 100
        anchors.topMargin: 100
        anchors.bottomMargin: 70
        anchors.centerIn: parent
        opacity: 0.19
        radius: 35
        anchors.horizontalCenterOffset: 100
        gradient: Gradient {
            GradientStop { position: 0.10; color: "#69033d"; }
            GradientStop { position: 0.35; color: "#090909"; }
            GradientStop { position: 0.45; color: "#090909"; }
            GradientStop { position: 0.90; color: "#090909"; }
            GradientStop { position: 0.98; color: "#69033d";}
        }
        border.width: 3
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 9
            verticalOffset: 9
            radius: 3
            samples: radius * 2
            source: panel
            color: "#090909"
        }
        visible: true
    }
    ListModel {
        id: listaDeUnidadesCurricularesModelo
    }
    ScrollView {
        id: lista
        anchors.fill: parent
        anchors.leftMargin: 112
        anchors.rightMargin: 120
        anchors.topMargin: 115
        anchors.bottomMargin: 88
        ListView {
            id: listaDeUnidadesCurricularesVista
            anchors.bottomMargin: 50
            anchors.rightMargin: 100
            anchors.fill: parent
            anchors.topMargin: 50
            anchors.leftMargin: 145
            spacing: 60
            visible: true
            property int seleccion: seleccion
            model: listaDeUnidadesCurricularesModelo
        }
    }
}
