import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1
import QArticulo 0.1
import "qrc:/Vista" as Vista
Vista.PaginaDeArticulosForm {
    id: paginaDeArticulos
    property bool continuar: false
    property bool cargaUnidadesDidacticas: cargarUnidadesDidacticas(paginaDeArticulos.seleccionUnidadCurricular)
    property bool cargaArticulos: cargarArticulos(paginaDeArticulos.seleccionUnidadDidactica)
    etiqueta.text: unidadCurricular.nombre
    visible: true
    listaDeUnidadesDidacticaVista.delegate: Item{
        Label {
            id: indiceUnidadesDidactica
            text: codigo
            visible : false
        }
        Text {
            id: nombreUnidadesDidactica
            text: nombre
            font.family: nombreDeFuente; font.pointSize: 14
            color: "white"
        }
        Text {
            id: iconoPrimarioUnidadesDidactica
            text: ruta
            visible : false
        }
        Rectangle {
            id: rectanguloUnidadesDidactica
            opacity: 10
            y: nombreUnidadesDidactica.y-10
            x: nombreUnidadesDidactica.x -90
            z: -2
            width: 600
            height: 45
            radius: 7
            color:"transparent"
            Image {
                id: ilustracionUnidadUnidadesDidactica
                x: 20
                source: iconoPrimarioUnidadesDidactica.text
                width: 40
                height: 40
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    rectanguloUnidadesDidactica.color = "white"
                    nombreUnidadesDidactica.color = "#13be43"
                }
                onEntered: {
                    rectanguloUnidadesDidactica.color = "white"
                    nombreUnidadesDidactica.color = "black"
                }
                onExited: {
                    rectanguloUnidadesDidactica.color = "transparent"
                    nombreUnidadesDidactica.color = "white"
                }
            }
            visible: true
        }
    }
    listaDeArticulosVista.delegate: Item {
        Text {
            id: indiceDeArticulo
            text: codigo
            visible : false
        }
        Text {
            id: nombreDeArticulo
            text: nombre
            font.family: nombreDeFuente
            font.pointSize: 14

        }
        Text {
            id: iconoDeArticulo
            text: ruta
            visible : false
        }
        Rectangle{
            id: rectanguloDeArticulo
            opacity: 10
            x: nombreDeArticulo.x-90
            y: nombreDeArticulo.y -10
            z:-2
            width: 600
            height: 40
            radius: 7
            color: "transparent"
            Image {
                id: ilustracioDeArticulo
                source: iconoDeArticulo.text
                height: 40
                width: 40
                x: 20
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                onEntered: {
                    nombreDeArticulo.color = "#13be43"
                }
                onExited: {
                    nombreDeArticulo.color = "black"
                }
                onClicked: {
                    nombreDeArticulo.color = "#13be43"
                    paginaDeArticulos.seleccionArticulo = indiceDeArticulo.text
                    paginaDeArticulos.continuar = true
                }
            }
        }
    }
    UnidadCurricular{
        id: unidadCurricular
    }
    UnidadDidactica{
        id: unidadDidactica
    }
    Articulo {
        id: articulo
    }
    function cargarUnidadesDidacticas(indiceUnidadCurricular){
        var contador = new Number;
        contador = 0
        paginaDeArticulos.listaDeUnidadesDidacticaModelo.clear()
        unidadCurricular.cargarDisponibles(indiceUnidadCurricular)
        unidadCurricular.cargarUnidadesDidacticasDisponibles()
        while (contador < unidadCurricular.contarUnidadesDidacticasDisponibles()){
            paginaDeArticulos.listaDeUnidadesDidacticaModelo.append({codigo: unidadCurricular.devolverCodigoUnidadDidactica(contador), nombre: unidadCurricular.devolverNombreUnidadDidactica(contador), ruta: unidadCurricular.devolverRutaDeIconUnidadDidactica(contador)})
            contador = contador +1
        }
        return 0
    }
    function cargarArticulos(unidadDidacticaSeleccionada){
        var contador = new Number;
        contador = 0
        paginaDeArticulos.listaDeArticulosModelo.clear()
        unidadDidactica.cargarEnGeneral(unidadDidacticaSeleccionada, unidadCurricular.codigo)    
        unidadDidactica.cargarArticulosDisponibles()
        while (contador < unidadDidactica.contarArticulosDisponibles()){
             paginaDeArticulos.listaDeArticulosModelo.append({codigo: unidadDidactica.devolverCodigoArticulo(contador), nombre: unidadDidactica.devolverTituloArticulo(contador) , ruta: unidadDidactica.devolverRutaDeIconoArticulo(contador)})
             contador = contador +1
        }
        return true
    }
}
