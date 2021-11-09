import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2
import "qrc:/Vista" as Vista
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1

Vista.FormularioDeUnidadCurricular {

    botonMenuUnidadCurricular.onClicked: {
        menuDeOpcionesDeUnidadCurricular.open()
    }

    function agregarNuevaUnidadCurricular(){
        if(etiquetaOpcionUnidadCurricular.text != "- General"){
            cancelarOperaciones()
            paginasDeProduccionDeUnidadCurricular.push(paginaGeneral)
            etiquetaOpcionUnidadCurricular.text = "- General"
        }
        else {
            cancelarOperaciones()
        }
    }

    opcionGeneral.onTriggered: {
        if(etiquetaOpcionUnidadCurricular.text != "- General"){
            paginasDeProduccionDeUnidadCurricular.push(paginaGeneral)
            etiquetaOpcionUnidadCurricular.text = "- General"
        }
    }

    opcionDetalles.onTriggered:  {
        if(etiquetaOpcionUnidadCurricular.text != "- Detalles"){
            paginasDeProduccionDeUnidadCurricular.push(paginaDetalles)
            etiquetaOpcionUnidadCurricular.text = "- Detalles"
            cargarVisitasDeLasUnidadesCurriculares()
        }
    }

    opcionOpcionesAvanzadas.onTriggered: {
        if(etiquetaOpcionUnidadCurricular.text != "- Opciones avanzadas"){
            paginasDeProduccionDeUnidadCurricular.push(paginaOpcionesAvanzadas)
            etiquetaOpcionUnidadCurricular.text = "- Opciones avanzadas"
        }

    }

    botonExpandir.onClicked: {
        if(panelDatosDeUnidadCurricular.height == 0){
            panelDatosDeUnidadCurricular.height = 800
            panelDatosDeUnidadCurricular.visible = true
            imagenBotonExpadir.source= rutaPorDefecto+"flecha-derecha-boton-del-teclado.png"
        }
        else {
            panelDatosDeUnidadCurricular.height = 0
            panelDatosDeUnidadCurricular.visible = false
            imagenBotonExpadir.source= rutaPorDefecto+"expandir-boton.png"
        }
    }

    FileDialog {
        id: agregarIconoPrimario
        title: "Agregar icono primario..."
        width: 300
        onAccepted: {
            iconoPrimario.source = agregarIconoPrimario.fileUrl
        }
    }

    cajaDeIconoPrimario.onClicked: {
        agregarIconoPrimario.open()
    }

    FileDialog {
        id: agregarIconoSecundario
        title: "Agregar icono secundario..."
        width: 300
        onAccepted: {
            iconoSecundario.source = agregarIconoSecundario.fileUrl;
        }
    }
    cajaDeIconoSecundario.onClicked: {
        agregarIconoSecundario.open()
    }


    MessageDialog {
        id: confirmarElim
        icon: StandardIcon.Question
        standardButtons : StandardButton.Cancel | StandardButton.Discard
        text: "<b>¿Seguro que desea eliminar permanentemente la unidad curricular «"+campoNombre.text+"» del contenido de la Enciclopedia?<\b>"
        informativeText: "Si elimina la unidad curricular, se perderá para siempre."
        onDiscard: {
            eliminarUnidadCurricular();
        }
    }

    botonGuardarUnidadCurricular.onClicked:  {
        guardarUnidadCurricular()
    }
    botonEliminarUnidadCurricular.onClicked: {
        confirmarElim.open()
    }
    botonCancelarOperaciones.onClicked: {
        cancelarOperaciones()
    }
    MessageDialog {
        id: confirmarModif
        icon: StandardIcon.Question
        standardButtons : StandardButton.Cancel | StandardButton.Save
        text: "<b>¿Seguro que desea guardar los cambios realizados a la unidad curricular «"+campoNombre.text+"» ?<\b>"
        informativeText: "Le sugerimos, verificar nuevamente los campos que desea modificar, de esta forma cuando este seguro pueda proceder a guardar los cambios."
        onAccepted: {
            modificarUnidadCurricular()
        }
    }
    function buscarUnidadCurricular(cadena)
    {
        if(unidadCurricular.buscar(cadena)){
            cargarUnidadCurricular(cadena)
        }
    }

    function cargarUnidadCurricular(nombre)
    {
        unidadCurricular.cargar(nombre)
        campoCodigo.text = unidadCurricular.codigo
        campoNombre.text = unidadCurricular.nombre
        while (cajaDeOpcionesDeEstado.currentIndex != 0){ cajaDeOpcionesDeEstado.decrementCurrentIndex() }
        while (cajaDeOpcionesDeEstado.currentText != unidadCurricular.estadoDeAcceso){ cajaDeOpcionesDeEstado.incrementCurrentIndex()}
        while (cajaDeOpcionesTipo.currentIndex != 0){ cajaDeOpcionesTipo.decrementCurrentIndex() }
        while (cajaDeOpcionesTipo.currentText != unidadCurricular.tipo){ cajaDeOpcionesTipo.incrementCurrentIndex()}
        while (selectorDeCreditos.value != unidadCurricular.creditos){
            if (unidadCurricular.creditos > selectorDeCreditos.value) selectorDeCreditos.increase()
            else selectorDeCreditos.decrease()
        }
        while (cajaDeOpcionesDeDensidad.currentIndex != 0){ cajaDeOpcionesDeDensidad.decrementCurrentIndex()}
        while (cajaDeOpcionesDeDensidad.currentText != unidadCurricular.densidad){ cajaDeOpcionesDeDensidad.incrementCurrentIndex()}
        while (cajaDeOpcionesDeDuracion.currentIndex != 0){ cajaDeOpcionesDeDuracion.decrementCurrentIndex() }
        while (cajaDeOpcionesDeDuracion.currentIndex+1 != unidadCurricular.duracion){ cajaDeOpcionesDeDuracion.incrementCurrentIndex() }
        while (selectorDeTrayecto.value != unidadCurricular.trayecto){
            if (unidadCurricular.trayecto > selectorDeTrayecto.value) selectorDeTrayecto.increase()
            else selectorDeTrayecto.decrease()
        }
        iconoPrimario.source = unidadCurricular.rutaDeIconoPrim
        iconoSecundario.source = unidadCurricular.rutaDeIconoSec
        areaDeDescripcion.text = unidadCurricular.descripcion
        areaDeEstrategias.text = unidadCurricular.estrategiasSugeridas
        unidadCurricular.cargarUnidadesDidacticasEnGeneral()
        tablaDeUnidadesDidacticasModelo.clear()
        var contador = new Number; contador = 0
        while (contador < unidadCurricular.contarUnidadesDidacticasEnGeneral()){
            tablaDeUnidadesDidacticasModelo.append({"n": contador+1, "nombre": unidadCurricular.devolverNombreUnidadDidactica(contador) , "descripcion": unidadCurricular.devolverDescripcionUnidadDidactica(contador), "estadoDeAcceso": unidadCurricular.devolverEstadoDeAccesoUnidadDidactica(contador)})
            contador = contador +1
        }
    }
    UnidadCurricular {
        id: unidadCurricular
    }
    UnidadCurricular {
        id: objUnidadCurricular
    }

    function guardarUnidadCurricular()
    {
        var centinela = new Boolean;
        centinela = unidadCurricular.buscar(campoCodigo.text)
        if(unidadCurricular.buscar(campoNombre.text)){
            if(centinela == false){
                centinela = true
            }
        }
        if(centinela) {
            confirmarModif.open();
        }
        else {
            unidadCurricular.nombre = campoNombre.text
            unidadCurricular.estadoDeAcceso = cajaDeOpcionesDeEstado.currentText
            unidadCurricular.tipo = cajaDeOpcionesTipo.currentText
            unidadCurricular.creditos = selectorDeCreditos.value
            unidadCurricular.densidad = cajaDeOpcionesDeDensidad.currentText
            unidadCurricular.duracion = cajaDeOpcionesDeDuracion.currentIndex +1
            unidadCurricular.trayecto = selectorDeTrayecto.value
            unidadCurricular.rutaDeIconoPrim = iconoPrimario.source
            unidadCurricular.rutaDeIconoSec = iconoSecundario.source
            unidadCurricular.descripcion = areaDeDescripcion.text
            unidadCurricular.estrategiasSugeridas = areaDeEstrategias.text
            unidadCurricular.nombreUsuario = "luisdan"
            if(autogeneral.checked == true){
                unidadCurricular.codigo = unidadCurricular.generalCodigo()
                campoCodigo.text = unidadCurricular.generalCodigo()
            }
            else {
                unidadCurricular.codigo = campoCodigo.text
            }
            unidadCurricular.guardar()
            cancelarOperaciones()
        }
    }

    function modificarUnidadCurricular(){
        unidadCurricular.nombre = campoNombre.text
        unidadCurricular.estadoDeAcceso = cajaDeOpcionesDeEstado.currentText
        unidadCurricular.tipo = cajaDeOpcionesTipo.currentText
        unidadCurricular.creditos = selectorDeCreditos.value
        unidadCurricular.densidad = cajaDeOpcionesDeDensidad.currentText
        unidadCurricular.duracion = cajaDeOpcionesDeDuracion.currentIndex +1
        unidadCurricular.trayecto = selectorDeTrayecto.value
        unidadCurricular.rutaDeIconoPrim = iconoPrimario.source
        unidadCurricular.rutaDeIconoSec = iconoSecundario.source
        unidadCurricular.descripcion = areaDeDescripcion.text
        unidadCurricular.estrategiasSugeridas = areaDeEstrategias.text
        unidadCurricular.nombreUsuario = "luisdan"
        unidadCurricular.modificar("luisdan")
    }

    function eliminarUnidadCurricular(){
        unidadCurricular.eliminar("luisdan")
        cancelarOperaciones()
    }

    function cancelarOperaciones(){
        unidadCurricular.codigo = ""
        unidadCurricular.nombre = ""
        unidadCurricular.tipo = ""
        unidadCurricular.creditos = ""
        unidadCurricular.densidad = ""
        unidadCurricular.duracion = 0
        unidadCurricular.trayecto = 0
        unidadCurricular.rutaDeIconoPrim = ""
        unidadCurricular.rutaDeIconoSec = ""
        unidadCurricular.descripcion = ""
        unidadCurricular.estrategiasSugeridas = ""
        unidadCurricular.nombreUsuario = ""

        campoCodigo.text =""
        campoNombre.text =""
        while (cajaDeOpcionesDeEstado.currentIndex != 0){ cajaDeOpcionesDeEstado.decrementCurrentIndex() }
        while (cajaDeOpcionesTipo.currentIndex > 0){
            cajaDeOpcionesTipo.decrementCurrentIndex()
        }
        while (selectorDeCreditos.value > 0){
            selectorDeCreditos.value = 0
        }
        while (cajaDeOpcionesDeDensidad.currentIndex > 0){
            cajaDeOpcionesDeDensidad.decrementCurrentIndex()
        }
        while (cajaDeOpcionesDeDuracion.currentIndex > 0){
            cajaDeOpcionesDeDuracion.decrementCurrentIndex()
        }
        while (selectorDeTrayecto.value > 0){
            selectorDeTrayecto.value = 0
        }
        iconoPrimario.source = rutaPorDefecto+"icono-por-defecto.png"
        iconoSecundario.source = rutaPorDefecto+"icono-por-defecto.png"
        areaDeDescripcion.text = ""
        areaDeEstrategias.text = ""
        tablaDeUnidadesDidacticasModelo.clear();
    }

    mouseAreaEtiquetaAmpliarDistribucionDeVisitas.onEntered: {
        etiquetaAmpliarDistribucionDeVisitas.color = "lightgray"
    }
    mouseAreaEtiquetaAmpliarDistribucionDeVisitas.onExited: {
        etiquetaAmpliarDistribucionDeVisitas.color = "gray"
    }
    mouseAreaEtiquetaAmpliarDistribucionDeVisitas.onClicked: {
        generalReporteDeDistribucionDeVisitas()
    }
    listaDePorcentajeVista.delegate:  Label {
        id: p
        text: porcentaje+"%"
        Label {
            x: 45
            text:"-"
            font.bold: true
        }
    }

    listaPorcentualDeUnidadesCurricularesVista.delegate: Rectangle {
        id: barra
        y: 280 -valorPorcentaje.text *2.5
        height: valorPorcentaje.text *2.5
        width: 40
        color: valorColor.text
        border.color: "gray"
        visible: true
        Label {
            id: valorPorcentaje
            text: porcentaje
            anchors.centerIn: parent
        }
        Label {
            id: valorNombre
            text: nombre
            visible: false
        }
        Label {
            id: valorVisitas
            anchors.centerIn: parent
            text: visitas
            visible: false
        }
        Label {
            id: valorColor
            text: colorAuto
            visible: false
        }
    }
    listaNombreDeUnidadesCurricularesVista.delegate: Rectangle {
        width: valorNombre.width +45
        Label {
            id: valorPorc
            text: porcentaje
            visible: false
        }

        Rectangle {
            id: selectorDeUnidadCurricular
            y: valorNombre.y +2
            x: valorNombre.x -20
            width: 12
            height: 12
            color: valorColor.text
            border.color: "gray"
        }
        Label {
            id: valorNombre
            anchors.centerIn: parent
            text: nombre
        }
        Label {
            id: valorVisitas
            text: visitas
            visible: false
        }
        Label {
            id: valorColor
            text: colorAuto
            visible: false
        }
    }

    ListModel{
        id: listaDeColores
        ListElement {
            color: "#9C27B0"
        }
        ListElement {
            color: "#673AB7"
        }
        ListElement {
            color: "#3F51B5"
        }
        ListElement {
            color: "#2196F3"
        }
        ListElement {
            color: "#03A9F4"
        }
        ListElement {
            color: "#00BCD4"
        }
        ListElement {
            color: "#009688"
        }
        ListElement {
            color: "#4CAF50"
        }
        ListElement {
            color: "#8BC34A"
        }
        ListElement {
            color: "#CDDC39"
        }
        ListElement {
            color: "#FFEB3B"
        }
        ListElement {
            color: "#FFC107"
        }
        ListElement {
            color: "#FF9800"
        }
        ListElement {
            color: "#FF5722"
        }
        ListElement {
            color: "#795548"
        }
        ListElement {
            color: "#9E9E9E"
        }
        ListElement {
            color: "#607D8B"
        }
        ListElement {
            color: "#F44336"
        }
        ListElement {
            color: "#E91E63"
        }
    }
    function cargarVisitasDeLasUnidadesCurriculares(){
        var contador = new Number; contador = 0
        listaDeUnidadesCurricularesModelo.clear()
        while(contador < objUnidadCurricular.contarEnGeneral()){
            objUnidadCurricular.cargarEnGeneral(contador)
            listaDeUnidadesCurricularesModelo.append({porcentaje: objUnidadCurricular.calcularPorcentajeDeVisitas(), nombre: objUnidadCurricular.nombre, visitas: objUnidadCurricular.contarVisitas(), colorAuto:  listaDeColores.get(contador).color })
            contador = contador +1;
        }
    }

    function generalReporteDeDistribucionDeVisitas(){
        objUnidadCurricular.generalReporteDeVisitas()
    }
    botonAgregarUnidadDidactica.onClicked: {
        formularioDeUnidadDidactica.visible = true
    }
    FormularioDeUnidadDidactica{
        id: formularioDeUnidadDidactica
        visible : false
    }
}
