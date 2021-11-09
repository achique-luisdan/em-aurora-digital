import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "qrc:/Vista" as Vista
import QUsuario 0.1
ApplicationWindow {
    id: paginaInicio
    title: "Aurora Digital V.1.0"
    width: 1200
    height: 800
    x: (Screen.width -1200)/2
    y: (Screen.height -790)/2
    opacity: 0.99
    visible: true

    property int tamanioDeLetra: 12
    property string nombreDeFuente: "DejaVu Sans"
    property string elementoAEditar: "Ninguno"
    property string accion: "Ninguna"

    Rectangle {
        id: fondo
        anchors.fill: parent
        anchors.topMargin: -30;
        gradient: Gradient {
            GradientStop { position: 0.03; color: "white" }
            GradientStop { position: 0.04; color: "white" }
            GradientStop { position: 0.07; color: "#f5f4f4" }
        }
    }

    menuBar: MenuBar {
        id: barraDeMenu
        style: MenuBarStyle {
            font: nombreDeFuente
            background: Rectangle {
                color: "transparent"
            }
        }

        Menu {
            title: "<u>A</u>rchivo"
            MenuItem { text: "Nuevo/a..." }
            MenuItem { text: "Recientes..." }
            MenuItem { text: "Recargar" }
            MenuItem { text: "Imprimir..." }
            MenuItem { text: "Exportar" }
            MenuItem { text: "Cerrar" }
            MenuItem { text: "Guardar" }
            MenuItem { text: "Guardar como..." }
            MenuItem { text: "Guardar todo" }
            MenuItem { text: "Configuración de elementos" }
            MenuItem { text: "Preferencias" }
            MenuItem { text: "Salir" }
        }
        Menu {
            title: "<u>E</u>dición"
            Menu {
                title: "Agregar"
                MenuItem {
                    text: "Unidad curricular..."
                    onTriggered: {
                        elementoAEditar = "Unidad curricular..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Unidad didáctica..."
                    onTriggered: {
                        elementoAEditar = "Unidad didáctica..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Artículo..."
                    onTriggered: {
                        //formularioDeArticulo.accion = "Agregar un nuevo artículo..."
                        elementoAEditar = "Agregar un nuevo artículo..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Lectura adicional..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Elemento multimedia..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Juegos..."
                    onTriggered: {

                    }
                }
                MenuItem {
                    text: "Más..."
                    onTriggered: {

                    }
                }
            }
            Menu {
                title: "Modificar"
                MenuItem {
                    text: "Unidad curricular..."
                    onTriggered: {
                        formularioDeUnidadCurricular.accion = "Modificar unidad curricular..."
                        elementoAEditar = "Unidad curricular..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Unidad didáctica..."
                    onTriggered: {
                        formularioDeUnidadDidactica.accion = "Modificar unidad didáctica..."
                        elementoAEditar = "Unidad didáctica..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Artículo..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Lectura adicional..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Elemento multimedia..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Formula..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Juegos..."
                    onTriggered: {

                    }
                }
                MenuItem {
                    text: "Más..."
                    onTriggered: {

                    }
                }
            }
            Menu {
                title: "Eliminar"
                MenuItem {
                    text: "Unidad curricular..."
                    onTriggered: {
                        formularioDeUnidadCurricular.accion = "Eliminar unidad curricular..."
                        elementoAEditar = "Unidad curricular..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Unidad didáctica..."
                    onTriggered: {
                        formularioDeUnidadDidactica.accion = "Eliminar unidad didáctica..."
                        elementoAEditar = "Unidad didáctica..."
                        formularioDeAutenticacion.iniciarAutenticacion()
                    }
                }
                MenuItem {
                    text: "Artículo..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Lectura adicional..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Elemento multimedia..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Formula..."
                    onTriggered: {
                    }
                }
                MenuItem {
                    text: "Juegos..."
                    onTriggered: {

                    }
                }
                MenuItem {
                    text: "Más..."
                    onTriggered: {

                    }
                }
            }
            MenuItem { text: "Seleccionar todo" }
            MenuItem { text: "Deshacer" }
            MenuItem { text: "Rehacer" }
            MenuItem {
                text: "Cortar"
                shortcut: StandardKey.Cut
            }
            MenuItem {
                text: "Copiar"
                shortcut: StandardKey.Copy
            }
            MenuItem {
                text: "Pegar"
                shortcut: StandardKey.Paste
            }
        }
        Menu {
            title: "<u>F</u>avoritos"
        }
        Menu {
            title: "<u>H</u>erramientas"
        }
        Menu {
            title: "<u>A</u>yuda"
        }
    }
    //*****************************************************************************/
    //*****************************************************************************/

    FormularioDeAutenticacion {
            id: formularioDeAutenticacion
            visible: false
            botonAuteticar.onClicked: {
                formularioDeAutenticacion.autenticar();
            }
            function autenticar(){
                centinela = false
                if(usuario.buscar(campoUsuario.text)){
                    formularioDeAutenticacion.campoUsuario.cajaDelCampoUsuario.border.color = "transparent"
                    usuario.cargar(campoUsuario.text)
                    if(formularioDeAutenticacion.cajaDeOpcionesDePrivilegios.currentText == usuario.privilegios){
                        formularioDeAutenticacion.cajaDeOpcionesDePrivilegios.cajaDelCampoCajaDeOpcionesDePrivilegios.border.color = "transparent"
                        if(formularioDeAutenticacion.campoUsuario.text == usuario.nombre ) {
                            if(formularioDeAutenticacion.campoContrasea.text == usuario.contrasea){
                                formularioDeAutenticacion.etiquetaNotificacion.visible = false
                                formularioDeAutenticacion.campoContrasea.cajaDelCampoContrasea.border.color = "transparent"
                                centinela = true
                                formularioDeAutenticacion.close()
                                if(elementoAEditar == "Unidad curricular..."){
                                    centroDeProdducionDeContenidos.visible = true
                                    //  formularioDeUnidadCurricular.visible = true
                                }
                                else if (elementoAEditar == "Unidad didáctica..."){
                                    //formularioDeUnidadDidactica.inicializar()
                                }
                                else if(elementoAEditar == "Agregar un nuevo artículo..."){
                                    //formularioDeArticulo.visible = true
                                }
                            }
                            else {
                                formularioDeAutenticacion.etiquetaNotificacion.visible = true
                                formularioDeAutenticacion.campoContrasea.cajaDelCampoContrasea.border.color = "red"
                            }
                        }
                    }
                    else{
                        formularioDeAutenticacion.cajaDeOpcionesDePrivilegios.cajaDelCampoCajaDeOpcionesDePrivilegios.border.color = "red"
                    }
                }
                else {
                    formularioDeAutenticacion.campoUsuario.cajaDelCampoUsuario.border.color = "red"
                }
            }
        }
        //*****************************************************************************/
        //*****************************************************************************/
        Usuario {
            id: usuario
        }

    FormularioDeUsuarios {
        id: formularioDeUsuarios
        visible: false
    }
    PanelDeInicioDeSesion{
        id: panelDeInicioDeSesion
        visible: false
    }
    CentroDeProduccionDeContenidos {
        id: centroDeProdducionDeContenidos
        visible: false
    }
    Item {
        y: 15
        width: paginaInicio.width
        height: paginaInicio.height -15
        Vista.PaginaInicio {
            function irAlInicio(){
                paginaDeUnidadesCurriculares.cargarUnidadesCurriculares()
                paginaDeUnidadesCurriculares.continuar = false
                paginaDeArticulos.continuar = false
                paginaDeUnidadesDidacticas.continuar = false
                consultarArticulo.continuar = false
            }
            botonP2.onClicked: {
                abrirNuevaPagina(2)
            }

            botonP3.onClicked: {
                abrirNuevaPagina(3)
            }
            botonHogar.onClicked: {
                irAlInicio()
            }
            mouseAreaBotonCerrarP1.onEntered: {
                activarFocoDelBotonCerrar(1)
            }
            mouseAreaBotonCerrarP1.onExited: {
                desactivarFocoDelBotonCerrar(1)
            }
            mouseAreaBotonCerrarP2.onEntered: {
                activarFocoDelBotonCerrar(2)
            }
            mouseAreaBotonCerrarP2.onExited: {
                desactivarFocoDelBotonCerrar(2)
            }
            mouseAreaBotonCerrarP3.onEntered: {
                activarFocoDelBotonCerrar(3)
            }
            mouseAreaBotonCerrarP3.onExited: {
                desactivarFocoDelBotonCerrar(3)
            }

            mouseAreaBotonCerrarP2.onClicked: {
                cerrarPagina(2)
            }

            mouseAreaBotonCerrarP3.onClicked: {
                cerrarPagina(3)
            }
            botonUsuarios.onClicked: {
                if(panelDeInicioDeSesion.inicio==false){
                    if(popupPrimario.visible == false){
                        popupPrimario.visible = true
                    }
                    else {
                        popupPrimario.visible = false
                    }
                }
                else {
                    popupPrimario.visible = false
                    etiquetaUsuarioInicioSeccion.text = panelDeInicioDeSesion.nombreDeUsuarioInicio
                    usuarioInicioSeccion.cargar(etiquetaUsuarioInicioSeccion.text)
                    imagenDeUsuarioInicioSeccion.source = usuarioInicioSeccion.rutaDeFotoDePerfil
                    if(popupSecundario.visible == false){
                        popupSecundario.visible = true
                    }
                    else {
                        popupSecundario.visible = false
                    }
                }
            }

            mouseAreaBotonUsuario.onClicked: {
                console.log(subMenuDeUsuario.height)
                if(subMenuDeUsuario.height !=0){
                    popupSecundario.height = 180
                    menuUsuario.height= 150
                    subMenuDeUsuario.height = 0
                    subMenuDeUsuario.visible = false
                }
                else {
                    popupSecundario.height = 360
                    subMenuDeUsuario.height = 350
                    subMenuDeUsuario.visible = true
                }
                console.log(subMenuDeUsuario.height)
            }


            mouseAreaBotonIniciarSeccion.onClicked: {
                console.log("Abriendo el formulario de inicio de sesión.")
                panelDeInicioDeSesion.visible = true
            }

            mouseAreaBotonRegistrar.onClicked: {
                console.log("Abriendo el formulario de registro de usuario.")
                formularioDeUsuarios.visible = true
            }

            mouseAreaBotonConfigurar.onClicked: {
                console.log("Abriendo el formulario de configuraciones.")
            }

            mouseAreaBotonHogar2.onClicked: {
                irAlInicio()
            }
            mouseAreaBotonBandeja.onClicked: {

                console.log("Abriendo bandeja de entrada...")
                paginaDeBandeja.cargarMensajesRecibidos(usuarioInicioSeccion.nombre)
                abrirNuevaPagina(2)
                botonP2.checked = true

            }
            mouseAreaBotonMensaje.onClicked: {
                console.log("Enviar mensaje personal.")
            }
            mouseAreaBotonBandeja.onEntered: {
                botonBandeja.color = "#FA6800"
            }

            mouseAreaBotonBandeja.onExited:  {
                botonBandeja.color = "transparent"
            }

            function abrirNuevaPagina(n){
                if (n == 2){
                    if(activadaP2.text == "Desactivada"){
                        botonP2.width = 159
                        etiquetaBotonP2.text = "Página nueva"
                        botonP3.visible = true
                        activadaP2.text = "Activada"
                    }
                }
                else if (n == 3){
                    if(activadaP3.text == "Desactivada"){
                        botonP3.width = 159
                        etiquetaBotonP3.text = "Página nueva"
                        activadaP3.text = "Activada"
                    }
                }
            }

            function activarFocoDelBotonCerrar(n){
                if(n == 1){
                    botonCerrarP1.color = "gray"
                    etiquetaBotonCerrarP1.color = "white"
                }
                else if(n == 2){
                    botonCerrarP2.color = "red"
                    etiquetaBotonCerrarP2.color = "white"
                }
                else if(n == 3){
                    botonCerrarP3.color = "red"
                    etiquetaBotonCerrarP3.color = "white"
                }
            }

            function desactivarFocoDelBotonCerrar(n){
                if(n == 1){
                    botonCerrarP1.color ="transparent"
                    etiquetaBotonCerrarP1.color = "gray"
                }
                else if(n == 2){
                    botonCerrarP2.color ="transparent"
                    etiquetaBotonCerrarP2.color = "gray"
                }
                else if(n == 3){
                    botonCerrarP3.color ="transparent"
                    etiquetaBotonCerrarP3.color = "gray"
                }
            }

            function cerrarPagina(n){
                if(n == 2){
                    if(activadaP2.text == "Activada"){
                        if(activadaP3.text == "Activada"){
                            activadaP2.text = "Desactivada"
                            botonP2.width = 0
                            botonP2.visible = false
                        }
                        else if (activadaP3.text == "Desactivada"){
                            botonP3.visible = false
                            activadaP2.text = "Desactivada"
                            botonP2.width = 33
                            etiquetaBotonP2.text = " + "
                        }
                        else if(botonP3.visible == false){
                            activadaP2.text = "Desactivada"
                            botonP2.width = 33
                            etiquetaBotonP2.text = " + "

                        }

                        if (activadaP1.text == "Activada"){
                            botonP1.checked = true
                        }
                        else if (activadaP3.text == "Activada"){
                            botonP3.checked = true
                        }
                    }
                }
                else if(n == 3){
                    if(activadaP3.text == "Activada"){
                        if(activadaP2.text == "Activada"){
                            activadaP3.text = "Desactivada"
                            botonP3.width = 33
                            etiquetaBotonP3.text = " + "
                        }
                        else if (activadaP2.text == "Desactivada"){
                            activadaP3.text = "Desactivada"
                            botonP3.width = 0
                            botonP3.visible = false
                        }
                        if(botonP2.visible == false){
                            activadaP2.text = "Desactivada"
                            botonP2.width = 33
                            etiquetaBotonP2.text = " + "
                            botonP2.visible = true
                            botonP3.width = 33
                            etiquetaBotonP3.text = " + "
                        }
                        if (activadaP1.text == "Activada"){
                            botonP1.checked = true
                        }
                        else if (activadaP2.text == "Activada"){
                            botonP2.checked = true
                        }
                    }
                }
            }
        }
        Usuario {
            id: usuarioInicioSeccion
        }
    }


}
