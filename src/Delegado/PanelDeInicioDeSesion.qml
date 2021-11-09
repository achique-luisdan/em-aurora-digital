import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "qrc:/Vista" as Vista
import QUsuario 0.1

ApplicationWindow {
    id: panelDeInicioDeSesion
    width: Screen.width
    height: Screen.height
    maximumWidth: Screen.width
    maximumHeight: Screen.height
    color: "black"
    opacity: 0.85
    visible: true
    property bool inicio: false
    property string nombreDeUsuarioInicio: ""
    Vista.PanelDeInicioDeSesion {
         mouseAreaNoEstaEnLaLista.onEntered: {
            etiquetaNoEstaEnLaLista.color = "black"
         }

         mouseAreaNoEstaEnLaLista.onExited:  {
            etiquetaNoEstaEnLaLista.color = "gray"
         }
         mouseAreaNoEstaEnLaLista.onClicked: {
            recuadroGeneral.visible = false
            recuadroDeNombreDeUsuario.visible = true
         }

         botonContinuar.onClicked: {
            if(validarUsuario(campoNombreDeUsuario.text)){
                recuadroDeNombreDeUsuario.visible = false
                recuadroDeContrasea.visible = true
                cajaDelCampoNombreDeUsuario.border.color = "transparent"
                usuario.cargar(campoNombreDeUsuario.text)
                etiquetaNombreDeUsuario.text = usuario.nombre
                imageUsuario.source= usuario.rutaDeFotoDePerfil
            }
            else {
                cajaDelCampoNombreDeUsuario.border.color = "red"
            }
         }
         botonEntrar.onClicked: {
            if(validarContrasea(campoContrasea.text)){
                cajaDelCampoContrasea.border.color = "transparent"
                panelDeInicioDeSesion.close()
                inicio = true
                nombreDeUsuarioInicio = campoNombreDeUsuario.text
                console.log("Bienvenido "+nombreDeUsuarioInicio)

            }
            else{
                cajaDelCampoContrasea.border.color = "red"
            }
         }
         Usuario {
            id: usuario
         }
         function validarUsuario(nombreDeUsuario){
            return usuario.buscar(nombreDeUsuario)
         }
         function validarContrasea(contrasea){
            if(usuario.contrasea == contrasea){
                return true
            }
            else {
                return false
            }
         }
    }

}
