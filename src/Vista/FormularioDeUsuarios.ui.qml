import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2
import QtQuick.Dialogs 1.2
Item {
    width: 600
    height: 800
    property int tamanioDeLetra: 12
    property string nombreDeFuente: "Arial"
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    property alias botonImagenUsuario: botonImagenUsuario
    property alias mouseAreaBotonImagenUsuario: mouseAreaBotonImagenUsuario
    property alias imagenUsuario: imagenUsuario
    property alias campoObligatorioNombreDeUsuario: campoObligatorioNombreDeUsuario
    property alias etiquetaNombreDeUsuario: etiquetaNombreDeUsuario
    property alias campoNombreDeUsuario: campoNombreDeUsuario
    property alias campoObligatorioNombreCompleto: campoObligatorioNombreCompleto
    property alias etiquetaNombreCompleto: etiquetaNombreCompleto
    property alias campoNombreCompleto: campoNombreCompleto
    property alias campoObligatorioPrivilegios: campoObligatorioPrivilegios
    property alias etiquetaPrivilegios: etiquetaPrivilegios
    property alias cajaDeOpcionesDePrivilegio: cajaDeOpcionesDePrivilegio
    property alias etiquetaSolicitud: etiquetaSolicitud
    property alias campoMensaje: campoMensaje
    property alias etiquetaAsunto: etiquetaAsunto
    property alias campoAsunto: campoAsunto
    property alias etiquetaContrase1: etiquetaContrase1
    property alias seleccionEstablecerContraseaDespues: seleccionEstablecerContraseaDespues
    property alias seleccionEstablecerContraseaAhora: seleccionEstablecerContraseaAhora
    property alias campoObligatorioContrasea: campoObligatorioContrasea
    property alias etiquetaContrase2: etiquetaContrase2
    property alias campoContrasea: campoContrasea
    property alias etiquetaAyudaDeSeguridad: etiquetaAyudaDeSeguridad
    property alias barraDeSeguridad: barraDeSeguridad
    property alias campoObligatorioVerificar: campoObligatorioVerificar
    property alias etiquetaVerificar: etiquetaVerificar
    property alias campoVerificar: campoVerificar
    property alias imageVerificar: imageVerificar
    property alias botonAceptar: botonAceptar
    property alias etiquetaAceptar: etiquetaAceptar
    property alias botonCancelar: botonCancelar
    property alias etiquetaCancelar: etiquetaCancelar
    property alias seleccionSolicitudEditor: seleccionSolicitudEditor
    property alias seleccionSolicitudBibliotecario: seleccionSolicitudBibliotecario
    property alias seleccionSolicitudLector: seleccionSolicitudLector
    property alias mouseAreaBotonAceptar: mouseAreaBotonAceptar
    property alias agregarImagenDeUsuario: agregarImagenDeUsuario
    Rectangle {
        id: botonImagenUsuario
        x: 232
        y: 19
        width: 100
        height: 100
        color: "#f5f4f4"
        radius: 4
        Image {
            id: imagenUsuario
            x: 0
            y: 0
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            anchors.fill: parent
            source: rutaPorDefecto+"Iconos/fotodeperfil-pordefecto.svg"
        }
        MouseArea {
            id: mouseAreaBotonImagenUsuario
            anchors.fill: parent
            hoverEnabled: true
        }
    }

    Label {
        id: campoObligatorioNombreDeUsuario
        x: 52
        y: 133
        text: "<b>*</b>"
        color: "red"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }
    Label {
        id: etiquetaNombreDeUsuario
        x: 62
        y: 137
        width: 163
        height: 19
        text: "Nombre de usuario:"
        color: "black"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    TextField {
        id: campoNombreDeUsuario
        x: 231
        y: 134
        width: 181
        height: 25
        placeholderText: "Nombre de usuario"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    Label {
        id: campoObligatorioNombreCompleto
        x: 52
        y: 174
        color: "#ff0000"
        text: "<b>*</b>"
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
    }

    Label {
        id: etiquetaNombreCompleto
        x: 62
        y: 178
        width: 155
        height: 19
        color: "#000000"
        text: "Nombre completo:"
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
    }

    TextField {
        id: campoNombreCompleto
        x: 232
        y: 174
        width: 338
        height: 26
        placeholderText: "Nombre completo"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    Label {
        id: campoObligatorioPrivilegios
        x: 51
        y: 209
        color: "#ff0000"
        text: "<b>*</b>"
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
    }

    Label {
        id: etiquetaPrivilegios
        x: 61
        y: 213
        width: 92
        height: 19
        color: "#000000"
        text: "Privilegios:"
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
    }
    
    ComboBox {
        id: cajaDeOpcionesDePrivilegio
        x: 232
        y: 213
        width: 338
        height: 27
        model: ["Bibliotecario", "Editor", "Lector"]
    }
    
    Label {
        id: etiquetaSolicitud
        x: 61
        y: 251
        width: 92
        height: 19
        color: "#000000"
        text: "Solicitud"
        font.bold: true
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
    }

    TextArea {
        id: campoMensaje
        x: 51
        y: 365
        width: 519
        height: 121
        z: -10
        font.pointSize: tamanioDeLetra
        font.family: nombreDeFuente
        style: TextAreaStyle {
            padding.top:  30
            padding.left: 5
            padding.right: 5
        }
    }

    Label {
        id: etiquetaAsunto
        x: 61
        y: 372
        width: 67
        height: 19
        text: "Asunto:"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    Label {
        id: campoAsunto
        x: 129
        y: 372
        width: 427
        height: 20
        text: "¿Por qué desea ser un editor?"
        font.family: nombreDeFuente
        font.pointSize: 12
    }

    Rectangle {
        id: linea
        x: 53
        y: 367
        z: -1
        width: 516
        height: 26
        color: "#f5f4f4"
    }


    Label {
        id: etiquetaContrase1
        x: 61
        y: 494
        width: 120
        height: 19
        color: "#000000"
        text: "Contraseña"
        font.family: nombreDeFuente
        font.bold: true
        font.pointSize: tamanioDeLetra
    }

    CheckBox {
        id: seleccionEstablecerContraseaDespues
        x: 55
        y: 519
        width: 509
        height: 28
        Label {
            x: 27
            y: 0
            width: 482
            height: 19
            text: "Permitir al usuario establecer una contraseña en el siquiente inicio de sesión."
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            wrapMode: Text.WordWrap
        }
    }

    CheckBox {
        id: seleccionEstablecerContraseaAhora
        x: 55
        y: 568
        width: 244
        height: 28
        Label {
            anchors.centerIn: parent
            text: "Establecer una contraseña ahora."
            anchors.verticalCenterOffset: -5
            anchors.horizontalCenterOffset: 23
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
        }
    }

    Label {
        id: campoObligatorioContrasea
        x: 51
        y: 603
        color: "#ff0000"
        text: "<b>*</b>"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    Label {
        id: etiquetaContrase2
        x: 61
        y: 607
        width: 92
        height: 19
        color: "#000000"
        text: "Contaseña:"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    TextField {
        id: campoContrasea
        x: 159
        y: 604
        width: 405
        height: 26
        placeholderText: "Contraseña"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
        echoMode: TextInput.Password
    }

    Label {
        id: etiquetaAyudaDeSeguridad
        x: 159
        y: 660
        width: 405
        height: 37
        color: "#000000"
        text: "Mezcle letras mayusculas y minisculas, use números y caracteres especiales. "
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra-2
        wrapMode: Text.WordWrap
    }
    
    ProgressBar {
        id: barraDeSeguridad
        x: 159
        y: 636
        width: 405
        height: 22
        value: 0.1
    }
    
    Label {
        id: campoObligatorioVerificar
        x: 51
        y: 702
        color: "#ff0000"
        text: "<b>*</b>"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }
    
    Label {
        id: etiquetaVerificar
        x: 61
        y: 706
        width: 92
        height: 19
        color: "#000000"
        text: "Verificar:"
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    TextField {
        id: campoVerificar
        x: 159
        y: 703
        width: 405
        height: 26
        placeholderText: "Contraseña"
        echoMode: TextInput.Password
        font.family: nombreDeFuente
        font.pointSize: tamanioDeLetra
    }

    Image {
        id: imageVerificar
        x: 535
        y: 705
        width: 24
        height: 23
        z: 100
    }

    Rectangle {
        id: botonAceptar
        x: 470
        y: 749
        width: 100
        height: 37
        color: "#f5f4f4"
        Text {
            id: etiquetaAceptar
            anchors.centerIn: parent
            text: "Aceptar"
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
        }
        MouseArea {
            id: mouseAreaBotonAceptar
            anchors.fill: parent
            hoverEnabled: true
        }
    }

    Rectangle {
        id: botonCancelar
        x: 20
        y: 749
        width: 100
        height: 37
        color: "#f5f4f4"
        Text {
            id: etiquetaCancelar
            text: "Cancelar"
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
            anchors.centerIn: parent
        }
    }

    CheckBox {
        id: seleccionSolicitudEditor
        x: 55
        y: 283
        width: 244
        height: 22
        Label {
            y: -10
            anchors.centerIn: parent
            text: "Desea ser Editor."
            anchors.verticalCenterOffset: -1
            anchors.horizontalCenterOffset: -23
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
        }
    }

    CheckBox {
        id: seleccionSolicitudBibliotecario
        x: 55
        y: 305
        width: 244
        height: 20
        Label {
            anchors.centerIn: parent
            text: "Desea aspirar a ser Bibliotecario."
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenterOffset: 33
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
        }
    }

    CheckBox {
        id: seleccionSolicitudLector
        x: 55
        y: 331
        width: 244
        height: 28
        Label {
            anchors.centerIn: parent
            text: "Solo desea consultar el contenido."
            anchors.verticalCenterOffset: -5
            anchors.horizontalCenterOffset: 34
            font.family: nombreDeFuente
            font.pointSize: tamanioDeLetra
        }
    }

    Rectangle {
        id: fondo
        anchors.fill:   parent
        z: -200
        gradient: Gradient {
            GradientStop { position: 0.03; color: "white" }
            GradientStop { position: 0.04; color: "white" }
            GradientStop { position: 0.07; color: "#f5f4f4" }
        }
    }
    FileDialog {
        id: agregarImagenDeUsuario
        title: "Agregar foto de perfil..."
    }
}
