import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1
import "qrc:/Vista" as Vista
Vista.PaginaDeUnidadesDidacticasForm {
    id: paginaDeUnidadesDidacticas
    property bool continuar: false
    property bool cargaUnidadesCurriculares: cargarUnidadesCurriculares()
    property bool cargaUnidadesDidacticas: cargarUnidadesDidacticas(paginaDeUnidadesDidacticas.seleccionUnidadCurricular)
    listaDeUnidadesCurricularesVista.delegate: Item{
        Label {
            id: indiceUnidadCurricular
            text: n
            visible : false
        }
        Text {
            id: nombreUnidadCurricular
            text: nombre
            font.family: "Arial"
            font.pointSize: 14
            color: "white"
        }
        Text {
            id: iconoPrimarioUnidadCurricular
            text: rutaPrimaria
            visible : false
        }
        Rectangle {
            id: rectanguloUnidadCurricular
            opacity: 10
            y: nombreUnidadCurricular.y -12
            x: nombreUnidadCurricular.x -80
            z: -2
            width: 300; height: 45
            radius: 7
            color:"transparent"
            Image{
                id: ilustracionUnidadCurricular
                x: 20
                source: iconoPrimarioUnidadCurricular.text
                width: 40
                height: 40
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    rectanguloUnidadCurricular.color = "white"
                    nombreUnidadCurricular.color = "#13be43"
                    paginaDeUnidadesDidacticas.seleccionUnidadCurricular = indiceUnidadCurricular.text
                    paginaDeUnidadesDidacticas.cargarUnidadesDidacticas(paginaDeUnidadesDidacticas.seleccionUnidadCurricular)
                }
                onEntered: {
                    rectanguloUnidadCurricular.color = "white"
                    nombreUnidadCurricular.color = "black"
                }
                onExited: {
                    rectanguloUnidadCurricular.color = "transparent"
                    nombreUnidadCurricular.color = "white"
                }
            }
            visible: true
        }
    }
    listaDeUnidadesDidacticaVista.delegate: Item{
        Text {
            id: indiceUnidadesDidactica
            text: codigo
            visible : false
        }
        Text {
            id: nombreUnidadesDidactica
            text: nombre
            font.family: "Arial"
            font.pointSize: 14

        }
        Text {
            id: iconoUnidadesDidactica
            text:ruta
            visible : false
        }
        Rectangle {
            id: rectanguloUnidadesDidactica
            opacity: 10
            x: nombreUnidadesDidactica.x-80
            y: nombreUnidadesDidactica.y -10; z:-2
            width: 600; height: 40
            radius: 7; color:"transparent"
            Image {
                id: ilustracionUnidadesDidactica
                source: iconoUnidadesDidactica.text
                height: 40
                width: 40
                x: 20
            }
            MouseArea {
                hoverEnabled: true
                anchors.fill: parent
                onEntered: {
                    nombreUnidadesDidactica.color = "#13be43"
                }
                onExited: {
                    nombreUnidadesDidactica.color = "black"
                }
                onClicked: {
                    nombreUnidadesDidactica.color = "#13be43"
                    paginaDeUnidadesDidacticas.seleccionUnidadDidactica = indiceUnidadesDidactica.text
                    paginaDeUnidadesDidacticas.continuar = true
                }
            }
        }
    }
    UnidadCurricular {
        id: unidadCurricular
    }
    function cargarUnidadesCurriculares(){
        var contador = new Number;
        contador = 0
        paginaDeUnidadesDidacticas.listaDeUnidadesCurricularesModelo.clear()
        while (contador < unidadCurricular.contarDisponibles()){
            unidadCurricular.cargarDisponibles(contador)
            paginaDeUnidadesDidacticas.listaDeUnidadesCurricularesModelo.append({n: contador, nombre: unidadCurricular.nombre, rutaPrimaria: unidadCurricular.rutaDeIconoPrim, rutaSecundaria: unidadCurricular.rutaDeIconoSec})
            contador = contador +1
        }
        return true
    }
    UnidadDidactica {
        id: unidadDidactica
    }
    function cargarUnidadesDidacticas(indiceUnidadCurricular){
        var contador = new Number;
        contador = 0
        paginaDeUnidadesDidacticas.listaDeUnidadesDidacticaModelo.clear()
        unidadCurricular.cargarDisponibles(indiceUnidadCurricular)
        unidadCurricular.cargarUnidadesDidacticasDisponibles()
        while (contador < unidadCurricular.contarUnidadesDidacticasDisponibles()){
            paginaDeUnidadesDidacticas.listaDeUnidadesDidacticaModelo.append({codigo: unidadCurricular.devolverCodigoUnidadDidactica(contador), nombre: unidadCurricular.devolverNombreUnidadDidactica(contador), ruta: unidadCurricular.devolverRutaDeIconUnidadDidactica(contador)})
            contador = contador +1
        }
        return 0
    }
}
