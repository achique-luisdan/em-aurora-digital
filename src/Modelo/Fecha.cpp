#include "Fecha.h"

Fecha::Fecha(){
    dia = mes = ao = hora = min = seg = 0;
}

Fecha::~Fecha(){

}

int Fecha::devolverDia(){
    return dia;
}

void Fecha::asignarDia (int valorDia){
    dia = valorDia;
}
int Fecha::devolverMes(){
    return mes;
}

void Fecha::asignarMes(int valorMes){
    mes =valorMes;
}

int Fecha::devolverAo(){
    return ao;
}

void Fecha::asignarAo(int valorAo){
    ao = valorAo;
}

int Fecha::devolverHora(){
    return hora;
}

void Fecha::asignarHora(int valorHora){
    hora = valorHora;
}

int Fecha::devolverMin(){
    return min;
}

void Fecha::asignarMin(int valorMin){
    min = valorMin;
}

int Fecha::devolverSeg(){
    return seg;
}

void Fecha::asignarSeg(int valorSeg){
    seg = valorSeg;
}

QString Fecha::convertirEnCadena(){
    QString cadena;
    cadena = cadena.number(ao);
    cadena = cadena + '-' + cadena.number(mes);
    cadena = cadena + '-' + cadena.number(dia);
    cadena = cadena + ' ' + cadena.number(hora);
    cadena = cadena + ':' + cadena.number(min);
    cadena = cadena + ':' + cadena.number(seg);
    return cadena;
}

void Fecha::asignarCadenaFecha(QString fecha){
    QString aux = "";
    for (int c = 0 ; c < 4; c = c+1) {
        aux[c] = fecha[c];
    }
    ao = aux.toInt();
    aux = "";
    for (int c = 5 ; c < 7; c = c+1){
        aux =  aux + fecha[c];
    }
    mes = aux.toInt();
    aux = "";
    for (int c = 8 ; c < 10; c = c+1){
        aux =  aux + fecha[c];
    }
    dia= aux.toInt();
    aux = "";
    for (int c = 11 ; c < 13; c = c+1){
        aux =  aux + fecha[c];
    }
    hora = aux.toInt();
    aux = "";
    for (int c =14 ; c < 16; c = c+1){
        aux =  aux + fecha[c];
    }
    min = aux.toInt();
    aux = "";
    for (int c =17 ; c < 19; c = c+1){
        aux =  aux + fecha[c];
    }
    seg = aux.toInt();
}
