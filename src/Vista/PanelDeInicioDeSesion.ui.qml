import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QUsuario 0.1
Item {
    id: item
    width: 600
    height: 320
    property alias botonCancelar: botonCancelar
    anchors.centerIn: parent
    property int tamanioDeLetra: 12
    property string nombreDeFuente: "DejaVu Sans"
    property bool centinela: false
    property alias campoContrasea: campoContrasea
    property alias cajaDelCampoContrasea: cajaDelCampoContrasea
    property alias botonEntrar: botonEntrar
    property alias etiquetaNotificacion: etiquetaNotificacion
    property alias recuadroGeneral: recuadroGeneral
    property alias etiquetaNoEstaEnLaLista: etiquetaNoEstaEnLaLista
    property alias  mouseAreaNoEstaEnLaLista:  mouseAreaNoEstaEnLaLista
    property alias recuadroDeNombreDeUsuario: recuadroDeNombreDeUsuario
    property alias cajaDelCampoNombreDeUsuario: cajaDelCampoNombreDeUsuario
    property alias campoNombreDeUsuario: campoNombreDeUsuario
    property alias botonContinuar: botonContinuar
    property alias recuadroDeContrasea: recuadroDeContrasea
    property alias etiquetaNombreDeUsuario: etiquetaNombreDeUsuario
    property alias imageUsuario: imageUsuario
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    Rectangle {
        id: recuadroGeneral
        color: "white"
        anchors.fill: parent
        visible: true
        radius: 12
        z: -100
        anchors.rightMargin: 85
        anchors.bottomMargin: 22
        anchors.leftMargin: 27
        anchors.topMargin: 23
        Label {
            id: etiquetaIniciarSesion2
            x: 180
            y: 19
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            font.bold: true
            color: "black"
            text: "Iniciar Sesión"
        }
        Rectangle {
            id: botonImagenUsuario2
            x: 94
            y: 72
            width: 66
            height: 57
            color: "#f5f4f4"
            radius: 7
            z: 2
            border.color: "gray"
            Image {
                id: imageUsuario2
                x: 0
                y: 0
                z: 2
                anchors.bottomMargin: 5
                source: rutaPorDefecto+"Iconos/pordefecto.png"
                anchors.rightMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                anchors.leftMargin: 5
            }
        }
        Label {
            id: etiquetaNombreDeUsuario2
            x: 199
            y: 90
            width: 217
            height: 20
            font.family: nombreDeFuente
            color: "black"
            text: "nombre de usuario"
            font.pointSize: 12
            z: 2
            horizontalAlignment: "AlignJustify"
            wrapMode: Text.WordWrap
        }
        Button {
            id: botonCancelar2
            x: 24
            y: 231
            text: "Cancelar"
        }
        Button {
            id: botonContinuar2
            x: 384
            y: 238
            text: "Continuar"
        }

        Rectangle {
            id: rectangle1
            x: 39
            y: 67
            width: 411
            height: 67
            color: "gray"
            radius: 9
            z: 1
        }

        Label {
            id: etiquetaNoEstaEnLaLista
            x: 64
            y: 196
            width: 199
            height: 22
            color: "gray"
            text: "¿No está en la lista?"
            font.pointSize: 12
            z: 10
            font.family: nombreDeFuente
            MouseArea {
                id: mouseAreaNoEstaEnLaLista
                anchors.fill: parent
                hoverEnabled: true
            }
        }
    }

    Rectangle {
        id: recuadroDeContrasea
        color: "white"
        anchors.fill: parent
        visible: false
        radius: 12
        anchors.rightMargin: 85
        anchors.bottomMargin: 22
        anchors.leftMargin: 27
        anchors.topMargin: 23
        Label {
            id: etiquetaIniciarSesion
            x: 180
            y: 17
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            font.bold: true
            color: "black"
            text: "Iniciar Sesión"
        }
        Rectangle {
            id: botonImagenUsuario
            x: 91
            y: 40
            width: 74
            height: 65
            color: "#f5f4f4"
            radius: 7
            border.color: "gray"
            Image {
                id: imageUsuario
                x: 0
                y: 0
                anchors.bottomMargin: 5
                source: rutaPorDefecto+"Iconos/pordefecto.png"
                anchors.rightMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                anchors.leftMargin: 5
            }
        }
        Label {
            id: etiquetaNombreDeUsuario
            x: 199
            y: 62
            width: 217
            height: 20
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
            color: "black"
            text: "usuario"
            horizontalAlignment: "AlignJustify"
            wrapMode: Text.WordWrap
        }
        Label {
            id: etiquetaContrasea
            x: 91
            y: 117
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
            color: "black"
            text: "Contraseña:"
        }
        TextField {
            id: campoContrasea
            x: 91
            y: 154
            width: 319
            height: 27
            echoMode: 2
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
            placeholderText: "Contraseña"
            property alias cajaDelCampoContrasea: cajaDelCampoContrasea
            Rectangle {
                id: cajaDelCampoContrasea
                anchors.fill: parent
                color: "transparent"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                border.color: "transparent"
            }
        }
        Button {
            id: botonCancelar
            x: 24
            y: 235
            text: "Cancelar"
        }
        Button {
            id: botonEntrar
            x: 384
            y: 235
            text: "Entrar"
        }
        Label {
            id: etiquetaNotificacion
            x: 91
            y: 187
            width: 325
            height: 17
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            color: "red"
            horizontalAlignment: "AlignJustify"
            wrapMode: Text.WordWrap
            visible: false
            text: "La contraseña es incorrecta. Inténtalo de nuevo."
        }
    }

    Rectangle {
        id: recuadroDeNombreDeUsuario
        color: "white"
        anchors.fill: parent
        visible: false
        radius: 12
        z: -100
        anchors.rightMargin: 85
        anchors.bottomMargin: 22
        anchors.leftMargin: 27
        anchors.topMargin: 23
        Label {
            id: etiquetaIniciarSesion3
            x: 180
            y: 18
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            font.bold: true
            color: "black"
            text: "Iniciar Sesión"
        }
        Label {
            id: etiquetaNombreDeUsuario3
            x: 85
            y: 64
            width: 192
            height: 23
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
            color: "black"
            text: "Nombre de usuario:"
        }
        TextField {
            id: campoNombreDeUsuario
            x: 85
            y: 99
            width: 319
            height: 27
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
            placeholderText: "Nombre de usuario"
            property alias cajaDelCampoContrasea: cajaDelCampoContrasea
            Rectangle {
                id: cajaDelCampoNombreDeUsuario
                anchors.fill: parent
                color: "transparent"
                anchors.rightMargin: 0
                anchors.bottomMargin: -1
                anchors.leftMargin: 0
                anchors.topMargin: 1
                border.color: "transparent"
            }
        }
        Button {
            id: botonCancelar3
            x: 24
            y: 231
            text: "Cancelar"
        }
        Button {
            id: botonContinuar
            x: 384
            y: 238
            text: "Continuar"
        }
        Label {
            id: etiquetaDeseaRegistrarse
            x: 85
            y: 140
            width: 199
            height: 22
            color: "gray"
            text: "¿Desea registrarse?"
            z: 10
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra +2
        }
    }
}
