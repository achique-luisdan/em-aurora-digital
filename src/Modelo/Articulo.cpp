#include "Articulo.h"

Articulo::Articulo(QObject *parent) : QObject(parent){
    codigo = "SINCOD00";
    titulo= "Sin título";
    desambiguacion = "Ninguna";
    rutaDeIcono = "file://home/luisdan/prototipo-13-11-2016/Iconos/pordefecto.png";
    descripcion = "Sin descripción";
    etiqueta = "Sin destacar";
    visitas = 0;
    estadoDeAcceso= "En espera";


}

Articulo::~Articulo(){

}
void Articulo::asignarCodigo(QString valorCodigo){
    codigo = valorCodigo;
}

QString Articulo::devolverCodigo(){
    return codigo;
}

void Articulo::asignarTitulo(QString valorTitulo){
    titulo = valorTitulo;
}

QString Articulo::devolverTitulo(){
    return titulo;
}

void Articulo::asignarDesambiguacion(QString valorDesambiguacion){
    desambiguacion = valorDesambiguacion;
}

QString Articulo::devolverDesambiguacion(){
    return desambiguacion;
}

void Articulo::asignarRutaDeIcono(QString valorRutaDeIcono){
    rutaDeIcono = valorRutaDeIcono;
}

QString Articulo::devolverRutaDeIcono(){
    return rutaDeIcono;
}

void Articulo::asignarDescripcion(QString valorDescripcion){
    descripcion = valorDescripcion;
}

QString Articulo::devolverDescripcion(){
    return descripcion;
}

void Articulo::asignarEtiqueta(QString valorEtiqueta)
{
    etiqueta = valorEtiqueta;
}

QString Articulo::devolverEtiqueta()
{
    return etiqueta;
}

void Articulo::asignarVisitas(long valorVisitas){
    visitas = valorVisitas;
}

long Articulo::devolverVisitas(){
    return visitas;
}

void Articulo::asignarEstadoDeAcceso(QString valorEstadoDeAcceso){
    estadoDeAcceso = valorEstadoDeAcceso;
}

QString Articulo::devolverEstadoDeAcceso(){
    return estadoDeAcceso;
}

void Articulo::asignarFechaReg(QString cadenaFecha){
    fechaReg.asignarCadenaFecha(cadenaFecha);
}

QString Articulo::devolverFechaReg(){
    return fechaReg.convertirEnCadena();
}

void Articulo::asignarFechaModif(QString cadenaFecha){
    fechaModif.asignarCadenaFecha(cadenaFecha);
}

QString Articulo::devolverFechaModif(){
    return fechaModif.convertirEnCadena();
}

void Articulo::asignarCodigoSeccion(QString valorCodigo, int indice) {
    secciones[indice].asignarCodigo(valorCodigo);
}

QString Articulo::devolverCodigoSeccion(int indice) {
    return secciones[indice].devolverCodigo();
}

void Articulo::asignarTituloSeccion(QString valorTitulo, int indice){
    secciones[indice].asignarTitulo(valorTitulo);
}

QString Articulo::devolverTituloSeccion(int indice){
    return secciones[indice].devolverTitulo();
}

void Articulo::asignarTipoSeccion(QString valorTipo, int indice){
    secciones[indice].asignarTipo(valorTipo);
}

QString Articulo::devolverTipoSeccion(int indice){
    return secciones[indice].devolverTipo();
}

void Articulo::asignarNivelSeccion(int valorNivel, int indice){
    secciones[indice].asignarNivel(valorNivel);
}

int Articulo::devolverNivelSeccion(int indice){
    return secciones[indice].devolverNivel();
}

void Articulo::asignarTextoSeccion(QString valorTexto, int indice){
    secciones[indice].asignarTexto(valorTexto);
}

QString Articulo::devolverTextoSeccion(int indice){
    return secciones[indice].devolverTexto();
}

void Articulo::asignarEstadoDeAccesoSeccion(QString valorEstadoDeAcceso, int indice){
    secciones[indice].asignarEstadoDeAcceso(valorEstadoDeAcceso);
}

QString Articulo::devolverEstadoDeAccesoSeccion(int indice){
    return secciones[indice].devolverEstadoDeAcceso();
}

void Articulo::asignarNombreUsuario(QString valorNombre, int indice){
    usuarios[indice].asignarNombre(valorNombre);
}

QString Articulo::devolverNombreUsuario(int indice){
    return usuarios[indice].devolverNombre();
}

void Articulo::asignarNombreCompletoUsuario(QString valorNombreCompleto, int indice){
    usuarios[indice].asignarNombreCompleto(valorNombreCompleto);
}

QString Articulo::devolverNombreCompletoUsuario(int indice){
    return usuarios[indice].devolverNombreCompleto();
}

