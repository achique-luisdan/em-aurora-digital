import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Item {
    id: opcionUnidadCurricular
    width: 1200
    height: 706
    anchors.fill: parent
    property string colorDelTema: "#3b0c42"
    property string colorDelTemaSecundario: "#7F1E57"
    property string rutaPorDefecto: "file:/home/luisdan/prototipo-7-12-2016/Recursos/"
    property alias recuadroDeEtiquetaUnidadCurricular: recuadroDeEtiquetaUnidadCurricular
    property alias botonMenuUnidadCurricular: botonMenuUnidadCurricular
    property alias menuDeOpcionesDeUnidadCurricular: menuDeOpcionesDeUnidadCurricular
    property alias opcionGeneral: opcionGeneral
    property alias opcionDetalles: opcionDetalles
    property alias opcionOpcionesAvanzadas: opcionOpcionesAvanzadas
    property alias opcionVolver: opcionVolver
    property alias paginasDeProduccionDeUnidadCurricular: paginasDeProduccionDeUnidadCurricular
    property alias paginaGeneral: paginaGeneral
    property alias etiquetaUnidadCurricular: etiquetaUnidadCurricular
    property alias etiquetaOpcionUnidadCurricular: etiquetaOpcionUnidadCurricular
    property alias recuadroEtiquetaDatosDeUnidadCurricular: recuadroEtiquetaDatosDeUnidadCurricular
    property alias etiquetaDatosDeUnidadCurricular: etiquetaDatosDeUnidadCurricular
    property alias botonExpandir: botonExpandir
    property alias imagenBotonExpadir: imagenBotonExpadir
    property alias panelDatosDeUnidadCurricular: panelDatosDeUnidadCurricular
    property alias obligatorioCodigo: obligatorioCodigo
    property alias etiquetaCodigo: etiquetaCodigo
    property alias campoCodigo: campoCodigo
    property alias autogeneral: autogeneral
    property alias etiquetaAuto: etiquetaAuto
    property alias obligatorioNombre: obligatorioNombre
    property alias etiquetaNombre: etiquetaNombre
    property alias campoNombre: campoNombre
    property alias etiquetaEstado: etiquetaEstado
    property alias cajaDeOpcionesDeEstado: cajaDeOpcionesDeEstado
    property alias obligatorioTipo: obligatorioTipo
    property alias etiquetaTipo: etiquetaTipo
    property alias cajaDeOpcionesTipo: cajaDeOpcionesTipo
    property alias obligatorioCreditos: obligatorioCreditos
    property alias etiquetaCreditos: etiquetaCreditos
    property alias selectorDeCreditos: selectorDeCreditos
    property alias obligatorioDensidad: obligatorioDensidad
    property alias etiquetaDensidad: etiquetaDensidad
    property alias cajaDeOpcionesDeDensidad: cajaDeOpcionesDeDensidad
    property alias obligatorioDuracion: obligatorioDuracion
    property alias etiquetaDuracion: etiquetaDuracion
    property alias cajaDeOpcionesDeDuracion: cajaDeOpcionesDeDuracion
    property alias obligatorioTrayecto: obligatorioTrayecto
    property alias etiquetaTrayecto: etiquetaTrayecto
    property alias selectorDeTrayecto: selectorDeTrayecto
    property alias obligatorioIconos: obligatorioIconos
    property alias etiquetaIconos: etiquetaIconos
    property alias cajaDeIconoPrimario: cajaDeIconoPrimario
    property alias iconoPrimario: iconoPrimario
    property alias cajaDeIconoSecundario: cajaDeIconoSecundario
    property alias iconoSecundario: iconoSecundario
    property alias etiquetaDescripcion: etiquetaDescripcion
    property alias areaDeDescripcion: areaDeDescripcion
    property alias etiquetaEstrategias: etiquetaEstrategias
    property alias areaDeEstrategias: areaDeEstrategias
    property alias tablaDeUnidadesDidacticasVista: tablaDeUnidadesDidacticasVista
    property alias tablaDeUnidadesDidacticasModelo: tablaDeUnidadesDidacticasModelo
    property alias botonGuardarUnidadCurricular: botonGuardarUnidadCurricular
    property alias botonEliminarUnidadCurricular: botonEliminarUnidadCurricular
    property alias botonCancelarOperaciones: botonCancelarOperaciones
    property alias paginaDetalles: paginaDetalles
    property alias listaDePorcentajeVista: listaDePorcentajeVista
    property alias listaDePorcentajeModelo: listaDePorcentajeModelo
    property alias listaPorcentualDeUnidadesCurricularesVista: listaPorcentualDeUnidadesCurricularesVista
    property alias listaNombreDeUnidadesCurricularesVista: listaNombreDeUnidadesCurricularesVista
    property alias listaDeUnidadesCurricularesModelo: listaDeUnidadesCurricularesModelo
    property alias paginaOpcionesAvanzadas: paginaOpcionesAvanzadas
    property alias etiquetaAmpliarDistribucionDeVisitas: etiquetaAmpliarDistribucionDeVisitas
    property alias mouseAreaEtiquetaAmpliarDistribucionDeVisitas: mouseAreaEtiquetaAmpliarDistribucionDeVisitas

    property alias botonAgregarUnidadDidactica: botonAgregarUnidadDidactica
    property alias botonQuitarUnidadDidactica: botonQuitarUnidadDidactica
    Rectangle {
        id: recuadroDeEtiquetaUnidadCurricular
        width: opcionUnidadCurricular.width
        height: 40
        gradient: Gradient {
            GradientStop { position: 0.05; color: "#ffffff" }
            GradientStop { position: 0.60; color: "#eeebeb"; }
            GradientStop { position: 0.98; color: "#dddddd"; }
        }
        layer.enabled: true
        layer.effect: DropShadow {
            horizontalOffset: 0
            verticalOffset: 1
            radius: 7.0
            samples: 24
            source: recuadroDeEtiquetaUnidadCurricular
            color: "gray"
        }
        Label {
            id: etiquetaUnidadCurricular
            y: 10
            x: 22
            text: "Unidad curricular"
            font.pixelSize: recuadroDeEtiquetaUnidadCurricular.width/100*1.6
            color: "gray"
        }

        Label {
            id: etiquetaOpcionUnidadCurricular
            y: 13
            x: etiquetaUnidadCurricular.x + etiquetaUnidadCurricular.width +5
            text: "- General"
            font.pixelSize: recuadroDeEtiquetaUnidadCurricular.width/100*1.3
            color: "gray"
        }
        Button {
            id: botonMenuUnidadCurricular
            x: recuadroDeEtiquetaUnidadCurricular.width -50
            y: recuadroDeEtiquetaUnidadCurricular.y +3
            width: 37
            height: etiquetaUnidadCurricular.height +10
            hoverEnabled: true
            background: Rectangle {
                color: "#00000000"
            }
            Image {
                id: imagenBotonMenuUnidadCurricular
                anchors.fill: parent
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                source: botonMenuUnidadCurricular.hovered ? rutaPorDefecto+"boton-de-menu-lightGray.png" : rutaPorDefecto+"boton-de-menu-gray.png"
            }
        }
    }
    Menu {
        id: menuDeOpcionesDeUnidadCurricular
        x: botonMenuUnidadCurricular.x -150
        y: botonMenuUnidadCurricular.y +40
        contentWidth: 400
        MenuItem {
            id: opcionGeneral
            text: " General"
        }
        MenuItem {
            id: opcionDetalles
            text: " Detalles"
        }
        MenuItem {
            id: opcionOpcionesAvanzadas
            text: " Opciones avanzadas"
        }
        MenuItem {
            id: opcionVolver
            text: " Volver"
        }
    }
    StackView {
        id: paginasDeProduccionDeUnidadCurricular
        y: 40
        width: opcionUnidadCurricular.width
        height: opcionUnidadCurricular.height -40
        initialItem: paginaGeneral
        Page {
            id: paginaGeneral
            visible: false
            ScrollView {
                id: contenedor
                width: opcionUnidadCurricular.width
                height: opcionUnidadCurricular.height -40
                contentItem: Item {
                    id: itemDelegado
                    height: 2000
                    Rectangle {
                        id: recuadroEtiquetaDatosDeUnidadCurricular
                        x: 27
                        y: 26
                        width: 881
                        height: 39
                        color: colorDelTemaSecundario
                        radius: 5
                        Label {
                            id: etiquetaDatosDeUnidadCurricular
                            y: 7
                            x: 40
                            text: "Datos de la unidad curricular"
                            font.pixelSize: 18
                            color: "white"
                        }

                        Button {
                            id: botonExpandir
                            x: -5
                            y: -7
                            width: 50
                            height: 50
                            hoverEnabled: true
                            Image {
                                id: imagenBotonExpadir
                                anchors.leftMargin: 18
                                anchors.topMargin: 18
                                source: rutaPorDefecto+"flecha-derecha-boton-del-teclado.png" //"expandir-boton.png"
                                anchors.rightMargin: 18
                                anchors.bottomMargin: 18
                                anchors.fill: parent
                                layer.enabled: botonExpandir.hovered ? true : false
                                layer.effect: DropShadow {
                                    color: "white"
                                    radius: 10.0
                                    verticalOffset: 1
                                    source: imagenBotonExpadir
                                    samples: 24
                                    horizontalOffset: 1
                                }
                            }
                            background: Rectangle{
                                color: "transparent"
                            }
                            z: 10
                        }
                        layer.enabled: true
                        layer.effect: DropShadow {
                            horizontalOffset: 0
                            verticalOffset: 1
                            radius: 7.0
                            samples: 24
                            source: recuadroEtiquetaDatosDeUnidadCurricular
                            color: "gray"
                        }
                    }
                    Pane {
                        id: panelDatosDeUnidadCurricular
                        x: recuadroEtiquetaDatosDeUnidadCurricular.x
                        y: recuadroEtiquetaDatosDeUnidadCurricular.y + recuadroEtiquetaDatosDeUnidadCurricular.height -4
                        width: recuadroEtiquetaDatosDeUnidadCurricular.width
                        height: botonGuardarUnidadCurricular.y + botonGuardarUnidadCurricular.height + 50
                        background: Rectangle {
                            border.color: "gray"
                        }
                        Label {
                            id: obligatorioCodigo
                            x: etiquetaCodigo.x -12;
                            y: etiquetaCodigo.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaCodigo
                            x: 29
                            y: 15
                            text: "Código:"
                            font.pixelSize: 16
                        }
                        TextField {

                            id: campoCodigo
                            x: etiquetaCodigo.x + 100+5
                            y: etiquetaCodigo.y -2
                            width: 150
                            height: 30
                            placeholderText: "SINC000"
                            font.pixelSize: 16
                            background: Rectangle {
                                radius: 2
                                color: autogeneral.checked ? "#dddada" : "white"
                                implicitWidth: 100
                                implicitHeight: 24
                                border.color: campoCodigo.focus ? colorDelTemaSecundario : "lightgray"
                                border.width: campoCodigo.focus ? 2 : 1
                            }
                        }
                        CheckBox {
                            id: autogeneral
                            x: campoCodigo.x + campoCodigo.width +20
                            y: campoCodigo.y -4
                            checked: false
                        }
                        Label {
                            id: etiquetaAuto
                            x: autogeneral.x + autogeneral.width
                            y: autogeneral.y +12
                            text: "Auto"
                        }
                        Label {
                            id: obligatorioNombre
                            x: etiquetaNombre.x -12
                            y: etiquetaNombre.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaNombre
                            x: etiquetaCodigo.x
                            y: etiquetaCodigo.y +40
                            text: "Nombre:"
                            font.pixelSize: 16
                        }
                        TextField {
                            id: campoNombre
                            x: etiquetaNombre.x + 100 +5;
                            y: etiquetaNombre.y -3
                            width: 450
                            height: 30;
                            placeholderText: "Escribe un nombre"
                            font.pixelSize: 16
                            background: Rectangle {
                                radius: 2
                                implicitWidth: 100
                                implicitHeight: 24
                                border.color:  campoNombre.focus ? colorDelTemaSecundario : "lightgray"
                                border.width: campoNombre.focus ? 2 : 1
                            }
                        }
                        Label {
                            id: etiquetaEstado
                            x: campoNombre.x + campoNombre.width +18
                            y: etiquetaNombre.y -3
                            text: "Estado:"
                            font.pixelSize: 16

                        }
                        ComboBox {
                            id: cajaDeOpcionesDeEstado
                            x: etiquetaEstado.x + etiquetaEstado.width +10
                            y: etiquetaEstado.y -3
                            width: 140
                            height: 30
                            font.pixelSize: 16
                            model: [ "En espera", "Activo", "Inactivo", "Bloqueado"]
                        }
                        Label {
                            id: obligatorioTipo
                            x: etiquetaTipo.x -12;
                            y: etiquetaTipo.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaTipo
                            x: etiquetaCodigo.x
                            y: etiquetaNombre.y +40
                            text: "Tipo:"
                            font.pixelSize: 16
                        }
                        ComboBox {
                            id: cajaDeOpcionesTipo
                            x: etiquetaTipo.x + 100 +5
                            y: etiquetaTipo.y -3
                            width: 450
                            height: 30
                            model: [ "Elige una opción...", "Proyecto", "Seminario", "Taller", "Curso", "Actividad acreditable", "Otros..."]
                            font.pixelSize: 16
                        }
                        Label {
                            id: obligatorioCreditos
                            x: etiquetaCreditos.x -12
                            y: etiquetaCreditos.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaCreditos
                            x: cajaDeOpcionesTipo.x + cajaDeOpcionesTipo.width +24
                            y: etiquetaTipo.y
                            text: "Créditos:"
                            font.pixelSize: 16
                        }
                        SpinBox {
                            id: selectorDeCreditos
                            x: etiquetaCreditos.x + etiquetaCreditos.width +10
                            y: etiquetaCreditos.y -3
                            width: 120
                            height: 30
                            font.pixelSize: 16

                        }
                        Label {
                            id: obligatorioDensidad
                            x: etiquetaDensidad.x -12
                            y: etiquetaDensidad.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaDensidad
                            x: etiquetaCodigo.x
                            y: etiquetaTipo.y +40
                            text: "Densidad:"
                            font.pixelSize: 16
                        }
                        ComboBox {
                            id: cajaDeOpcionesDeDensidad
                            x: etiquetaDensidad.x + 100 +5
                            y: etiquetaDensidad.y -3
                            width: 170
                            height: 30
                            model: ["Diaria", "Semanal", "Quincenal", "Mensual", "Bimestral", "Otras..."]
                            font.pixelSize: 16
                        }
                        Label {
                            id: obligatorioDuracion
                            x: etiquetaDuracion.x -12
                            y: etiquetaDuracion.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaDuracion
                            x: cajaDeOpcionesDeDensidad.x + cajaDeOpcionesDeDensidad.width + 24
                            y: etiquetaDensidad.y
                            text: "Duración:"
                            font.pixelSize: 16
                        }
                        ComboBox {
                            id: cajaDeOpcionesDeDuracion
                            x: etiquetaDuracion.x + etiquetaDuracion.width +5
                            y: etiquetaDuracion.y -3
                            width: 180
                            height: 30
                            model:["1 Trimestre", "2 Trimestres", "3 Trimestres", "4 Trimestres", "5 Trimestres", "6 Trimestres", "7 Trimestres", "8 Trimestres", "9 Trimestres", "10 Trimestres", "11 Trimestres", "12 Trimestres", "Más..."]
                            font.pixelSize: 16
                        }

                        Label {
                            id: obligatorioTrayecto
                            x: etiquetaTrayecto.x -12
                            y: etiquetaTrayecto.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaTrayecto
                            x: cajaDeOpcionesDeDuracion.x + cajaDeOpcionesDeDuracion.width + 24
                            y: etiquetaDensidad.y
                            text: "Trayecto:"
                            font.pixelSize: 16
                        }
                        SpinBox {
                            id: selectorDeTrayecto
                            x: etiquetaTrayecto.x + etiquetaTrayecto.width +10
                            y: etiquetaTrayecto.y -3
                            width: 110
                            height: 30
                            font.pixelSize: 16
                        }
                        Label {
                            id: etiquetaIconos
                            x: etiquetaCodigo.x
                            y: etiquetaDensidad.y + 50
                            text: "Iconos:"
                            font.pixelSize: 16
                        }
                        Label {
                            id: obligatorioIconos
                            x: etiquetaIconos.x -12
                            y: etiquetaIconos.y -3
                            color: "red"
                            text: "<b>*<\b>"
                            font.pixelSize: 16
                        }
                        Button {
                            id: cajaDeIconoPrimario
                            x: 137
                            y: 182
                            width: 64
                            height: 54
                            Image {
                                id: iconoPrimario
                                anchors.fill: parent
                                anchors.topMargin: 4
                                anchors.bottomMargin: 4
                                anchors.rightMargin: 4
                                anchors.leftMargin: 4
                                source: rutaPorDefecto+"icono-por-defecto.png"
                            }
                        }
                        Button {
                            id: cajaDeIconoSecundario
                            x: cajaDeIconoPrimario.x + cajaDeIconoPrimario.width +10
                            y: 182
                            width: 64
                            height: 54
                            Image {
                                id: iconoSecundario
                                anchors.fill: parent
                                anchors.topMargin: 4
                                anchors.bottomMargin: 4
                                anchors.rightMargin: 4
                                anchors.leftMargin: 4
                                source: rutaPorDefecto+"icono-por-defecto.png"
                            }
                        }
                        Label {
                            id: etiquetaDescripcion
                            x: etiquetaCodigo.x
                            y: etiquetaIconos.y +70
                            text: "Descripción:"
                            font.pixelSize: 16
                        }

                        Rectangle {
                            id: recuadroAreaDeDescripcion
                            x: etiquetaDescripcion.x + etiquetaDescripcion.width +10
                            y: etiquetaDescripcion.y -3
                            width: 675
                            height: areaDeDescripcion.height +20
                            radius: 2
                            border.color: areaDeDescripcion.focus ? colorDelTemaSecundario : "lightgray"
                            border.width: areaDeDescripcion.focus ? 2 : 1
                            TextInput {
                                id: areaDeDescripcion
                                y: 10
                                x: 10
                                width: 655
                                font.pixelSize: 16
                                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                                horizontalAlignment: Text.AlignJustify
                            }
                        }
                        Label {
                            id: etiquetaEstrategias
                            x: etiquetaCodigo.x
                            y: recuadroAreaDeEstrategias.y
                            text: "Estrategias:"
                            font.pixelSize: 16
                        }
                        Rectangle {
                            id: recuadroAreaDeEstrategias
                            x: recuadroAreaDeDescripcion.x
                            y: recuadroAreaDeDescripcion.y + recuadroAreaDeDescripcion.height + 15
                            width: 675
                            height:  areaDeEstrategias.height +20
                            radius: 2
                            implicitWidth: 100
                            implicitHeight: 24
                            border.color:  areaDeEstrategias.focus ? colorDelTemaSecundario : "lightgray"
                            border.width: areaDeEstrategias.focus ? 2 : 1
                            TextInput {
                                id: areaDeEstrategias
                                y: 10
                                x: 10
                                width: 655
                                font.pixelSize: 16
                                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                                horizontalAlignment: Text.AlignJustify

                            }
                        }
                        TableView {
                            id: tablaDeUnidadesDidacticasVista
                            x: recuadroAreaDeEstrategias.x
                            y: recuadroAreaDeEstrategias.y + recuadroAreaDeEstrategias.height + 15
                            width: 675
                            height: 120
                            model: tablaDeUnidadesDidacticasModelo
                            alternatingRowColors: false

                            TableViewColumn {
                                title: "N°"
                                role: "n"
                            }
                            TableViewColumn {
                                title: "Unidad didáctica"
                                role: "nombre"
                            }
                            TableViewColumn {
                                title: "Descripción"
                                role: "descripcion"
                            }
                            TableViewColumn {
                                title: "Estado"
                                role: "estadoDeAcceso"
                            }
                            ListModel {
                                id: tablaDeUnidadesDidacticasModelo
                            }
                        }
                        Button {
                            id: botonAgregarUnidadDidactica
                            x: tablaDeUnidadesDidacticasVista.x -70
                            y: tablaDeUnidadesDidacticasVista.y +25
                            width: 40
                            height: 25
                            text: " + "
                        }
                        Button {
                            id: botonQuitarUnidadDidactica
                            x: botonAgregarUnidadDidactica.x
                            y: botonAgregarUnidadDidactica.y +30
                            width: 40
                            height: 25
                            text: " - "
                        }
                        Button {
                            id: botonGuardarUnidadCurricular
                            x: 292
                            y: tablaDeUnidadesDidacticasVista.y + tablaDeUnidadesDidacticasVista.height +30
                            width: 100
                            height: 40
                            text: "Guardar"
                            highlighted: true
                            hoverEnabled: true
                            background: Rectangle {
                                id: fondoBotonGuardarUnidadCurricular
                                color: botonGuardarUnidadCurricular.hovered ? "#9c3073" : "#7F1E57"
                                layer.enabled: true
                                layer.effect: DropShadow {
                                    horizontalOffset: 1
                                    verticalOffset: 1
                                    radius: 5.0
                                    samples: 10
                                    source: fondoBotonGuardarUnidadCurricular
                                    color: "black"
                                }
                            }
                        }
                        Button {
                            id: botonEliminarUnidadCurricular
                            x: 425
                            y: botonGuardarUnidadCurricular.y
                            text: "Eliminar"
                        }
                        Button {
                            id: botonCancelarOperaciones
                            x: 549
                            y: botonGuardarUnidadCurricular.y
                            text: "Cancelar"
                        }
                    }
                }
            }
        }
        Page {
            id: paginaDetalles
            visible: false
            Item {
                anchors.fill: parent
                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: 20
                    anchors.bottomMargin: 180
                    anchors.leftMargin: 45
                    anchors.rightMargin: 45
                    color: "white"
                    border.color: "gray"
                    Label {
                        id: etiquetaDistribucionDeVisitas
                        x: 398
                        y: 23
                        text: "Distribucción de Visitas"
                        font.pixelSize: 22
                    }
                    Label {
                        id: etiquetaAmpliarDistribucionDeVisitas
                        x: etiquetaDistribucionDeVisitas.x + etiquetaDistribucionDeVisitas.width +10
                        y: 25
                        text: "(Ampliar)"
                        font.pixelSize: 18
                        color: "gray"
                        MouseArea {
                            id: mouseAreaEtiquetaAmpliarDistribucionDeVisitas
                            anchors.fill: parent
                            hoverEnabled: true
                        }
                    }
                    Rectangle {
                        id: lineaHorizontal
                        x: 80
                        y: 350
                        width: 893
                        height: 1
                        color: "black"
                    }
                    Rectangle {
                        id: lineaVertical
                        x: 80
                        y: 45
                        width: 1
                        height: 305
                        color: "black"
                    }
                    ListView {
                        id: listaDePorcentajeVista
                        x: lineaVertical.x -45
                        y: lineaVertical.y +57
                        width: 180
                        height: 280
                        spacing: 10
                        model: listaDePorcentajeModelo
                    }
                    ListModel{
                        id: listaDePorcentajeModelo
                        ListElement {
                            porcentaje: 100
                        }
                        ListElement {
                            porcentaje: 90
                        }
                        ListElement {
                            porcentaje: 80
                        }
                        ListElement {
                            porcentaje: 70
                        }
                        ListElement {
                            porcentaje: 60
                        }
                        ListElement {
                            porcentaje: 50
                        }
                        ListElement {
                            porcentaje: 40
                        }
                        ListElement {
                            porcentaje: 30
                        }
                        ListElement {
                            porcentaje: 20
                        }
                        ListElement {
                            porcentaje: 10
                        }
                        ListElement {
                            porcentaje: 0
                        }
                    }

                    ListView {
                        id: listaPorcentualDeUnidadesCurricularesVista
                        x: lineaVertical.x
                        y: lineaVertical.y +27
                        width: 660
                        height: 280
                        spacing: 0
                        orientation: ListView.Horizontal
                        model: listaDeUnidadesCurricularesModelo
                    }

                    ListModel {
                        id: listaDeUnidadesCurricularesModelo
                        ListElement {
                            porcentaje: 44
                            nombre: "Algorítmica y Programación"
                            visitas: 10
                            colorAuto : "blue"
                        }
                    }
                    ListView {
                        id: listaNombreDeUnidadesCurricularesVista
                        x: lineaVertical.x +45
                        y: lineaHorizontal.y +50
                        width: 600
                        height: 100
                        spacing: 10
                        orientation: ListView.Horizontal
                        model: listaDeUnidadesCurricularesModelo
                    }
                }
            }

            Page {
                id: paginaOpcionesAvanzadas
                visible: false
            }
        }
    }
}
