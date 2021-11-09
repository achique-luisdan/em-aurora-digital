#include "Mensaje.h"

Mensaje::Mensaje(QObject *parent) : QObject(parent)
{
    id = 0;
}

void Mensaje::asignarId(long valorId)
{
    id = valorId;
}

long Mensaje::devolverId()
{
    return id;
}

void Mensaje::asignarTipo(QString valorTipo)
{
    tipo = valorTipo;
}

QString Mensaje::devolverTipo()
{
    return tipo;
}

void Mensaje::asignarAsunto(QString valorAsunto)
{
    asunto = valorAsunto;
}

QString Mensaje::devolverAsunto()
{
    return asunto;
}

void Mensaje::asignarTexto(QString valorTexto)
{
    texto = valorTexto;
}

QString Mensaje::devolverTexto()
{
    return texto;
}

void Mensaje::asignarVisto(bool valorVisto)
{
    visto = valorVisto;
}

bool Mensaje::devolverVisto()
{
    return visto;
}

void Mensaje::asignarFechaEnvio(QString cadenaFecha)
{
    fechaEnvio.asignarCadenaFecha(cadenaFecha);
}

QString Mensaje::devolverFechaEnvio()
{
    return fechaEnvio.convertirEnCadena();
}

void Mensaje::asignarFechaRecibido(QString cadenaFecha)
{
    fechaRecibido.asignarCadenaFecha(cadenaFecha);
}

QString Mensaje::devolverFechaRecibido()
{
    return fechaRecibido.convertirEnCadena();
}

void Mensaje::asignarNombreEmisor(QString valorNombre)
{
    emisor.asignarNombre(valorNombre);
}

QString Mensaje::devolverNombreEmisor()
{
    return emisor.devolverNombre();
}

void Mensaje::asignarNombreCompletoEmisor(QString valorNombreCompleto)
{
    emisor.asignarNombreCompleto(valorNombreCompleto);
}

QString Mensaje::devolverNombreCompletoEmisor()
{
    return emisor.devolverNombreCompleto();
}

void Mensaje::asignarNombreReceptor(QString valorNombre)
{
    receptor.asignarNombre(valorNombre);
}

QString Mensaje::devolverNombreReceptor()
{
    return receptor.devolverNombre();
}

void Mensaje::asignarNombreCompletoReceptor(QString valorNombreCompleto)
{
    receptor.asignarNombreCompleto(valorNombreCompleto);
}

QString Mensaje::devolverNombreCompletoReceptor()
{
    return receptor.devolverNombreCompleto();
}

bool Mensaje::guardar()
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO mensaje(emisor, receptor, tipo, asunto, texto, visto, fechaenvio)"
               "VALUES ('"+emisor.devolverNombre()+"', '"+receptor.devolverNombre()+"', '"+tipo+"', '"+asunto+"', '"+texto+"', 'FALSE', now());", baseDeDatos);
    qDebug() <<"INSERT INTO mensaje(emisor, receptor, tipo, asunto, texto, visto, fechaenvio)"
               "VALUES ('"+emisor.devolverNombre()+"', '"+receptor.devolverNombre()+"', '"+tipo+"', '"+asunto+"', '"+texto+"', 'FALSE', now());";
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool Mensaje::cargarRecibido(long indice, QString usuario)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    long contador= 0;
    QSqlQuery cargar("SELECT *FROM mensaje WHERE (receptor='"+usuario+"');", baseDeDatos);
    while (cargar.next()){
        if (usuario == cargar.value(2).toString() && contador == indice){
            id = cargar.value(0).toLongLong();
            emisor.asignarNombre(cargar.value(1).toString());
            receptor.asignarNombre(cargar.value(2).toString());
            tipo = cargar.value(3).toString();
            asunto = cargar.value(4).toString();
            texto = cargar.value(5).toString();
            visto = cargar.value(6).toBool();
            fechaEnvio.asignarCadenaFecha(cargar.value(7).toString());
            fechaRecibido.asignarCadenaFecha(cargar.value(8).toString());
            centinela = true;
        }
        contador++;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

long Mensaje::contarRecibido(QString usuario)
{
    conectarBaseDeDatos(true);
    long contador= 0;
    QSqlQuery cargar("SELECT *FROM mensaje WHERE (receptor='"+usuario+"');", baseDeDatos);
    while (cargar.next()){
        if (usuario == cargar.value(2).toString()){
            contador++;
        }
    }
    conectarBaseDeDatos(false);
    return contador;
}



bool Mensaje::conectarBaseDeDatos(bool accion)
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


