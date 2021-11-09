#include "Seccion.h"

Seccion::Seccion(QObject *parent) : QObject(parent){
    tipo = "Introductoria";
    nivel = 2;
}

Seccion::~Seccion(){

}

void Seccion::asignarCodigo(QString valorCodigo){
    codigo = valorCodigo;
}

QString Seccion::devolverCodigo(){
    return codigo;
}

void Seccion::asignarTitulo(QString valorTitulo){
    titulo = valorTitulo;
}

QString Seccion::devolverTitulo(){
    return titulo;
}


void Seccion::asignarTipo(QString valorTipo){
    tipo = valorTipo;
}

QString Seccion::devolverTipo(){
    return tipo;
}

void Seccion::asignarNivel(int niv) {
    nivel = niv;
}

int Seccion::devolverNivel(){
    return nivel;
}

void Seccion::asignarTexto(QString valorTexto)
{
    texto = valorTexto;
}

QString Seccion::devolverTexto()
{
    return texto;
}

void Seccion::asignarEstadoDeAcceso(QString valorEstadoDeAcceso){
    estadoDeAcceso = valorEstadoDeAcceso;
}

QString Seccion::devolverEstadoDeAcceso(){
    return estadoDeAcceso;
}

void Seccion::asignarFechaReg(QString cadenaFecha){
    fechaReg.asignarCadenaFecha(cadenaFecha);
}

QString Seccion::devolverFechaReg(){
    return fechaReg.convertirEnCadena();
}

void Seccion::asignarFechaModif(QString cadenaFecha){
    fechaModif.asignarCadenaFecha(cadenaFecha);
}

QString Seccion::devolverFechaModif(){
    return fechaModif.convertirEnCadena();
}

bool Seccion::cargar(QString valorCodigo){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM seccion WHERE (codigo='"+valorCodigo+"');", baseDeDatos);
    while (cargar.next()) {
        codigo = cargar.value(0).toString();
        titulo = cargar.value(1).toString();
        tipo = cargar.value(2).toString();
        nivel = cargar.value(3).toInt();
        texto = cargar.value(4).toString();
        estadoDeAcceso = cargar.value(5).toString();
        fechaReg.asignarCadenaFecha(cargar.value(6).toString());
        fechaModif.asignarCadenaFecha(cargar.value(7).toString());
        centinela = true;break;

    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Seccion::guardar(QString valorCodigoArticulo){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO seccion(codigo, titulo, tipo, nivel, texto, estadodeacceso, codigoarticulo, fechareg, fechamodif)"
               "VALUES ('"+codigo+"', '"+titulo+"', '"+tipo+"', "+QString::number(nivel)+", '"+texto+"', '"+estadoDeAcceso+"', '"+valorCodigoArticulo+"', now(), now());", baseDeDatos);
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Seccion::modificar(QString valorCodigoArticulo)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery modificar("UPDATE seccion SET codigo='"+codigo+"', titulo='"+titulo+"', tipo='"+tipo+"', nivel="+QString::number(nivel)+", texto='"+texto+"', estadodeacceso='"+estadoDeAcceso+"',  codigoarticulo='"+valorCodigoArticulo+"', fechamodif=now() WHERE (codigo= '"+codigo+"');", baseDeDatos);
    if(!modificar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Seccion::eliminar()
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery eliminar("DELETE FROM seccion WHERE (codigo ='"+codigo+"');", baseDeDatos);
    if(!eliminar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}


bool Seccion::conectarBaseDeDatos(bool accion)
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

