#include "UnidadDidactica.h"

UnidadDidactica::UnidadDidactica(QObject *parent) : QObject(parent)
{
    estadoDeAcceso = "En espera";
}

void UnidadDidactica::asignarCodigo(QString cod){
    codigo = cod;
}

QString UnidadDidactica::devolverCodigo(){
    return codigo;
}

void UnidadDidactica::asignarNombre(QString nom){
    nombre = nom;
}

QString UnidadDidactica::devolverNombre(){
    return nombre;
}

void UnidadDidactica::asignarRutaDeIcono(QString ruta){
    rutaDeIcono = ruta;
}

QString UnidadDidactica::devolverRutaDeIcono(){
    return rutaDeIcono;
}

void UnidadDidactica::asignarDescripcion (QString texto){
    descripcion = texto;
}

QString UnidadDidactica::devolverDescripcion(){
    return descripcion;
}

void UnidadDidactica::asignarEstadoDeAcceso(QString valorEstadoDeAcceso){
    estadoDeAcceso = valorEstadoDeAcceso;
}

QString UnidadDidactica::devolverEstadoDeAcceso(){
    return estadoDeAcceso;
}

void UnidadDidactica::asignarFechaReg(QString cadenaFecha){
    fechaReg.asignarCadenaFecha(cadenaFecha);
}

QString  UnidadDidactica::devolverFechaReg(){
    return fechaReg.convertirEnCadena();
}

void  UnidadDidactica::asignarFechaModif(QString cadenaFecha){
    fechaModif.asignarCadenaFecha(cadenaFecha);
}

QString  UnidadDidactica::devolverFechaModif(){
    return fechaModif.convertirEnCadena();
}

void UnidadDidactica::asignarNombreUsuario(QString valorNombre){
    usuario.asignarNombre(valorNombre);
}

QString UnidadDidactica::devolverNombreUsuario(){
    return usuario.devolverNombre();
}

void UnidadDidactica::asignarNombreCompletoUsuario(QString valorNombreCompleto){
    usuario.asignarNombreCompleto(valorNombreCompleto);
}

QString UnidadDidactica::devolverNombreCompletoUsuario(){
    return usuario.devolverNombreCompleto();
}

void UnidadDidactica::asignarCodigoArticulo(QString valorCodigo, int indice){
    articulos[indice].asignarCodigo(valorCodigo);
}

QString UnidadDidactica::devolverCodigoArticulo(int indice){
    return articulos[indice].devolverCodigo();
}

void UnidadDidactica::asignarTituloArticulo(QString valorTitulo, int indice){
    articulos[indice].asignarTitulo(valorTitulo);
}

QString UnidadDidactica::devolverTituloArticulo(int indice){
    return articulos[indice].devolverTitulo();
}

void UnidadDidactica::asignarRutaDeIconoArticulo(QString ruta, int indice){
    articulos[indice].asignarRutaDeIcono(ruta);
}

QString UnidadDidactica::devolverRutaDeIconoArticulo(int indice) {
    return articulos[indice].devolverRutaDeIcono();
}

void UnidadDidactica::asignarDescripcionArticulo(int indice, QString valorDescripcion)
{
    articulos[indice].asignarDescripcion(valorDescripcion);
}

QString UnidadDidactica::devolverDescripcionArticulo(int indice)
{
    return articulos[indice].devolverDescripcion();
}

void UnidadDidactica::asignarVisitasArticulo(int indice, int valorVisitas)
{
    articulos[indice].asignarVisitas(valorVisitas);
}

int UnidadDidactica::devolverVisitasArticulo(int indice)
{
    return articulos[indice].devolverVisitas();
}

void UnidadDidactica::asignarEstadoDeAccesoArticulo(int indice, QString valorEstadoDeAcceso)
{
    articulos[indice].asignarEstadoDeAcceso(valorEstadoDeAcceso);
}

QString UnidadDidactica::devolverEstadoDeAccesoArticulo(int indice)
{
    return articulos[indice].devolverEstadoDeAcceso();
}

void UnidadDidactica::asignarFechaRegArticulo(int indice, QString cadenaFecha)
{
    articulos[indice].asignarFechaReg(cadenaFecha);
}

QString UnidadDidactica::devolverFechaRegArticulo(int indice)
{
    return articulos[indice].devolverFechaReg();
}

void UnidadDidactica::asignarFechaModifArticulo(int indice, QString cadenaFecha)
{
    articulos[indice].asignarFechaModif(cadenaFecha);
}

QString UnidadDidactica::devolverFechaModifArticulo(int indice)
{
    return articulos[indice].devolverFechaModif();
}

