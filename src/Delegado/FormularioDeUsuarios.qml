import QtQuick 2.4
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "qrc:/Vista" as Vista
import QUsuario 0.1
import QMensaje 0.1
ApplicationWindow {
    width: 600
    height: 800
    x: (Screen.width -1200)/2
    y: (Screen.height -790)/2
    opacity: 0.95
    visible: true
    Vista.FormularioDeUsuarios {
        mouseAreaBotonAceptar.onClicked: {
            regitrarUsuario()
        }
        mouseAreaBotonImagenUsuario.onClicked: {
            agregarImagenDeUsuario.open()
        }
        agregarImagenDeUsuario.onAccepted: {
            imagenUsuario.source = agregarImagenDeUsuario.fileUrl
        }

        Usuario {
            id: usuario
        }
        Mensaje {
            id: mensaje
        }
        function regitrarUsuario() {
            usuario.nombre = campoNombreDeUsuario.text
            usuario.nombreCompleto = campoNombreCompleto.text
            usuario.privilegios = cajaDeOpcionesDePrivilegio.currentText
            usuario.nivel = 0
            usuario.rutaDeFotoDePerfil = imagenUsuario.source
            usuario.contrasea = campoContrasea.text
            usuario.estadoDeAcceso = "En espera"
            usuario.disponibilidad = "Fuera"
            usuario.guardar()
            mensaje.nombreEmisor = usuario.nombre
            mensaje.nombreReceptor = "Sistema"
            mensaje.tipo = "Personal"
            mensaje.asunto = campoAsunto.text
            mensaje.texto = campoMensaje.text
            mensaje.guardar()
            limpiarCampos()
        }
        function limpiarCampos(){

            imagenUsuario.source=  rutaPorDefecto+"Iconos/fotodeperfil-pordefecto.svg"
            campoNombreDeUsuario.text =""
            campoNombreCompleto.text =""
            while (cajaDeOpcionesDePrivilegio.currentIndex != 0){ cajaDeOpcionesDePrivilegio.__selectPrevItem() }
            campoContrasea.text =""
            campoVerificar.text=""
            seleccionSolicitudBibliotecario.checked = false
            seleccionSolicitudEditor.checked = true
            seleccionSolicitudLector.checked = false
            seleccionEstablecerContraseaDespues.checked = true
            seleccionEstablecerContraseaAhora.checked = false
            campoMensaje.text = ""
        }
    }
}

