import QtQuick 2.7
import "qrc:/Vista" as Vista
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import "qrc:/Delegado" as Delegado
Window {
    visible: true
    width: 1200
    height: 800
    title: "Aurora Digital v.1.6"
Vista.CentroDeProduccionDeContenidos {
    botonMenu.onClicked: {
        menuDeElementos.open()
    }
    opcionUnidadCurricular.onTriggered: {
        contenedor.setCurrentIndex(0)
    }
    opcionUnidadDidactica.onTriggered: {
        contenedor.setCurrentIndex(1)
    }
    opcionArticulo.onTriggered: {
        contenedor.setCurrentIndex(2)
    }
    botonBuscar.onClicked: {
        if(campoDeBusqueda.visible == false){
            campoDeBusqueda.visible = true
        }
        else {
            campoDeBusqueda.visible = false
        }
    }

    botonAyuda.onClicked: {
        console.log("Abriendo el motor de busqueda")
    }
    NumberAnimation on imagenBotonAgregar.rotation {
        id: rotarImagenBotonAgregar
        running: false
        from: 0; to: 180
        duration: 400
    }

    botonAgregar.onClicked: {
        rotarImagenBotonAgregar.running = true
        formularioDeUnidadCurricular.agregarNuevaUnidadCurricular()
    }
    campoDeBusqueda.onAccepted: {
        if(contenedor.currentIndex == 0){
            formularioDeUnidadCurricular.buscarUnidadCurricular(campoDeBusqueda.text)
        }
    }
}
}
