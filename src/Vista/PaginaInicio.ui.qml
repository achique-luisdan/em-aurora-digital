import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "qrc:/Delegado/" as Delegado

Item {
    id: item
    width: 1200
    height: 800
    anchors.fill: parent
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias botones: botones
    property alias botonP1: botonP1
    property alias fondoBotonP1: fondoBotonP1
    property alias etiquetaBotonP1: etiquetaBotonP1
    property alias botonCerrarP1: botonCerrarP1
    property alias etiquetaBotonCerrarP1: etiquetaBotonCerrarP1
    property alias mouseAreaBotonCerrarP1: mouseAreaBotonCerrarP1
    property alias separadorP1: separadorP1
    property alias botonP2: botonP2
    property alias fondoBotonP2: fondoBotonP2
    property alias etiquetaBotonP2: etiquetaBotonP2
    property alias botonCerrarP2: botonCerrarP2
    property alias etiquetaBotonCerrarP2: etiquetaBotonCerrarP2
    property alias mouseAreaBotonCerrarP2: mouseAreaBotonCerrarP2
    property alias separadorP2: separadorP2
    property alias botonP3: botonP3
    property alias fondoBotonP3: fondoBotonP3
    property alias etiquetaBotonP3: etiquetaBotonP3
    property alias botonCerrarP3: botonCerrarP3
    property alias etiquetaBotonCerrarP3: etiquetaBotonCerrarP3
    property alias mouseAreaBotonCerrarP3: mouseAreaBotonCerrarP3
    property alias separadorP3: separadorP3
    property alias barraDeNavegacion: barraDeNavegacion
    property alias campoDeDireccion: campoDeDireccion
    property alias botonRetroceder: botonRetroceder
    property alias imagenRetroceder: imagenRetroceder
    property alias campoDeBusqueda: campoDeBusqueda
    property alias imagenLupa: imagenLupa
    property alias botonMarcador: botonMarcador
    property alias botonHogar: botonHogar
    property alias imagenHogar: imagenHogar
    property alias botonPreferencias: botonPreferencias
    property alias imagenPreferencias: imagenPreferencias
    property alias botonUsuarios: botonUsuarios
    property alias imagenUsuarios: imagenUsuarios
    property alias popupPrimario: popupPrimario
    property alias mouseAreaBotonIniciarSeccion: mouseAreaBotonIniciarSeccion
    property alias mouseAreaBotonRegistrar: mouseAreaBotonRegistrar
    property alias mouseAreaBotonConfigurar: mouseAreaBotonConfigurar
    property alias mouseAreaBotonHogar2: mouseAreaBotonHogar2
    property alias mouseAreaBotonMensaje: mouseAreaBotonMensaje

    property alias popupSecundario: popupSecundario
    property alias mouseAreaBotonUsuario: mouseAreaBotonUsuario
    property alias subMenuDeUsuario: subMenuDeUsuario
    property alias menuUsuario: menuUsuario
    property alias botonBandeja: botonBandeja

    property alias mouseAreaBotonBandeja: mouseAreaBotonBandeja
    property alias mouseAreaBotonMensajePersonal: mouseAreaBotonMensajePersonal
    property alias mouseAreaBotonOpciones: mouseAreaBotonOpciones
    property alias mouseAreaBotonCerrarSeccion: mouseAreaBotonCerrarSeccion
    property alias mouseAreaBotonMensaje2: mouseAreaBotonMensaje2
    property alias etiquetaUsuarioInicioSeccion: etiquetaUsuarioInicioSeccion
    property alias imagenDeUsuarioInicioSeccion: imagenDeUsuarioInicioSeccion
    property alias paginas: paginas
    property alias p1: p1
    property alias p2: p2
    property alias p3: p3
    property alias activadaP1: activadaP1
    property alias activadaP2: activadaP2
    property alias activadaP3: activadaP3
    property int paginaActual: paginas.currentIndex +1

    property int tamanioDeLetra: 12
    property string nombreDeFuente: "DejaVu Sans"

    property alias paginaDeUnidadesCurriculares: paginaDeUnidadesCurriculares
    property alias paginaDeUnidadesDidacticas: paginaDeUnidadesDidacticas
    property alias paginaDeArticulos: paginaDeArticulos
    property alias consultarArticulo: consultarArticulo
    property bool aux: paginaDeUnidadesDidacticas.continuar

    property alias paginaDeBandeja: paginaDeBandeja

    TabBar {
        id: botones
        currentIndex: paginas.currentIndex
        height: 35
        background: Rectangle {
            id: fondoBotones
            color: "transparent"
        }

        TabButton {
            id: botonP1
            x: 4
            y: 0
            width: 159
            height: 35
            hoverEnabled: true
            background: Rectangle {
                id: fondoBotonP1
                anchors.fill: parent
                color: botonP1.checked ? "white" : "transparent"
                border.color: botonP1.checked ? "#a09f9f" : "transparent"
                radius: 7
                layer.enabled: true
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 10.0
                    samples: 24
                    source: fondoBotonP1
                    color: "gray"
                }

            }

            Label {
                id: etiquetaBotonP1
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -3
                anchors.horizontalCenterOffset: -10
                text: "Página Inicio"
                color: "black"
                font.family: nombreDeFuente
                font.pointSize: 12
            }

            Rectangle {
                id: botonCerrarP1
                anchors.fill: parent
                anchors.topMargin: 6
                anchors.bottomMargin: 14
                anchors.leftMargin: 140
                anchors.rightMargin: 5
                color: "transparent"
                radius: 4
                Label {
                    id: etiquetaBotonCerrarP1
                    anchors.centerIn: parent
                    text: "<b>x<\b>"
                    color: "gray"
                }

                MouseArea {
                    id: mouseAreaBotonCerrarP1
                    anchors.fill: parent
                    hoverEnabled: true
                }

            }

            Rectangle {
                id: separadorP1
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 10
                anchors.leftMargin: 158
                color: botonP1.checked == false && botonP2.checked == false ?  "#a09f9f" : "transparent"
            }

        }

        TabButton {
            id: botonP2
            width: 33
            height: 35
            background: Rectangle {
                id: fondoBotonP2
                anchors.fill: parent
                color: botonP2.checked ? "white" : "transparent"
                border.color: botonP2.checked ? "#a09f9f" : "transparent"
                radius: 7
                layer.enabled: true
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 10.0
                    samples: 24
                    source: fondoBotonP2
                    color: "gray"
                }

            }

            Label {
                id: etiquetaBotonP2
                anchors.centerIn: parent
                text: " + "
                anchors.verticalCenterOffset: -3
                anchors.horizontalCenterOffset: 0
                color: "black"
                font.family: nombreDeFuente
                font.pointSize: 12
            }

            Rectangle {
                id: botonCerrarP2
                anchors.fill: parent
                anchors.topMargin: 6
                anchors.bottomMargin: 14
                anchors.leftMargin: 140
                anchors.rightMargin: 5
                color: "transparent"
                radius: 4
                visible: activadaP2.text == "Activada" ? true : false

                Label {
                    id: etiquetaBotonCerrarP2
                    anchors.centerIn: parent
                    text: "<b>x<\b>"
                    color: "gray"
                }

                MouseArea {
                    id: mouseAreaBotonCerrarP2
                    anchors.fill: parent
                    hoverEnabled: true
                }

            }

            Rectangle {
                id: separadorP2
                anchors.fill: parent
                anchors.topMargin: 6
                anchors.bottomMargin: 14
                anchors.leftMargin: 158
                color: "#a09f9f"
            }

        }

        TabButton {
            id: botonP3
            width: 33
            height: 35
            background: Rectangle {
                id: fondoBotonP3
                anchors.fill: parent
                color: botonP3.checked ? "white" : "transparent"
                border.color: botonP3.checked ? "#a09f9f" : "transparent"
                radius: 2
                layer.enabled: true
                layer.effect: DropShadow {
                    horizontalOffset: 1
                    verticalOffset: 1
                    radius: 10.0
                    samples: 24
                    source: fondoBotonP3
                    color: "gray"
                }

            }

            Label {
                id: etiquetaBotonP3
                anchors.centerIn: parent
                text: " + "
                anchors.verticalCenterOffset: -4
                anchors.horizontalCenterOffset: 0
                color: "black"
                font.family: nombreDeFuente
                font.pointSize: 12
            }

            Rectangle {
                id: botonCerrarP3
                anchors.fill: parent
                anchors.topMargin: 6
                anchors.bottomMargin: 14
                anchors.leftMargin: 140
                anchors.rightMargin: 5
                color: "transparent"
                visible: activadaP3.text == "Activada" ? true : false
                radius: 3
                Label {
                    id: etiquetaBotonCerrarP3
                    anchors.centerIn: parent
                    text: "<b>x<\b>"
                    color: "gray"
                }

                MouseArea {
                    id: mouseAreaBotonCerrarP3
                    anchors.fill: parent
                    hoverEnabled: true
                }

            }


            Rectangle {
                id: separadorP3
                anchors.fill: parent
                anchors.topMargin: 8
                anchors.bottomMargin: 10
                anchors.leftMargin: 158
                color: "#a09f9f"
            }

            visible: false

        }

    }


    Rectangle {
        id: barraDeNavegacion
        y: 28
        width: item.width
        height: 42
        border.color: "#a09f9f"
        gradient: Gradient {
            GradientStop { position: 0.03; color: "white" }
            GradientStop { position: 0.04; color: "white" }
            GradientStop { position: 0.07; color: "#f5f4f4" }
        }
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 1
            verticalOffset: 1
            radius: 10.0
            samples: 30
            source: barraDeNavegacion
            color: "black"

        }

        TextField {
            id: campoDeDireccion
            anchors.fill: parent
            anchors.topMargin: 9
            anchors.bottomMargin: 9
            anchors.leftMargin: 50
            anchors.rightMargin: barraDeNavegacion.width > 1210 ? 480 : 390
            cursorPosition: 20
            font.family: nombreDeFuente
            font.pointSize: 12
            style: TextFieldStyle{
                padding.left: 30
            }
            text: "Página Inicio"

        }

        Button {
            id: botonRetroceder
            x: campoDeDireccion.x -17
            y: campoDeDireccion.y -5
            width: 33
            height: 33
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100; implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#a09f9f"
                    radius: 100
                    gradient: Gradient {
                        GradientStop { position: 0.05 ; color: control.pressed ? "#eeebeb" : "white" }
                        GradientStop { position: 0.10 ; color: control.pressed ? "#eeebeb" : "#f5f4f4" }
                    }

                }

            }

            Image {
                id: imagenRetroceder
                anchors.fill: parent
                anchors.topMargin: 6
                anchors.bottomMargin: 6
                anchors.leftMargin: 6
                anchors.rightMargin: 6
                source: rutaPorDefecto+"Iconos/derecha.png"
                visible: true
                rotation: 180
            }

        }

        TextField {
            id: campoDeBusqueda
            anchors.fill: parent
            anchors.topMargin: 8
            anchors.bottomMargin: 8
            anchors.leftMargin: 820
            anchors.rightMargin: 165
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

        Rectangle {
            id: lineaSeparadora
            x: campoDeBusqueda.x + campoDeBusqueda.width -35
            y: campoDeBusqueda.y +4
            z: 10
            width: 1
            height: 18
            color: "lightGray"
            visible: false
        }

        Button {
            id: botonMarcador
            x: campoDeBusqueda.x + campoDeBusqueda.width +10
            y: campoDeBusqueda.y +2
            width: 25
            height: 25
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100; implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "transparent"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "transparent" : "transparent" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "transparent" }
                    }

                }

            }

            Image {
                id:imagenMarcador
                x: 1
                y: 1
                width: botonMarcador.width -4
                height: botonMarcador.height -4
                source: rutaPorDefecto+"Iconos/marcador.png"
                visible: true
            }

        }

        Button {
            id: botonHogar
            x: campoDeBusqueda.x + campoDeBusqueda.width +45
            y: campoDeBusqueda.y
            width: 25
            height: 25
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100; implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "transparent"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "transparent" : "transparent" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "transparent" }
                    }

                }

            }

            Image {
                id: imagenHogar
                x: 1
                y: 1
                width: botonHogar.width -4
                height: botonHogar.height -4
                source: rutaPorDefecto+"Iconos/casa.png"
                visible: true
            }
        }

        Button {
            id: botonPreferencias
            x: campoDeBusqueda.x + campoDeBusqueda.width +85
            y: campoDeBusqueda.y +2
            width: 25
            height: 25
            style: ButtonStyle{
                background: Rectangle{
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "transparent"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "transparent" : "transparent" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "transparent" }
                    }

                }

            }

            Image {
                id: imagenPreferencias
                x: 1
                y: 1
                width: botonPreferencias.width -4
                height: botonPreferencias.height -4
                source: rutaPorDefecto+"Iconos/selector.png"
                visible: true
            }

        }

        Button {
            id: botonUsuarios
            x: campoDeBusqueda.x + campoDeBusqueda.width +120
            y: campoDeBusqueda.y +2
            width: 25
            height: 25
            style: ButtonStyle{
                background: Rectangle{
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "transparent"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "transparent" : "transparent" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "transparent" }
                    }

                }

            }

            Image {
                id: imagenUsuarios
                x: 1
                y: 1
                width: botonUsuarios.width
                height: botonUsuarios.height -2
                source: rutaPorDefecto+"Iconos/usuarios3.png"
                visible: true
            }

        }

    }

    Rectangle {
        id: popupPrimario
        x: botonUsuarios.x -270
        y: botonUsuarios.y + 75
        width: 300
        height: 220
        color: "white"
        visible: false
        radius: 10
        opacity: 0.90

        border.color: "gray"
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 1
            verticalOffset: 1
            radius: 30.0
            samples: 24
            source: popupPrimario
            color: "black"
        }

        ColumnLayout {
            anchors.rightMargin: 7
            anchors.topMargin: 14
            anchors.bottomMargin: 50
            anchors.fill: parent
            anchors.leftMargin: 13
            spacing: 0
            Rectangle {
                width: popupPrimario.width -40
                height: 40
                color: "#ffffff"
                Image {
                    id: imagenUsuario
                    x: 10
                    y: 2
                    width: 34
                    height: 34
                    source: rutaPorDefecto+"Iconos/usuarios3.png"
                    visible: true
                }
                Label {
                    id: etiquetaUsuario1
                    text: "Usuario"
                    font.family: nombreDeFuente
                    font.pointSize: tamanioDeLetra
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.leftMargin: 55
                }
            }

            Rectangle {
                id: botonIniciarSeccion
                y: 60
                width: popupPrimario.width -40
                height: 40
                color: mouseAreaBotonIniciarSeccion.pressed ? "#3b0c42" : "transparent"
                Label {
                    text: "Iniciar sesión..."
                    font.family: nombreDeFuente
                    font.pointSize: tamanioDeLetra
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.leftMargin: 30
                    color: mouseAreaBotonIniciarSeccion.pressed ? "white" : "black"
                }
                MouseArea {
                    id: mouseAreaBotonIniciarSeccion
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: botonRegistrar
                y: 108
                width: popupPrimario.width -40
                height: 40
                color: mouseAreaBotonRegistrar.pressed ? "#3b0c42" : "transparent"

                Label {
                    text: "Registrar..."
                    font.family: nombreDeFuente
                    font.pointSize: tamanioDeLetra
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.leftMargin: 30
                    color: mouseAreaBotonRegistrar.pressed ? "white" : "black"

                }

                MouseArea {
                    id: mouseAreaBotonRegistrar
                    anchors.fill: parent
                }
            }

            Rectangle {
                y: 150
                width: popupPrimario.width-10
                height: 70
                color: "transparent"
                Rectangle {
                    x: 8
                    y: 8
                    width: popupPrimario.width-40
                    height: 1
                    color: "gray"
                }

                Rectangle {
                    id: botonConfigurar
                    x: 15
                    y: 20
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenConfiguar
                        width: 27
                        height: 27
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    MouseArea {
                        id: mouseAreaBotonConfigurar
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: botonHogar2
                    x: 115
                    y: 20
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenHogar2
                        width: 27
                        height: 27
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/casa.png"
                        visible: true
                    }
                    gradient: Gradient {
                        GradientStop { position: 0.05 ; color: mouseAreaBotonHogar2.pressed ? "#eeebeb" : "white" }
                        GradientStop { position: 0.10 ; color: mouseAreaBotonHogar2.pressed ? "#eeebeb" : "#f5f4f4" }
                    }
                    MouseArea {
                        id: mouseAreaBotonHogar2
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: botonMensaje
                    x: 220
                    y: 20
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenMensaje
                        width: 27
                        height: 17
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/mensaje2.png"
                        visible: true
                    }

                    MouseArea {
                        id: mouseAreaBotonMensaje
                        anchors.fill: parent
                    }
                }

            }
        }
    }

    Rectangle {
        id: popupSecundario
        x: botonUsuarios.x -275
        y: botonUsuarios.y + 75
        width: 300
        height: 370
        focus: true
        visible: false
        color: "white"
        radius: 20
        border.color: "gray"
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 1
            verticalOffset: 1
            radius: 30.0
            samples: 24
            source: popupSecundario
            color: "black"
        }

        ColumnLayout {
            id: menuUsuario
            x: 13
            y: 10
            width: 271
            height: 350
            spacing: 0
            Rectangle {
                x: 10
                width: 270
                height: 40
                color: "white"
                Image {
                    id: imagenUsuario2
                    x: 10
                    y: 2
                    width: 34
                    height: 34
                    source: rutaPorDefecto+"Iconos/usuarios3.png"
                    visible: true
                }
                Label {
                    text: "Usuario"
                    anchors.rightMargin: 5
                    font.family: nombreDeFuente
                    font.pointSize: tamanioDeLetra
                    anchors.fill: parent
                    anchors.topMargin: 10
                    anchors.leftMargin: 55

                }
            }

            Rectangle {
                x: 10
                width: 270
                height: 40
                color: mouseAreaBotonUsuario.pressed ? "orange" : "transparent"
                Image {
                    id: imagenDeUsuarioInicioSeccion
                    x: 50
                    y: 2
                    width: 34
                    height: 34
                    source: rutaPorDefecto+"Iconos/usuarios3.png"
                    visible: true
                }
                Label {
                    id: etiquetaUsuarioInicioSeccion
                    text: "usuario"
                    anchors.rightMargin: 20
                    anchors.bottomMargin: 7
                    font.family: nombreDeFuente
                    font.pointSize: tamanioDeLetra
                    anchors.fill: parent
                    anchors.topMargin: 3
                    anchors.leftMargin: 90

                }
                MouseArea {
                    id: mouseAreaBotonUsuario
                    anchors.fill: parent
                }
                Rectangle {
                    y: 39
                    width: 270
                    x: 0
                    height: 1
                    color: "gray"
                }
            }

            ColumnLayout {
                id: subMenuDeUsuario
                x: 13
                y: 10
                width: 271
                height: 200
                spacing: 0

                Rectangle {
                    x: 1
                    width: 270
                    height: 40
                    color: "#f5f4f4"
                    Image {
                        id: imagenEstado
                        x: 10
                        y: 2
                        width: 34
                        height: 34
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    ComboBox {
                        anchors.rightMargin: 20
                        anchors.fill: parent
                        anchors.topMargin: 5
                        anchors.bottomMargin: 5
                        anchors.leftMargin: 55
                        model:["Disponible", "Ocupado", "Fuera"]
                    }
                }

                Rectangle {
                    id: botonBandeja
                    x: 15
                    y: 124
                    width: 270
                    height: 40
                    color: mouseAreaBotonBandeja.pressed ? "#3b0c42" : "#f5f4f4"
                    Image {
                        id: imagenBandeja
                        x: 10
                        y: 2
                        width: 34
                        height: 34
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    Label {
                        text: "Bandeja"
                        anchors.rightMargin: 20
                        font.family: nombreDeFuente
                        font.pointSize: tamanioDeLetra
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.leftMargin: 55

                    }
                    MouseArea {
                        id: mouseAreaBotonBandeja
                        anchors.fill: parent
                        hoverEnabled: true
                    }

                }
                Rectangle {
                    x: 15
                    y: 166
                    width: 270
                    height: 40
                    color: mouseAreaBotonMensajePersonal.pressed ? "orange" : "#f5f4f4"
                    Image {
                        id: imagenMensajePersonal
                        x: 10
                        y: 2
                        width: 34
                        height: 34
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    Label {
                        text: "Mensaje"
                        anchors.rightMargin: 20
                        font.family: nombreDeFuente
                        font.pointSize: tamanioDeLetra
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.leftMargin: 55

                    }
                    MouseArea{
                        id: mouseAreaBotonMensajePersonal
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    x: 15
                    y: 208
                    width: 270
                    height: 40
                    color: mouseAreaBotonOpciones.pressed ? "#3b0c42" : "#f5f4f4"
                    Image {
                        id: imagenOpciones
                        x: 10
                        y: 2
                        width: 34
                        height: 34
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    Label {
                        text: "Opciones..."
                        anchors.rightMargin: 20
                        font.family: nombreDeFuente
                        font.pointSize: tamanioDeLetra
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.leftMargin: 55

                    }
                    MouseArea {
                        id: mouseAreaBotonOpciones
                        anchors.fill: parent
                    }

                }


                Rectangle {
                    x: 15
                    y: 250
                    width: 270
                    height: 40
                    color: mouseAreaBotonCerrarSeccion.pressed ? "#3b0c42" : "#f5f4f4"

                    Image {
                        id: imagenCerrarSesion
                        x: 10
                        y: 2
                        width: 34
                        height: 34
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }
                    Label {
                        width: 220
                        text: "Cerrar sesión"
                        anchors.rightMargin: 20
                        font.family: nombreDeFuente
                        font.pointSize: tamanioDeLetra
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.leftMargin: 55

                    }
                    MouseArea {
                        id: mouseAreaBotonCerrarSeccion
                        anchors.fill: parent
                    }
                }
            }
            Rectangle {
                width: popupSecundario.width-10
                height: 70
                color: "transparent"
                Rectangle {
                    x: 0
                    y: 0
                    width: 270
                    height: 1
                    color: "gray"
                }

                Rectangle {
                    id: botonConfigurar2
                    x: 20
                    y: 16
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenConfiguar2
                        width: 27
                        height: 27
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/usuarios3.png"
                        visible: true
                    }

                    MouseArea {
                        id: mouseAreaBotonConfigurar2
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: botonHogar3
                    x: 125
                    y: 16
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenHogar3
                        width: 27
                        height: 27
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/casa.png"
                        visible: true
                    }

                    MouseArea {
                        id: mouseAreaBotonHogar3
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    id: botonMensaje2
                    x: 230
                    y: 16
                    width: 40
                    height: 40
                    color: "transparent"
                    border.color: "gray"
                    radius: 100
                    Image {
                        id: imagenMensaje2
                        width: 27
                        height: 17
                        anchors.centerIn: parent
                        source: rutaPorDefecto+"Iconos/mensaje2.png"
                        visible: true
                    }

                    MouseArea {
                        id: mouseAreaBotonMensaje2
                        anchors.fill: parent
                    }
                }
            }
        }

    }


    SwipeView {
        id: paginas
        x: 0
        y: 68
        z: -5
        width: item.width
        height: item.height -76
        currentIndex: botones.currentIndex
        Page {
            id: p1
            x: 0
            y: 0
            width: 1200
            height: 731
            Text {
                id: activadaP1
                anchors.centerIn: parent
                text: "Activada"
                color: activadaP1.text == "Activada" ? "blue" : "red"
                font.pointSize: 20
            }
            Item {
                id: item1
                anchors.fill: parent
                property bool aux: paginaDeUnidadesDidacticas.continuar
                Rectangle {
                    anchors.fill: parent
                    visible: true
                    Delegado.PaginaDeUnidadesCurriculares{
                        id: paginaDeUnidadesCurriculares
                        visible: true
                    }
                }
                Rectangle {
                    anchors.fill: parent
                    visible: paginaDeUnidadesCurriculares.continuar
                    Delegado.PaginaDeUnidadesDidacticas   {
                        id: paginaDeUnidadesDidacticas
                        seleccionUnidadCurricular: paginaDeUnidadesCurriculares.seleccion
                        visible: true
                    }
                }
                Rectangle {
                    anchors.fill: parent
                    visible: paginaDeUnidadesDidacticas.continuar
                    Delegado.PaginaDeArticulos  {
                        id: paginaDeArticulos
                        seleccionUnidadCurricular: paginaDeUnidadesDidacticas.seleccionUnidadCurricular
                        seleccionUnidadDidactica: paginaDeUnidadesDidacticas.seleccionUnidadDidactica
                        visible: true
                    }
                }
                Rectangle {
                    anchors.fill: parent
                    visible: paginaDeArticulos.continuar
                    Delegado.ConsultarArticulo {
                        id: consultarArticulo
                        seleccionArticulo: paginaDeArticulos.seleccionArticulo
                        visible:  true
                    }
                }
            }
        }


        Page {
            id: p2
            x: 1199
            y: 0
            visible: activadaP2.text == "Activada" ? true : false

            Text {
                id: activadaP2
                anchors.centerIn: parent
                text: "Desactivada"
                color: activadaP2.text == "Activada" ? "blue" : "red"
                font.pointSize: 20
            }
            Text {
                text: "Página # 2"
                color: "orange"
                font.pointSize: 20
            }
            Rectangle{
                anchors.fill: parent
                Delegado.PaginaDeBandeja {
                    id: paginaDeBandeja
                }
            }

        }

        Page {
            id: p3
            visible: activadaP3.text == "Activada" ? true : false
            Text {

                id: activadaP3
                anchors.centerIn: parent
                text: "Desactivada"
                color: activadaP3.text == "Activada" ? "blue" : "red"
                font.pointSize: 20
            }
            Text {
                text: "Página # 3"
                color: "orange"
                font.pointSize: 20
            }

        }

    }

}