bool UnidadDidactica::buscar(QString valorCodigo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT codigo FROM unidadesdidacticasengeneral WHERE(codigo='"+valorCodigo+"');", baseDeDatos);
    while (cargar.next()){
        if (valorCodigo == cargar.value(0).toString()){
            centinela = true;
            break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::buscar(QString valorNombre, QString valorCodigoUnidCurr)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT nombre, codigounidadcurricular FROM unidadesdidacticasengeneral WHERE(nombre='"+valorNombre+"' and codigounidadcurricular= '"+valorCodigoUnidCurr+"');", baseDeDatos);
    while (cargar.next()){
        if (valorNombre == cargar.value(0).toString() && valorCodigoUnidCurr == cargar.value(1).toString()){
            centinela = true;
            break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::guardar(QString valorCodigoUnidCurr)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO unidaddidactica(codigo, nombre, rutadeicono, descripcion, estadodeacceso, codigounidadcurricular, nombreusuario, fechareg, fechamodif)"
                       "VALUES ('"+codigo+"', '"+nombre+"', '"+rutaDeIcono+"', '"+descripcion+"', '"+estadoDeAcceso+"', '"+valorCodigoUnidCurr+"', '"+usuario.devolverNombre()+"', now() , now());", baseDeDatos);
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::cargar(QString valorCodigo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadesdidacticasengeneral WHERE(codigo='"+valorCodigo+"')", baseDeDatos);
    while (cargar.next()){
        if (valorCodigo == cargar.value(0).toString()){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            rutaDeIcono = cargar.value(2).toString();
            descripcion = cargar.value(3).toString();
            centinela = true;
            break;
        }
    }
    return centinela;
}

bool UnidadDidactica::cargarEnGeneral(int indice){
    bool centinela;
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadesdidacticasengeneral", baseDeDatos);
    while (cargar.next()){
        if (contador == indice){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            rutaDeIcono = cargar.value(2).toString();
            descripcion = cargar.value(3).toString();
            centinela = true;
            break;
        }
        contador++;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::cargarEnGeneral(QString valorCriterio, QString codigoUnidCurr)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadesdidacticasengeneral WHERE((codigo='"+valorCriterio+"' or nombre='"+valorCriterio+"') and codigounidadcurricular='"+codigoUnidCurr+"');", baseDeDatos);
    while (cargar.next()){
        if ((valorCriterio == cargar.value(0).toString() or valorCriterio == cargar.value(1).toString()) && codigoUnidCurr == cargar.value(5).toString()){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            rutaDeIcono = cargar.value(2).toString();
            descripcion = cargar.value(3).toString();
            centinela = true;
            break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::modificar(QString codigoUnidCurr){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery modificar("UPDATE unidaddidactica SET codigo='"+codigo+"', nombre='"+nombre+"', rutadeicono='"+rutaDeIcono+"', descripcion='"+descripcion+"', estadodeacceso='"+estadoDeAcceso+"', codigounidadcurricular='"+codigoUnidCurr+"', nombreusuario='"+usuario.devolverNombre()+"', fechamodif= now() WHERE (codigo ='"+codigo+"');", baseDeDatos);
    if(!modificar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadDidactica::eliminar(){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery eliminar("DELETE FROM unidaddidactica WHERE (codigo ='"+codigo+"');", baseDeDatos);
    if(!eliminar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

int UnidadDidactica::contarEnGeneral(){
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM vistapreliminar;", baseDeDatos);
    while (cargar.next()){
        contador++;
    }
    conectarBaseDeDatos(false);
    return contador;
}
bool UnidadDidactica::cargarArticulosEnGeneral()
{
    bool centinela = false;
    int contador = 0;
    if (contarArticulosEnGeneral() > 0){
        articulos = new Articulo[contarArticulosEnGeneral()];
        conectarBaseDeDatos(true);
        QSqlQuery cargar("SELECT *FROM articulo WHERE (codigounidaddidactica='"+codigo+"');", baseDeDatos);
        while (cargar.next()){
            articulos[contador].asignarCodigo(cargar.value(0).toString());
            articulos[contador].asignarTitulo(cargar.value(1).toString());
            articulos[contador].asignarDesambiguacion(cargar.value(2).toString());
            articulos[contador].asignarRutaDeIcono(cargar.value(3).toString());
            articulos[contador].asignarDescripcion(cargar.value(4).toString());
            articulos[contador].asignarVisitas(cargar.value(5).toInt());
            articulos[contador].asignarEstadoDeAcceso(cargar.value(6).toString());
            articulos[contador].asignarFechaReg(cargar.value(8).toString());
            articulos[contador].asignarFechaModif(cargar.value(9).toString());
            contador = contador +1;
        }
        conectarBaseDeDatos(false);
    }
    return centinela;
}

int UnidadDidactica::contarArticulosEnGeneral(){
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery consulta("SELECT COUNT(codigo) FROM articulosengeneral WHERE (codigounidaddidactica='"+codigo+"');", baseDeDatos);
    while (consulta.next()){
            contador = consulta.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}

bool UnidadDidactica::cargarArticulosDisponibles()
{
    bool centinela = false;
    int contador = 0;
    if (contarArticulosDisponibles() > 0){
        articulos = new Articulo[contarArticulosDisponibles()];
        conectarBaseDeDatos(true);
        QSqlQuery cargar("SELECT *FROM articulosdisponibles WHERE (codigounidaddidactica='"+codigo+"');", baseDeDatos);
        while (cargar.next()){
            articulos[contador].asignarCodigo(cargar.value(0).toString());
            articulos[contador].asignarTitulo(cargar.value(1).toString());
            articulos[contador].asignarDesambiguacion(cargar.value(2).toString());
            articulos[contador].asignarRutaDeIcono(cargar.value(3).toString());
            articulos[contador].asignarDescripcion(cargar.value(4).toString());
            articulos[contador].asignarEtiqueta(cargar.value(5).toString());
            articulos[contador].asignarDescripcion(cargar.value(6).toString());

            contador = contador +1;
        }
        conectarBaseDeDatos(false);
    }
    return centinela;
}

int UnidadDidactica::contarArticulosDisponibles()
{
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery consulta("SELECT COUNT(codigo) FROM articulosdisponibles WHERE (codigounidaddidactica='"+codigo+"');", baseDeDatos);
    while (consulta.next()){
            contador = consulta.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}


bool UnidadDidactica::conectarBaseDeDatos(bool accion)
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

