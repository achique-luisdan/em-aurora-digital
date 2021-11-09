import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QUsuario 0.1
Window {
    id: formularioDeAutenticacion
    width: Screen.width
    height: Screen.height
    maximumWidth: Screen.width
    maximumHeight: Screen.height
    color: "black"
    opacity: 0.85
    property int tamanioDeLetra: 12
    property string nombreDeFuente: "Arial"
    property bool centinela: false
    property alias cajaDeOpcionesDePrivilegios: cajaDeOpcionesDePrivilegios
    property alias campoUsuario: campoUsuario
    property alias campoContrasea: campoContrasea
    property alias botonAuteticar: botonAutenticar
    property alias etiquetaNotificacion: etiquetaNotificacion
    Item {
        width: 600
        height: 320
        anchors.centerIn: parent
        Rectangle {
            color: "white"
            anchors.fill: parent
            visible: true
            radius: 12
            Label {
                id: etiquetaAutenticacion
                x: 48
                y: 29
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                font.bold: true
                color: "black"
                text: "Se necesita autenticación"
            }
            Label {
                id: etiquetaRestriccion
                x: 48
                y: 61
                width: 511
                height: 20
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                color: "black"
                text: "Para cambiar los datos de las unidades curriculares debe autenticarse. Si desea mayor información consulte la sección de Usuarios y Privilegios del motor de ayuda."
                horizontalAlignment: "AlignJustify"
                wrapMode: Text.WordWrap
            }
            Label {
                id: etiquetaPrivilegios
                x: 99
                y: 126
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                color: "black"
                text: "Privilegios:"
            }
            Label {
                id: etiquetaUsuario
                x: 99
                y: 166
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                color: "black"
                text: "Usuario:"
            }
            Label {
                id: etiquetaContrasea
                x: 99
                y: 207
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                color: "black"
                text: "Contraseña:"
            }
            ComboBox {
                id: cajaDeOpcionesDePrivilegios
                x: 191
                y: 126
                width: 320
                height: 29
                activeFocusOnPress: false
                property alias cajaDelCampoCajaDeOpcionesDePrivilegios: cajaDelCampoCajaDeOpcionesDePrivilegios
                style: ComboBoxStyle {
                    font: nombreDeFuente
                }
                model: ListModel {
                    ListElement { text: "Bibliotecario" }
                    ListElement { text: "Editor" }
                    ListElement { text: "Usuario común" }
                }
                Rectangle {
                    id: cajaDelCampoCajaDeOpcionesDePrivilegios
                    anchors.fill: parent
                    color: "transparent"
                    border.color: "transparent"
                }
            }
            TextField {
                id: campoUsuario
                x: 192
                y: 166
                width: 319
                height: 27
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                placeholderText: "Usuario"
                property alias cajaDelCampoUsuario: cajaDelCampoUsuario
                Rectangle {
                    id: cajaDelCampoUsuario
                    anchors.fill: parent
                    color: "transparent"
                    border.color: "transparent"
                }
            }
            TextField {
                id: campoContrasea
                x: 192
                y: 206
                width: 319
                height: 27
                echoMode: 2
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                placeholderText: "Contraseña"
                property alias cajaDelCampoContrasea: cajaDelCampoContrasea
                Rectangle {
                    id: cajaDelCampoContrasea
                    anchors.fill: parent
                    color: "transparent"
                    border.color: "transparent"
                }
            }
            Button {
                id: botonCancelar
                x: 39
                y: 275
                text: "Cancelar"
                onClicked: {
                    formularioDeAutenticacion.close()
                }
            }
            Button {
                id: botonAutenticar
                x: 479
                y: 275
                text: "Autenticar"
            }
            Label {
                id: etiquetaNotificacion
                x: 200
                y: 245
                font.family: nombreDeFuente
                font.pointSize: tamanioDeLetra
                color: "red"
                horizontalAlignment: "AlignJustify"
                wrapMode: Text.WordWrap
                visible: false
                text: "La contraseña es incorrecta. Inténtalo de nuevo."
            }
        }
    }
    function iniciarAutenticacion(){
        campoUsuario.text = ""
        campoContrasea.text = ""
        while (cajaDeOpcionesDePrivilegios.currentIndex > 0){ cajaDeOpcionesDePrivilegios.__selectNextItem() }
        formularioDeAutenticacion.visible = true
    }
}
