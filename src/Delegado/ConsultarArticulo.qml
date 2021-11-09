import QtQuick 2.7
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.0
import QtWebEngine 1.3

import QArticulo 0.1
import "qrc:/Vista" as Vista
Vista.ConsultarArticuloForm {
    id: consultarArticulo
    property bool continuar: false
    property bool cargaArticulo:  desplegarConsultaDeArticulo(consultarArticulo.seleccionArticulo)
    listaDeSeccionesVista.delegate: Component {
        Row {
            Rectangle {
                id: rectangulo
                width: listaDeSeccionesVista.width
                height: textoSeccion.height +50
                color:  "transparent"
                Text {
                    id: codigoSeccion
                    text: codigo
                    visible: false
                }
                Text{
                    id: tituloSeccion
                    text: titulo
                    font.family: "Arial"
                    font.pointSize: 14
                    font.bold: true
                    color: "black"
                }
                Text {
                    id: textoSeccion
                    text: texto
                    width: rectangulo.width
                    y: 35
                    font.family: "Arial"
                    font.pointSize: 14
                    color: "black"
                    wrapMode:Text.WordWrap
                    horizontalAlignment: Text.AlignJustify
                }
            }
        }
    }
    Articulo {
        id: articulo
    }
    function desplegarConsultaDeArticulo(codigoArticulo){
        var contador = new Number;
        contador = 0
        consultarArticulo.listaDeSeccionesModelo.clear()
        articulo.cargarDisponibles(codigoArticulo)
        consultarArticulo.titulo.text = articulo.titulo
        articulo.cargarSeccionesEnGeneral()
        while (contador < articulo.contarSeccionesEnGeneral()){
            consultarArticulo.listaDeSeccionesModelo.append({codigo: articulo.devolverCodigoSeccion(contador), titulo: articulo.devolverTituloSeccion(contador) , texto: articulo.devolverTextoSeccion(contador)})
            contador = contador +1
        }
        return true
    }
}

