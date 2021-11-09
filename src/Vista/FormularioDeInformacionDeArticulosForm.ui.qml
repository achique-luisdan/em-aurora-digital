import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Item {
    width: 400
    height: 600
    anchors.centerIn: parent
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias campoCodigo: campoCodigo
    property alias campoTitulo: campoTitulo
    property alias campoDesambiguacion: campoDesambiguacion
    property alias campoDescripcion: campoDescripcion
    property alias campoVisitas: campoVisitas
    property alias cajaDeOpcionesDeEstadoDeAcceso: cajaDeOpcionesDeEstadoDeAcceso
    property alias campoFechaDeRegistro: campoFechaDeRegistro
    property alias campoFechaDeModificacion: campoFechaDeModificacion
    property alias campoEditores: campoEditores
    property alias botonGuardar: botonGuardar
    property alias botonCerrar: botonCerrar
    property alias cajaDeIcono: cajaDeIcono
    property alias icono: icono
    property alias mouseAreaBotonGuardar: mouseAreaBotonGuardar
    property alias cajaDeOpcionesDeUnidadCurricular: cajaDeOpcionesDeUnidadCurricular
    property alias cajaDeOpcionesDeUnidadDidactica: cajaDeOpcionesDeUnidadDidactica
    property alias cajaDeOpcionesDeUnidadCurricularModelo: cajaDeOpcionesDeUnidadCurricularModelo
    property alias cajaDeOpcionesDeUnidadDidacticaModelo: cajaDeOpcionesDeUnidadDidacticaModelo
    Rectangle {
        id: rectangle1
        x: 13
        y: 14
        width: 373
        height: 505
        color: "#ffffff"
        Text {
            id: etiquetaCodigo
            x: 108
            y: 54
            text: "Código:"
            font.family: "Arial"
            font.pointSize: 12
        }
        Text {
            id: obligatorio1
            x: etiquetaCodigo.x -12;
            y: etiquetaCodigo.y -3
            font.pointSize: 12
            font.family: "Arial"
            color: "red"
            text: "<b>*<\b>"
        }

        Rectangle {
            id: rectangle3
            x: 28
            y: 150
            width: 323
            height: 55
            color: "#ffffff"
            TextInput {
                id: campoDescripcion
                x: 0
                y: 0
                width: 323
                height: 56
                font.family: "Arial"
                font.pointSize: 12
            }
        }

        TextInput {
            id: campoCodigo
            x: 170
            y: 54
            width: 186
            height: 20
            font.family: "Arial"
            font.pointSize: 12
        }

        Text {
            id: campoVisitas
            x: 87
            y: 215
            width: 82
            height: 12
            text: "0"
            font.family: "Arial"
            font.pointSize: 12
        }
    }

    Rectangle {
        id: rectangle2
        x: 13
        y: 14
        width: 373
        height: 38
        color: "#3b0c42"
        border.color: "#00000000"
    }

    Text {
        id: etiquetaInformacionDelArticulo
        x: 26
        y: 26
        text: "Información del artículo"
        color: "white"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: etiquetaTitulo
        x: 122
        y: 87
        text: "Título:"
        font.family: "Arial"
        font.pointSize: 12
    }
    Text {
        id: obligatorio2
        x: etiquetaTitulo.x -12;
        y: etiquetaTitulo.y -3
        font.pointSize: 12
        font.family: "Arial"
        color: "red"
        text: "<b>*<\b>"
    }

    Text {
        id: etiquetaDesambiguacion
        x: 120
        y: 111
        text: "Desambiguación:"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: obligatorio3
        x: etiquetaDesambiguacion.x -12;
        y: etiquetaDesambiguacion.y -3
        font.pointSize: 12
        font.family: "Arial"
        color: "red"
        text: "<b>*<\b>"
    }

    Button {
        id: cajaDeIcono
        x: 31
        y: 67
        width: 73
        height: 64
        Image {
            id: icono
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            anchors.fill: parent
            source: rutaPorDefecto+"Iconos/pordefecto.png"
        }
    }

    Text {
        id: etiquetaDescripcion
        x: 42
        y: 143
        text: "Descripción:"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: obligatorio4
        x: etiquetaDescripcion.x -12;
        y: etiquetaDescripcion.y -3
        font.pointSize: 12
        font.family: "Arial"
        color: "red"
        text: "<b>*<\b>"
    }

    Text {
        id: etiquetaVisitas
        x: 41
        y: 230
        text: "Visitas:"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: etiquetaFechaDeModificacion
        x: 41
        y: 319
        text: "Última modificación:"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: etiquetaEditores
        x: 41
        y: 348
        text: "Editores:"
        font.family: "Arial"
        font.pointSize: 12
    }

    TextInput {
        id: campoTitulo
        x: 182
        y: 88
        width: 185
        height: 19
        font.family: "Arial"
        font.pointSize: 12
    }

    TextInput {
        id: campoDesambiguacion
        x: 251
        y: 109
        width: 116
        height: 19
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: campoFechaDeModificacion
        x: 203
        y: 319
        width: 163
        height: 19
        font.family: "Arial"
        font.pointSize: 12
    }

    Label {
        id: campoEditores
        x: 110
        y: 348
        width: 257
        height: 41
        font.family: "Arial"
        font.pointSize: 12
    }

    Button {
        id: botonCerrar
        x: 213
        y: 478
        width: 109
        height: 32
        text: "Cerrar"
    }
    Rectangle {
        id: botonGuardar
        x: 83
        y: 478
        width: 108
        height: 32
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

    Text {
        id: etiquetaFechaDeRegistro
        x: 41
        y: 289
        text: "Fecha de registro:"
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: campoFechaDeRegistro
        x: 203
        y: 289
        width: 163
        height: 19
        font.family: "Arial"
        font.pointSize: 12
    }

    Text {
        id: etiquetaEstadoDeAcceso
        x: 41
        y: 258
        text: "Estado:"
        font.family: "Arial"
        font.pointSize: 12
    }

    ComboBox {
        id: cajaDeOpcionesDeEstadoDeAcceso
        x: 109
        y: 251
        z: 100
        width: 257
        height: 28
        model: [ "En espera", "Activo", "Inactivo", "Bloqueado"]
    }

    Text {
        id: etiquetaUnidadCurricular
        x: 42
        y: 404
        text: "Unidad curricular: "
        font.family: "Arial"
        font.pointSize: 12
    }
    Text {
        id: obligatorio6
        x: etiquetaUnidadCurricular.x -12;
        y: etiquetaUnidadCurricular.y -3
        font.pointSize: 12
        font.family: "Arial"
        color: "red"
        text: "<b>*<\b>"
    }

    Text {
        id: etiquetaUnidadDidactica
        x: 42
        y: 440
        text: "Unidad didáctica: "
        font.pointSize: 12
        font.family: "Arial"
    }
    Text {
        id: obligatorio7
        x: etiquetaUnidadDidactica.x -12;
        y: etiquetaUnidadDidactica.y -3
        font.pointSize: 12
        font.family: "Arial"
        color: "red"
        text: "<b>*<\b>"
    }
    ComboBox {
        id: cajaDeOpcionesDeUnidadCurricular
        x: 182
        y: 397
        width: 185
        height: 28
        z: 100
        model:  cajaDeOpcionesDeUnidadCurricularModelo
    }
    ListModel {
        id: cajaDeOpcionesDeUnidadCurricularModelo
        ListElement {
            nombre: "Ninguna"
        }
    }

    ComboBox {
        id: cajaDeOpcionesDeUnidadDidactica
        x: 182
        y: 436
        width: 185
        height: 28
        z: 100
        model: cajaDeOpcionesDeUnidadDidacticaModelo
    }

    ListModel {
        id: cajaDeOpcionesDeUnidadDidacticaModelo
        ListElement {
            nombre: "Ninguna"
        }
    }
}
