#include "Usuario.h"

Usuario::Usuario(QObject *parent) : QObject(parent){
    nivel = 0;
    estadoDeAcceso = "En espera";
    disponibilidad = "Fuera";
}

Usuario::~Usuario(){

}
void Usuario::asignarNombre(QString nom){
    nombre = nom;
}

QString Usuario::devolverNombre(){
    return nombre;
}

void Usuario::asignarNombreCompleto(QString nomCompleto){
    nombreCompleto = nomCompleto;
}

QString Usuario::devolverNombreCompleto(){
    return nombreCompleto;
}

void Usuario::asignarPrivilegios(QString priv){
    privilegios = priv;
}

QString Usuario::devolverPrivilegios(){
    return privilegios;
}

void Usuario::asignarNivel(int niv) {
    nivel = niv;
}

int Usuario::devolverNivel(){
    return nivel;
}

void Usuario::asignarRutaDeFotoDePerfil(QString valorRutaDeFotoDePerfil)
{
    rutaDeFotoDePerfil = valorRutaDeFotoDePerfil;
}

QString Usuario::devolverRutaDeFotoDePerfil()
{
    return rutaDeFotoDePerfil;
}

void Usuario::asignarContrasea(QString contras){
    contrasea = contras;
}

QString Usuario::devolverContrasea(){
    return contrasea;
}

void Usuario::asignarEstadoDeAcceso(QString estad){
    estadoDeAcceso = estad;
}

QString Usuario::devolverEstadoDeAcceso ( ) {
    return estadoDeAcceso;
}

void Usuario::asignarFechaReg(QString cadenaFecha){
    fechaReg.asignarCadenaFecha(cadenaFecha);
}

QString Usuario::devolverFechaReg(){
    return fechaReg.convertirEnCadena();
}

void Usuario::asignarFechaAcceso(QString cadenaFecha){
    fechaAcceso.asignarCadenaFecha(cadenaFecha);
}

QString Usuario::devolverFechaAcceso(){
    return fechaAcceso.convertirEnCadena();
}

void Usuario::asignarDisponibilidad(QString valorDisponibilidad)
{
    disponibilidad = valorDisponibilidad;
}

QString Usuario::devolverDisponibilidad()
{
    return disponibilidad;
}

bool Usuario::buscar(QString valorNombreUsuario){
    bool bandera = false;
    conectarBaseDeDatos(true);
    QSqlQuery buscar("SELECT *FROM usuario WHERE(nombre='"+valorNombreUsuario+"');", baseDeDatos);
    while (buscar.next()){
        if (valorNombreUsuario == buscar.value(0).toString()){
            bandera = true; break;
        }
    }
    conectarBaseDeDatos(false);
    return bandera;
}

bool Usuario::cargar(QString valorNombreUsuario){
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM usuario WHERE (nombre='"+valorNombreUsuario+"');", baseDeDatos);
    while (cargar.next()){
        if (valorNombreUsuario == cargar.value(0).toString()){
            nombre = cargar.value(0).toString();
            nombreCompleto = cargar.value(1).toString();
            privilegios = cargar.value(2).toString();
            nivel = cargar.value(3).toInt();
            rutaDeFotoDePerfil = cargar.value(4).toString();
            contrasea = cargar.value(5).toString();
            estadoDeAcceso = cargar.value(6).toString();
            disponibilidad = cargar.value(7).toString();
            fechaReg.asignarCadenaFecha(cargar.value(8).toString());
            fechaAcceso.asignarCadenaFecha(cargar.value(9).toString());
            centinela = true;
        }
    }
    return centinela;
}

bool Usuario::guardar()
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO usuario(nombre, nombrecompleto, privilegios, nivel, rutadefotodeperfil, contrasea, estadodeacceso, disponibilidad, fechareg)"
                       "VALUES ('"+nombre+"', '"+nombreCompleto+"', '"+privilegios+"', '"+QString::number(nivel)+"', '"+rutaDeFotoDePerfil+"', '"+contrasea+"', '"+estadoDeAcceso+"', '"+disponibilidad+"', now());", baseDeDatos);
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Usuario::conectarBaseDeDatos(bool accion)
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

