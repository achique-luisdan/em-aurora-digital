import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1
import QArticulo 0.1

ApplicationWindow {
    id: formularioDeUnidadesDidacticas
    title: accion
    width: 650
    height: 400
    maximumWidth: 650
    maximumHeight: 400
    opacity: 0.98
    visible: false
    property string nombreDeFuente: "Arial"
    property int tamanioDeLetra: 12
    property string accion: "Agregar unidad didática..."
    Item {
        id: caja
        width: 650
        height: 400
        Rectangle {
            id: fondo
            anchors.fill:   parent
            z: -40
            gradient: Gradient {
                GradientStop { position: 0.03; color: "white" }
                GradientStop { position: 0.04; color: "white" }
                GradientStop { position: 0.07; color: "#f5f4f4" }
            }
        }
        Label {
            id: etiquetaUnidadCurricular
            x: 110
            y: 23
            text: "Unidad curricular:"
        }
        ComboBox {
            id: cajaDeUnidadesCurricularesVista
            x: 255
            y: 20
            width: 368
            height: 29
            model: ListModel{
                id:cajaDeUnidadesCurricularesModelo
            }
        }
        Label {
            id: obligatorio1
            x: etiquetaUnidadCurricular.x -12
            y: etiquetaUnidadCurricular.y -3
            color: "red"
            text: "<b>*<\b>"
        }
        Label {
            id: etiquetaCodigo
            x: 150
            y: 70
            font.pointSize: tamanioDeLetra;
            font.family: nombreDeFuente
            text: "Código:"
        }
        TextField {
            id: campoCodigo
            x: etiquetaCodigo.x + etiquetaCodigo.width +45
            y: etiquetaCodigo.y -2
            width: 150
            height: 30
            font.pointSize: tamanioDeLetra
            font.family: nombreDeFuente
            placeholderText: "SINC000"
        }
        Rectangle {
            id: habilitador
            anchors.fill: campoCodigo
            color: "#e8e3e3"
            border.color: "#b1b0b0"
            radius: 3
            visible: false
            Label {
                id: valorCodigo
                x: 6
                y: 7
                font.pointSize: tamanioDeLetra
                font.family: nombreDeFuente
                text: campoCodigo.text
            }
            function habilitar(){
                if(habilitador.visible == false){
                    habilitador.visible = true
                    campoCodigo.visible = false
                }
                else{
                    habilitador.visible = false
                    campoCodigo.visible = true
                }
            }
            function deshabilitar(){
                autogeneral.checked = true
                habilitador.visible = true
                campoCodigo.visible = false
            }
        }
        CheckBox {
            id: autogeneral
            x: campoCodigo.x
            y: campoCodigo.y +35
            checked: false
            onCheckedChanged: {
                habilitador.habilitar()
            }
        }
        Label {
            id: etiquetaAuto
            x: autogeneral.x + autogeneral.width
            y: autogeneral.y +3
            font.pointSize: tamanioDeLetra;
            font.family: nombreDeFuente
            text: "Auto"
        }
        Label {
            id: obligatorio2
            x: etiquetaCodigo.x -12;
            y: etiquetaCodigo.y -3
            font.pointSize: tamanioDeLetra;
            font.family: nombreDeFuente
            color: "red"
            text: "<b>*<\b>"
        }
        Label {
            id: etiquetaNombreUnidadDidactica
            x: etiquetaCodigo.x
            y: etiquetaCodigo.y +60
            text: "Nombre:"
        }
        TextField {
            id: campoNombreUnidadDidactica
            x: etiquetaNombreUnidadDidactica.x + etiquetaNombreUnidadDidactica.width +35
            y: etiquetaNombreUnidadDidactica.y -3
            width: 368
            height: 27
            placeholderText: "Escribe un nombre"
            onAccepted: {
                caja.buscarUnidadDidactica()
            }
        }
        Label {
            id: obligatorio3
            x: etiquetaNombreUnidadDidactica.x -12
            y: etiquetaNombreUnidadDidactica.y -3
            color: "red"
            text: "<b>*<\b>"
        }
        Label {
            id: etiquetaDescripcionDeUnidadDidactica
            x: etiquetaNombreUnidadDidactica.x
            y: etiquetaNombreUnidadDidactica.y +50
            text: "Descripción:"
        }
        TextArea {
            id: areaDeDescripcionDeUnidadDidactica
            x: etiquetaDescripcionDeUnidadDidactica.x + etiquetaDescripcionDeUnidadDidactica.width +5
            y: etiquetaDescripcionDeUnidadDidactica.y -3
            width: 368
            height: 150
        }
        Button {
            id: cajaDeIcon
            x: 29
            y: 30
            width: 62
            height: 60
            onClicked: {
                agregarIcon.open();
            }
            Image {
                id:icono
                x: 4;
                y: 4
                width: cajaDeIcon.width -8
                height: cajaDeIcon.height -8
                source: "file://home/luisdan/Prototipo/Proyecto/Iconos/pordefecto.png"
            }
        }
        Button {
            id: botonGuardarUnidadDidactica
            x: 300
            y: 348
            text: "Guardar"
            onClicked: {
                caja.guardarUnidadDidactica()
            }
        }
        Button {
            id: botonEliminarUnidadDidactica
            x: 402
            y: 348
            text: "Eliminar"
            onClicked: {
                confirmarEliminacion.open();
            }
        }
        Button {
            id: botonCancelar
            x: 502
            y: 348
            text: "Cancelar"
            onClicked: {
                caja.cancelarOperaciones()
            }
        }
        FileDialog {
            id: agregarIcon
            title: "Agregar icono..."
            onAccepted: {
                icono.source = agregarIcon.fileUrl
            }
        }
        MessageDialog {
            id: confirmarEliminacion
            icon: StandardIcon.Question
            standardButtons : StandardButton.Cancel | StandardButton.Discard
            text: "<b>¿Seguro que desea eliminar permanentemente la unidad didáctica «"+campoNombreUnidadDidactica.text+"» del contenido de la Enciclopedia?<\b>"
            informativeText: "Si elimina la unidad didáctica, se perderá para siempre."
            onDiscard: {
                caja.eliminarUnidadDidactica();
            }
        }
        MessageDialog {
            id: confirmarModificacion
            icon: StandardIcon.Question
            standardButtons : StandardButton.Cancel | StandardButton.Save
            text: "<b>¿Seguro que desea guardar los cambios realizados a la unidad didáctica «"+campoNombreUnidadDidactica.text+"» ?<\b>"
            informativeText: "Le sugerimos, verificar nuevamente los campos que desea modificar, de esta forma cuando este seguro pueda proceder a guardar los cambios."
            onAccepted: {
                caja.modificarUnidadDidactica();
            }
        }
        UnidadCurricular {
            id: objUnidadCurricular
        }
        UnidadDidactica {
            id: unidadDidactica
        }
        function cargarUnidadesCurriculares(){
            var contador = Number()
            contador = 0
            cajaDeUnidadesCurricularesModelo.clear();
            while(contador < objUnidadCurricular.contarEnGeneral()){
                objUnidadCurricular.cargarEnGeneral(contador)
                cajaDeUnidadesCurricularesModelo.append({"nombre":objUnidadCurricular.nombre})
                contador++
            }
        }

        function buscarUnidadDidactica(){
            objUnidadCurricular.cargar(cajaDeUnidadesCurricularesVista.currentText)
            if (unidadDidactica.buscar(campoNombreUnidadDidactica.text, objUnidadCurricular.codigo)){
                unidadDidactica.cargarEnGeneral(campoNombreUnidadDidactica.text, objUnidadCurricular.codigo)
                campoCodigo.text = unidadDidactica.codigo
                icono.source = unidadDidactica.rutaDeIcono
                areaDeDescripcionDeUnidadDidactica.text = unidadDidactica.descripcion
                habilitador.deshabilitar();
            }
        }

        function guardarUnidadDidactica(){
            var numero = Number()
            if(unidadDidactica.buscar(campoCodigo.text)){
                confirmarModificacion.open();
                console.log("Modifico")
            }
            else {
                objUnidadCurricular.nombre = cajaDeUnidadesCurricularesVista.currentText
                objUnidadCurricular.cargar(objUnidadCurricular.nombre)
                numero = objUnidadCurricular.contarUnidadesDidacticasEnGeneral()+1
                unidadDidactica.codigo = campoCodigo.text
                unidadDidactica.nombre = campoNombreUnidadDidactica.text
                unidadDidactica.rutaDeIcono = icono.source
                unidadDidactica.descripcion = areaDeDescripcionDeUnidadDidactica.text
                unidadDidactica.estadoDeAcceso = "En espera"
                unidadDidactica.guardar(objUnidadCurricular.codigo)
                cancelarOperaciones()
                console.log("Guardo")
            }
        }
        function modificarUnidadDidactica(){
            objUnidadCurricular.cargar(cajaDeUnidadesCurricularesVista.currentText)
            unidadDidactica.nombre = campoNombreUnidadDidactica.text
            unidadDidactica.rutaDeIcono = icono.source
            unidadDidactica.descripcion = areaDeDescripcionDeUnidadDidactica.text
            unidadDidactica.estadoDeAcceso = "En espera"
            unidadDidactica.modificar(objUnidadCurricular.codigo)
        }
        function eliminarUnidadDidactica(){
            unidadDidactica.cargar(campoNombreUnidadDidactica.text)
            unidadDidactica.eliminar()
            cancelarOperaciones()
        }
        function cancelarOperaciones(){
            unidadDidactica.codigo="SINCOD000";
            unidadDidactica.nombre="";
            unidadDidactica.rutaDeIcono="";
            unidadDidactica.descripcion="";
            while (cajaDeUnidadesCurricularesVista.currentIndex > 0){
                cajaDeUnidadesCurricularesVista.__selectPrevItem()
            }
            campoCodigo.text = "SINCOD000"
            campoNombreUnidadDidactica.text = ""
            areaDeDescripcionDeUnidadDidactica.text = ""
            icono.source = "file://home/luisdan/Prototipo/Proyecto/Iconos/pordefecto.png"
        }
    }
    function inicializar(){
        formularioDeUnidadesDidacticas.visible = true
        caja.cancelarOperaciones()
        habilitador.deshabilitar()
        caja.cargarUnidadesCurriculares()
    }
}
