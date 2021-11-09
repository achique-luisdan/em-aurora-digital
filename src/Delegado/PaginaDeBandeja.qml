import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import "qrc:/Vista" as Vista
import QMensaje 0.1
Vista.PaginaDeBandeja {
    Component.onCompleted: {
    }

    ListModel {
        id: listaDeCategoriasModelo
        ListElement {
            nombre: "Recibidos"
            numero: "(0)"
        }
        ListElement {
            nombre: "Notificaciones"
            numero: "(0)"
        }
        ListElement {
            nombre: "Sugerencias"
            numero: "(0)"
        }
        ListElement {
            nombre: "Enviados"
            numero: "(0)"
        }
        ListElement {
            nombre: "Problemas"
            numero: "(0)"
        }
        ListElement {
            nombre: "Soluciones"
            numero: "(0)"
        }

    }
    listaDeCategoriasVista.model: listaDeCategoriasModelo
    listaDeCategoriasVista.delegate: Item {
        Text {
            id: valorCategoria
            text: nombre
            font.family: "Arial";
            font.pointSize: 16
            color: "white"
        }
        Text {
            id: numeroDeMensajes
            x: valorCategoria.x + valorCategoria.width +10
            text: numero
            font.family: "Arial";
            font.pointSize: 14
            color: "white"
        }
    }
    ListModel {
        id: listaDeMensajeModelo
    }
    listaDeMensajesVista.model: listaDeMensajeModelo 

    Mensaje {
        id: mensaje
    }
    function cargarMensajesRecibidos(usuario){
        var recibidos = Number()
        recibidos = mensaje.contarRecibido(usuario)
        var contador = Number()
        contador = 0
        while (contador < recibidos){
            mensaje.cargarRecibido(contador, usuario)
            listaDeMensajeModelo.append({nombreEmisor: mensaje.nombreEmisor, asuntoMensaje: mensaje.asunto, textoMensaje: mensaje.texto, fechaRecibidoMensaje: mensaje.fechaRecibido })
            contador = contador +1;
        }
    }
}
