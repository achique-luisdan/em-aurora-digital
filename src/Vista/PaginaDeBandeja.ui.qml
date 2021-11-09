import QtQuick 2.5
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQml.Models 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

Item {
    id: item
    width: 1200
    height: 800
    anchors.fill: parent
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property int tamanioDeLetra: 16
    property string nombreDeFuente: "Arial"
    property alias fondo: fondo
    property alias name: imagenFondo
    property alias etiquetaBandeja: etiquetaBandeja
    property alias botonMensaje: botonMensaje
    property alias mouseAreaBotonMensaje: mouseAreaBotonMensaje
    property alias contenedorDeLaListaDeCategorias: contenedorDeLaListaDeCategorias
    property alias listaDeCategoriasVista: listaDeCategoriasVista
    property alias contenedorDeLaListaDeMensajes: contenedorDeLaListaDeMensajes
    property alias fondoDelContenedorDeListaDeMensajes: fondoDelContenedorDeListaDeMensajes
    property alias listaDeMensajesVista: listaDeMensajesVista
    property alias campoDeBusqueda: campoDeBusqueda
    property alias imagenLupa: imagenLupa
    property alias imagenBuscar: imagenBuscar
    Rectangle {
        id: fondo
        anchors.fill: parent
        color: "#ffffff"
        z: -4
        Image {
            anchors.fill: parent
            id: imagenFondo
            source: rutaPorDefecto+"Fondos/fondo2.jpg"
        }
    }
    Text {
        id: etiquetaBandeja
        x: 32
        y: 19
        z: 10
        color: "white"
        text: "Bandeja"
        layer.effect: DropShadow {
            color: "#090909"
            radius: 3
            source: etiquetaBandeja
            verticalOffset: 4
            samples: radius * 2
            horizontalOffset: 4
        }
        font.family: nombreDeFuente
        font.pointSize: 22
        layer.enabled: true
        font.bold: true
    }
    Rectangle {
        id: botonMensaje
        x: 33
        y: 84
        width: 270
        height: 32
        color: "#77f5b8"//"#3b0c42"
        opacity: 0.85
        Text {
            id: etiquetaMensaje
            color: "#ffffff"
            text: "Mensaje"
            font.pointSize: 14
            anchors.centerIn: parent
            font.family: nombreDeFuente
        }
        MouseArea {
            id: mouseAreaBotonMensaje
            anchors.fill: parent
            hoverEnabled: true
        }
    }
    ScrollView {
        id: contenedorDeLaListaDeCategorias
        anchors.rightMargin: 883
        anchors.leftMargin: 17
        anchors.bottomMargin: 38
        anchors.topMargin: 135
        anchors.fill: parent
        opacity: 0.85
        ListView {
            id: listaDeCategoriasVista
            anchors.rightMargin: 15
            anchors.bottomMargin: 15
            anchors.leftMargin: 15
            anchors.topMargin: 15
            anchors.fill: paren
            spacing: 34
        }
    }
    Rectangle {
        id: contenedorDeLaListaDeMensajes
        anchors.leftMargin: 356
        anchors.bottomMargin: 45
        anchors.fill: parent
        anchors.topMargin: 88

        Rectangle {
            id: fondoDelContenedorDeListaDeMensajes
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            z: -10
            opacity: 0.85
            gradient: Gradient {
                GradientStop { position: 0.05; color: "#ffffff" }
                GradientStop { position: 0.60; color: "#eeebeb"; }
                GradientStop { position: 0.98; color: "#dddddd"; }
            }
        }
        TableView {
            id: listaDeMensajesVista
            frameVisible: false
            backgroundVisible: false
            alternatingRowColors: false
            anchors.leftMargin: 15
            anchors.rightMargin: 15
            anchors.bottomMargin: 15
            anchors.fill: parent
            z: 100
            TableViewColumn {
                title: "Usuario"
                role: "nombreEmisor"
            }
            TableViewColumn {
                title: "Asunto"
                role: "asuntoMensaje"
            }
            TableViewColumn {
                title: "Mensaje"
                role: "textoMensaje"

            }
            TableViewColumn {
                title: "Recibido"
                role: "fechaRecibidoMensaje"
            }
            itemDelegate: Item {
                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.fill: parent
                    color: styleData.textColor
                    elide: styleData.elideMode
                    text: styleData.value
                    font.family: "Arial"
                    font.pointSize: 12
                }
            }
        }
        anchors.rightMargin: 26
    }

    Rectangle {
        id: linea1
        x: 330
        y: 0
        width: 1
        height: item.height
        color: "#a09f9f"
        z: 100
        visible: true
    }

    Rectangle {
        id: linea2
        x: 0
        y: 128
        width: 331
        height: 1
        color: "#a09f9f"
        z: 100
        visible: true
    }

    Rectangle {
        id: linea3
        x: 0
        y: 71
        width: 331
        height: 1
        color: "#a09f9f"
        visible: true
        z: 100
    }
    TextField {
        id: campoDeBusqueda
        x: contenedorDeLaListaDeMensajes.x
        y: 21
        width: contenedorDeLaListaDeMensajes.width
        height: 33
        font.pointSize: 12
        font.family: nombreDeFuente
        placeholderText: "Teclear para buscar..."
        style: TextFieldStyle{
            padding.left: 30
            padding.right: 40
        }
    }

    Image {
        id: imagenLupa
        x: campoDeBusqueda.x +4
        y: campoDeBusqueda.y +4
        z: 10
        width: 20
        height: 20
        source: rutaPorDefecto+"Iconos/busqueda.png"
        visible: true
    }

    Image {
        id: imagenBuscar
        x: campoDeBusqueda.x + campoDeBusqueda.width-30
        y: campoDeBusqueda.y +2
        z: 10
        width: 20
        height: 20
        source: rutaPorDefecto+"Iconos/derecha.png"
        visible: false
    }

}
