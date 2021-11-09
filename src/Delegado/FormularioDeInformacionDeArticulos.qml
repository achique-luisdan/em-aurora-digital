import QtQuick 2.7
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.0
import QArticulo 0.1
import QUnidadCurricular 0.1
import QUnidadDidactica 0.1
import "qrc:/Vista" as Vista

Window {
    id: formularioDeInformacionDeArticulos
    width: Screen.width
    height: Screen.height
    maximumWidth: Screen.width
    maximumHeight: Screen.height
    color: "black"
    opacity: 0.85
    property alias formulario: formulario
    property string unidadCurricularSeleccionada
    property string unidadDidacticaSeleccionada
    Vista.FormularioDeInformacionDeArticulosForm {
        id: formulario
        UnidadCurricular {
            id: unidadCurricular
        }
        function cargarUnidadesCurriculares(){
            var contador = Number()
            contador = 0
            cajaDeOpcionesDeUnidadCurricularModelo.clear()
            while(contador < unidadCurricular.contarEnGeneral() ){
                unidadCurricular.cargarEnGeneral(contador)
                cajaDeOpcionesDeUnidadCurricularModelo.append({"codigo": unidadCurricular.codigo ,"nombre": unidadCurricular.nombre})
                contador++
            }
        }
        UnidadDidactica {
            id: unidadDidactica
        }
        function cargarUnidadesDidacticas(nombreUnidadCurricular){
            var contador = new Number;
            contador = 0
            cajaDeOpcionesDeUnidadDidacticaModelo.clear()
            unidadCurricular.cargar(nombreUnidadCurricular)
            unidadCurricular.cargarUnidadesDidacticasEnGeneral()
            while (contador < unidadCurricular.contarUnidadesDidacticasEnGeneral()){
                cajaDeOpcionesDeUnidadDidacticaModelo.append({codigo: unidadCurricular.devolverCodigoUnidadDidactica(contador), nombre: unidadCurricular.devolverNombreUnidadDidactica(contador)})
                contador = contador +1
            }
            return true
        }
        Articulo {
            id: articulo
        }
        mouseAreaBotonGuardar.onClicked: {
            if(articulo.buscar(articulo.codigo, formularioDeInformacionDeArticulos.unidadDidacticaSeleccionada)){
                articulo.codigo = campoCodigo.text
                articulo.titulo = campoTitulo.text
                articulo.desambiguacion = campoDesambiguacion.text
                articulo.rutaDeIcono = icono.source
                articulo.descripcion = campoDescripcion.text
                articulo.visitas = ""+campoVisitas.text
                articulo.estadoDeAcceso = cajaDeOpcionesDeEstadoDeAcceso.currentText
                articulo.modificar(unidadDidactica.codigo)
                formularioDeInformacionDeArticulos.close()
            }

            else {
                articulo.codigo = campoCodigo.text
                articulo.titulo = campoTitulo.text
                articulo.desambiguacion = campoDesambiguacion.text
                articulo.rutaDeIcono = icono.source
                articulo.descripcion = campoDescripcion.text
                articulo.visitas = ""+campoVisitas.text
                articulo.estadoDeAcceso = cajaDeOpcionesDeEstadoDeAcceso.currentText
                unidadCurricular.cargar(cajaDeOpcionesDeUnidadCurricular.currentText)
                unidadCurricular.cargarUnidadesDidacticasEnGeneral()
                articulo.guardar(unidadCurricular.devolverCodigoUnidadDidactica(cajaDeOpcionesDeUnidadDidactica.currentIndex))
                formularioDeInformacionDeArticulos.close()
            }
        }
        botonCerrar.onClicked: {
            formularioDeInformacionDeArticulos.close()
        }
        cajaDeOpcionesDeUnidadDidactica.focus: cajaDeOpcionesDeUnidadDidactica.focus ? cargarUnidadesDidacticas(cajaDeOpcionesDeUnidadCurricular.currentText) : false
        function desplegar(){
            cargarUnidadesCurriculares()
            cajaDeOpcionesDeUnidadCurricular.currentIndex = 0
            cargarUnidadesDidacticas(cajaDeOpcionesDeUnidadCurricular.currentText)
            cajaDeOpcionesDeUnidadDidactica.currentIndex = 0
        }
    }
}