bool Articulo::buscar(QString valorCodigo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT codigo FROM articulosengeneral WHERE (codigo='"+valorCodigo+"');", baseDeDatos);
    while (cargar.next()) {
        if(valorCodigo == cargar.value(0).toString()){
            centinela = true;break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::buscar(QString valorCodigo, QString valorCodigoUnidadDidactica)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT codigo FROM articulosengeneral WHERE (codigo = '"+valorCodigo+"' and codigounidaddidactica = '"+valorCodigoUnidadDidactica+"');", baseDeDatos);
    while (cargar.next()) {
        if(valorCodigo == cargar.value(0).toString() and valorCodigoUnidadDidactica == cargar.value(7).toString())
        centinela = true;break;
    }
    conectarBaseDeDatos(false);
    return centinela;

}

bool Articulo::cargar(QString valorCodigo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM articulo WHERE (codigo='"+valorCodigo+"');", baseDeDatos);
    while (cargar.next()) {
        if(valorCodigo == cargar.value(0).toString()){
            codigo = cargar.value(0).toString();
            titulo = cargar.value(1).toString();
            desambiguacion = cargar.value(2).toString();
            rutaDeIcono = cargar.value(3).toString();
            descripcion = cargar.value(4).toString();
            etiqueta = cargar.value(5).toInt();
            visitas = cargar.value(6).toInt();
            estadoDeAcceso = cargar.value(7).toString();
            fechaReg.asignarCadenaFecha(cargar.value(9).toString());
            fechaModif.asignarCadenaFecha(cargar.value(10).toString());
            centinela = true;break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::cargarDisponibles(QString valorCodigoArticulo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM articulosdisponibles WHERE (codigo='"+valorCodigoArticulo+"');", baseDeDatos);
    while (cargar.next()) {
        if(valorCodigoArticulo == cargar.value(0).toString()){
            codigo = cargar.value(0).toString();
            titulo = cargar.value(1).toString();
            desambiguacion = cargar.value(2).toString();
            rutaDeIcono = cargar.value(3).toString();
            descripcion = cargar.value(4).toString();
            etiqueta = cargar.value(5).toInt();
            centinela = true;break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::guardar(QString valorCodigoUnidadDidactica)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO articulo(codigo, titulo, desambiguacion, rutadeicono, descripcion, etiqueta, visitas, estadodeacceso, codigounidaddidactica, fechareg, fechamodif)"
                       "VALUES ('"+codigo+"', '"+titulo+"', '"+desambiguacion+"', '"+rutaDeIcono+"', '"+descripcion+"', '"+etiqueta+"', "+QString::number(visitas)+", '"+estadoDeAcceso+"', '"+valorCodigoUnidadDidactica+"', now(), now());", baseDeDatos);
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::modificar(QString valorCodigoUnidadDidactica)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery modificar("UPDATE articulo  SET codigo='"+codigo+"', titulo='"+titulo+"', desambiguacion='"+desambiguacion+"', rutadeicono='"+rutaDeIcono+"', descripcion='"+descripcion+"', etiqueta='"+etiqueta+"', "
                        "visitas="+QString::number(visitas)+", estadodeacceso='"+estadoDeAcceso+"', codigounidaddidactica='"+valorCodigoUnidadDidactica+"', fechamodif=now() WHERE (codigo='"+codigo+"');", baseDeDatos);
    if(!modificar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::actualizarCodigo(QString valorCodigo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery modificar("UPDATE articulo SET codigo='"+valorCodigo+"' WHERE (codigo='"+codigo+"');", baseDeDatos);
    qDebug ()<< "UPDATE articulo SET codigo='"+valorCodigo+"' WHERE (codigo='"+codigo+"');";
    if(!modificar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::eliminar(){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery eliminar("DELETE FROM articulo WHERE (codigo ='"+codigo+"');", baseDeDatos);
    if(!eliminar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Articulo::cargarSeccionesEnGeneral()
{
    bool centinela = false;
    int contador = 0;
    if (contarSeccionesEnGeneral() > 0){
        secciones = new Seccion[contarSeccionesEnGeneral()];
        conectarBaseDeDatos(true);
        QSqlQuery cargar("SELECT *FROM seccionesengeneral WHERE (codigoarticulo='"+codigo+"');", baseDeDatos);
        while (cargar.next()){
            if(codigo == cargar.value(6)){
                secciones[contador].asignarCodigo(cargar.value(0).toString());
                secciones[contador].asignarTitulo(cargar.value(1).toString());
                secciones[contador].asignarTipo(cargar.value(2).toString());
                secciones[contador].asignarNivel(cargar.value(3).toInt());
                secciones[contador].asignarTexto(cargar.value(4).toString());
                secciones[contador].asignarEstadoDeAcceso(cargar.value(5).toString());
                contador = contador +1;
            }
        }
        conectarBaseDeDatos(false);
    }
    return centinela;
}

int Articulo::contarSeccionesEnGeneral(){
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery consulta("SELECT COUNT(codigo) FROM seccionesengeneral WHERE (codigoarticulo='"+codigo+"');", baseDeDatos);
    while (consulta.next()){
        contador = consulta.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}


bool Articulo::conectarBaseDeDatos(bool accion)
{
    bool centinela = false;
    if (accion){
        if(QSqlDatabase::contains("contenido-oficial-db")){
            baseDeDatos = QSqlDatabase::database("contenido-oficial-db");
        }
        else {
            baseDeDatos = QSqlDatabase::addDatabase("QPSQL", "contenido-oficial-db");
            baseDeDatos.setHostName("localhost");
            baseDeDatos.setDatabaseName("contenido_oficial_db");
            baseDeDatos.setUserName("desarrollador");
            baseDeDatos.setPassword("ProV01Evo");
        }
        if(!baseDeDatos.open()){
            centinela = false;
        }
        else {
            centinela = true;
        }
    }
    else {
        baseDeDatos.close();;
    }
    return centinela;
}

