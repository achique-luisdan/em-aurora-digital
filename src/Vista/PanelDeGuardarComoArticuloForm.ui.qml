import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Item {
    id: contenedor
    anchors.fill: parent
    width: 600
    height: 600
    property alias botonContenido: botonContenido
    property alias botonAlmacenamiento: botonAlmacenamiento
    property alias etiquetaDireccion: etiquetaDireccion
    property alias etiquetaNombre: etiquetaNombre
    property alias etiquetaFechaDeModificacion: etiquetaFechaDeModificacion
    property alias etiquetaEstadoDeAcceso: etiquetaEstadoDeAcceso
    property alias botonAgregar: botonAgregar
    property alias botonRetroceder: botonRetroceder
    property alias imagenAgregar: imagenAgregar
    property alias imagenRetroceder: imagenRetroceder
    property alias listaDeUnidadesCurricularesVista: listaDeUnidadesCurricularesVista
    property alias listaDeUnidadesCurricularesModelo: listaDeUnidadesCurricularesModelo
    property alias listaDeUnidadesDidacticasVista: listaDeUnidadesDidacticasVista
    property alias listaDeUnidadesDidacticasModelo: listaDeUnidadesDidacticasModelo
    property alias listaDeArticulosVista: listaDeArticulosVista
    property alias listaDeArticulosModelo: listaDeArticulosModelo
    property alias campoTitulo: campoTitulo
    property alias botonCancelar: botonCancelar
    property alias botonBloquear: botonBloquear
    property alias botonGuardar: botonGuardar
    property alias mouseAreaBotonCancelar: mouseAreaBotonCancelar
    property alias mouseAreaBotonBloquear: mouseAreaBotonBloquear
    property alias mouseAreaBotonGuardar: mouseAreaBotonGuardar
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"

    Rectangle {
        id: fondo
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.05; color: "#eeebeb"; }
            GradientStop { position: 0.60; color: "#eeebeb"; }
            GradientStop { position: 0.98; color: "#dddddd"; }
        }
    }
    TabBar {
        id: tabBar
        x: 200
        y: 15
        z: 100
        currentIndex: swipeView.currentIndex
        height: 35
        background: Rectangle {
            color: "transparent"
        }
        TabButton {
            id: botonContenido
            width: 100
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color: botonContenido.checked ? "#3b0c42" : "transparent"
            }
            Text {
                anchors.centerIn: parent
                text: "Contenido"
                color: botonContenido.checked ? "#3b0c42" : "gray"
                font.family: "Arial"
                font.pointSize: 12
            }
            Rectangle {
                anchors.fill: parent
                anchors.topMargin: 5
                anchors.bottomMargin: 8
                anchors.leftMargin: 99
                color: "gray"
            }
        }
        TabButton {
            id: botonAlmacenamiento
            x: 350
            y: 0
            width: 147
            height: 35
            background: Rectangle {
                anchors.fill: parent
                anchors.topMargin: 32
                anchors.bottomMargin: 1
                color:  botonAlmacenamiento.checked ? "#3b0c42" : "transparent"
            }
            Text {
                x: 300
                anchors.centerIn: parent
                text: "Almacenamiento"
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: 0
                color: botonAlmacenamiento.checked ? "#3b0c42" : "gray"
                font.family: "Arial"
                font.pointSize: 12
            }
        }
    }
    Rectangle {
        id: recuadro
        anchors.fill: parent
        anchors.topMargin: 60
        anchors.bottomMargin: 80
        anchors.leftMargin: 15
        anchors.rightMargin: 25
        layer.enabled: true
        color: "white"
        layer.effect: DropShadow {
            horizontalOffset: 0.5
            verticalOffset: 0.5
            radius: 8.0
            samples: 24
            source: recuadro
            color: "gray"
        }

        Text {
            id: etiquetaDireccion
            color: "gray"
            text: "/"
            font.pointSize: 12
            anchors.rightMargin: 108
            anchors.topMargin: 13
            anchors.bottomMargin: 419
            font.family: "Arial"
            anchors.leftMargin: 84
            anchors.fill: parent
            z: 200
        }

        Rectangle {
            id: botonRetroceder
            anchors.fill: parent
            color: "#ffffff"
            anchors.rightMargin: 500
            anchors.leftMargin: 5
            anchors.bottomMargin: 400
            anchors.topMargin: 10
            Image {
                id: imagenRetroceder
                anchors.fill: parent
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
            }
        }

        Rectangle {
            id: botonAgregar
            anchors.fill: parent
            color: "#ffffff"
            anchors.bottomMargin: 400
            anchors.leftMargin: 500
            anchors.rightMargin: 5
            anchors.topMargin: 10
            Image {
                id: imagenAgregar
                anchors.fill: parent
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
            }
        }
        SwipeView {
            id: swipeView
            width: recuadro.width
            height: recuadro.height
            currentIndex: tabBar.currentIndex
            Page {
                Rectangle {
                    id: fondoDeEtiquetas
                    color: "#3b0c42"
                    anchors.rightMargin: 0
                    anchors.topMargin: 44
                    anchors.bottomMargin: 386
                    anchors.leftMargin: 10
                    anchors.fill: parent
                    z: 100
                }
                Text {
                    id: etiquetaNombre
                    color: "white"
                    text: "Unidad curricular"
                    font.pointSize: 12
                    anchors.rightMargin: 376
                    anchors.topMargin: 50
                    anchors.bottomMargin: 388
                    font.family: "Arial"
                    anchors.leftMargin: 54
                    anchors.fill: parent
                    z: 100
                }

                Text {
                    id: etiquetaFechaDeModificacion
                    color: "white"
                    text: "Última modificación"
                    font.pointSize: 12
                    anchors.rightMargin: 135
                    anchors.topMargin: 50
                    anchors.bottomMargin: 388
                    font.family: "Arial"
                    anchors.leftMargin: 295
                    anchors.fill: parent
                    z: 100
                }

                TextInput {
                    id: etiquetaEstadoDeAcceso
                    color: "white"
                    text: "Estado"
                    font.pointSize: 12
                    anchors.rightMargin: 32
                    anchors.topMargin: 51
                    anchors.bottomMargin: 387
                    font.family: "Arial"
                    anchors.leftMargin: 478
                    anchors.fill: parent
                    z: 100
                    enabled: false
                }

                ScrollView {
                    anchors.topMargin: 80
                    anchors.fill: parent
                    ListView {
                        id: listaDeUnidadesCurricularesVista
                        anchors.topMargin: 15
                        anchors.fill: parent
                        model: listaDeUnidadesCurricularesModelo
                        spacing: 48
                        property bool continuar: false
                        anchors.rightMargin: 15
                        anchors.bottomMargin: 15
                        anchors.leftMargin: 70
                        visible: continuar ? false : true
                        property string seleccion: seleccion
                    }
                    ListView {
                        id: listaDeUnidadesDidacticasVista
                        anchors.topMargin: 15
                        anchors.fill: parent
                        model: listaDeUnidadesDidacticasModelo
                        spacing: 48
                        visible: listaDeUnidadesCurricularesVista.continuar ? true : false
                        property bool continuar: false
                        anchors.rightMargin: 15
                        anchors.leftMargin: 70
                        anchors.bottomMargin: 15
                        property string seleccion: seleccion
                    }
                    ListView {
                        id: listaDeArticulosVista
                        anchors.topMargin: 15
                        anchors.fill: parent
                        model: listaDeArticulosModelo
                        spacing: 48
                        visible: listaDeUnidadesDidacticasVista.continuar ? true : false
                        property bool continuar: false
                        anchors.rightMargin: 15
                        anchors.leftMargin: 70
                        anchors.bottomMargin: 15
                        property string seleccion: seleccion
                    }
                }
            }
            Page {
            }
        }
    }
    ListModel {
        id: listaDeUnidadesCurricularesModelo
    }
    ListModel {
        id: listaDeUnidadesDidacticasModelo
    }
    ListModel {
        id:  listaDeArticulosModelo
    }
    Text {
        id: etiquetaTitulo
        anchors.fill: parent
        anchors.topMargin: 525
        anchors.bottomMargin: 55
        anchors.leftMargin: 15
        anchors.rightMargin: 535
        font.family: "Arial"
        font.pointSize: 12
        color: "gray"
        text: "Título: "
    }

    TextInput {
        id: campoTitulo
        anchors.fill: parent
        anchors.topMargin: 525
        anchors.bottomMargin: 55
        anchors.leftMargin: 65
        anchors.rightMargin: 115
        font.family: "Arial"
        font.pointSize: 12
        color: "gray"
        focus: true
        leftPadding: 20
        Rectangle {
            anchors.fill: parent
            anchors.topMargin: 18
            anchors.bottomMargin: 1
            color: campoTitulo.focus ? "#3b0c42" :"gray"
        }
        Rectangle {
            anchors.fill: parent
            color: campoTitulo.focus ? "#3b0c42" :"gray"
            anchors.bottomMargin: 1
            anchors.topMargin: 12
            anchors.rightMargin: 419
            anchors.leftMargin: 0
        }
        Rectangle {
            anchors.fill: parent
            color: campoTitulo.focus ? "#3b0c42" :"gray"
            anchors.bottomMargin: 1
            anchors.topMargin: 12
            anchors.leftMargin: 419
        }
    }

    ComboBox {
        id: cajaDeSeleccionDeFormato
        anchors.fill: parent
        anchors.topMargin: 525
        anchors.bottomMargin: 55
        anchors.leftMargin: 491
        anchors.rightMargin: 15
        model: [".odt",".txt", ".pdf"]
    }

    Rectangle {
        id: botonCancelar
        anchors.fill: parent
        anchors.topMargin: 555
        anchors.bottomMargin: 15
        anchors.leftMargin: 15
        anchors.rightMargin: 450
        color: "lightGray"
        Text {
            anchors.centerIn: parent
            text: "Cancelar"
            font.family: "Arial"
            font.pointSize: 12
            color: "gray"
        }
        MouseArea {
            id: mouseAreaBotonCancelar
            anchors.fill: parent
            hoverEnabled: true
        }
    }

    Rectangle {
        id: botonBloquear
        anchors.fill: parent
        anchors.topMargin: 555
        anchors.bottomMargin: 15
        anchors.leftMargin: 280
        anchors.rightMargin: 180
        color: "lightGray"
        Text {
            anchors.centerIn: parent
            text: "Bloquear"
            font.family: "Arial"
            font.pointSize: 12
            color: "gray"
        }
        MouseArea {
            id: mouseAreaBotonBloquear
            anchors.fill: parent
            hoverEnabled: true
        }
    }

    Rectangle {
        id: botonGuardar
        anchors.fill: parent
        anchors.topMargin: 555
        anchors.bottomMargin: 15
        anchors.leftMargin: 450
        anchors.rightMargin: 15
        color: "#3b0c42"
        Text {
            anchors.centerIn: parent
            text: "Guardar"
            font.family: "Arial"
            font.pointSize: 12
            color: "white"
        }
        MouseArea {
            id: mouseAreaBotonGuardar
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}

