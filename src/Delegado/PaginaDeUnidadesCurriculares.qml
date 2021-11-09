
import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import QUnidadCurricular 0.1
import "qrc:/Vista" as Vista
Vista.PaginaDeUnidadesCurricularesForm {
    id: paginaDeUnidadesCurriculares
    anchors.fill: parent
    Component.onCompleted: {
        cargarUnidadesCurriculares()
    }
    property int seleccion: paginaDeUnidadesCurriculares.listaDeUnidadesCurricularesVista.seleccion
    property bool continuar: false
    listaDeUnidadesCurricularesVista.delegate: Item {
        Text {
            id: indice
            text: n
            visible: false
        }
        Text {
            id: valorNombre
            text: nombre
            font.family: "Arial";
            font.pointSize: 18
            color: "white"
        }
        Text {
            id: rutaIconoPrimario
            text: rutaPrimaria
            visible: false
        }
        Text {
            id: rutaIconoSecundario
            text: rutaSecundaria
            visible: false
        }
        Rectangle {
            id: rectangulo
            x: valorNombre.x -100
            y: valorNombre.y -15
            z: -2
            width: 870
            height: 60
            color: "transparent"
            radius: 7
            opacity: 30
            Image {
                id: ilustracion
                source: rutaIconoPrimario.text
                x: 20
                y: 3
                width: 55
                height: 55
                SequentialAnimation on source {
                    id: cambiarIcono
                    loops: Animation.Infinite
                    running: false
                    PropertyAnimation {
                        duration: 700
                        to: rutaIconoSecundario.text
                    }
                    PropertyAnimation {
                        duration: 900
                        to: rutaIconoPrimario.text
                    }
                }
            }
            MouseArea {
                id: areaDelMouse
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    rectangulo.color = "white"
                    valorNombre.color = "black"
                    cambiarIcono.running = true
                }
                onExited: {
                    rectangulo.color = "transparent"
                    valorNombre.color = "white"
                    cambiarIcono.running = false
                }
                onClicked: {
                    rectangulo.color = "white"
                    cambiarIcono.running = false
                    valorNombre.color = "#13be43"
                    paginaDeUnidadesCurriculares.listaDeUnidadesCurricularesVista.seleccion = indice.text
                    paginaDeUnidadesCurriculares.continuar = true
                }
            }
            visible: true
        }
    }
    UnidadCurricular {
        id: unidadCurricular
    }
    function cargarUnidadesCurriculares(){
        var contador = new Number;
        contador = 0
        paginaDeUnidadesCurriculares.listaDeUnidadesCurricularesModelo.clear()
        while (contador < unidadCurricular.contarDisponibles()){
            unidadCurricular.cargarDisponibles(contador)
            paginaDeUnidadesCurriculares.listaDeUnidadesCurricularesModelo.append({n: contador, nombre: unidadCurricular.nombre, rutaPrimaria: unidadCurricular.rutaDeIconoPrim, rutaSecundaria: unidadCurricular.rutaDeIconoSec})
            contador = contador +1
        }
        return true
    }
}
