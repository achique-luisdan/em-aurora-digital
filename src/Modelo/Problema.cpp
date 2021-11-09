#include "Problema.h"

Problema::Problema(QObject *parent) : QObject(parent){
    id = 0;
}

Problema::~Problema(){

}

void Problema::asignarId(long valorId)
{
    id = valorId;
}

long Problema::devolverId()
{
    return id;
}

void Problema::asignarNombre(QString valorNombre){
    nombre = valorNombre;
}

QString Problema::devolverNombre(){
    return nombre;
}

void Problema::asignarEnunciado(QString valorEnunciado)
{
    enunciado = valorEnunciado;
}

QString Problema::devolverEnunciado()
{
    return enunciado;
}

void Problema::asignarComplejidad(QString valorComplejidad)
{
    complejidad = valorComplejidad;
}

QString Problema::devolverComplejidad()
{
    return complejidad;
}

void Problema::asignarEstadoDeAcceso(QString valorEstadoDeAcceso){
    estadoDeAcceso = valorEstadoDeAcceso;
}

QString Problema::devolverEstadoDeAcceso(){
    return estadoDeAcceso;
}

void Problema::asignarDiaFechaReg(int valorDia){
    fechaReg.asignarDia(valorDia);
}

int Problema::devolverDiaFechaReg()
{
    return fechaReg.devolverDia();
}

void Problema::asignarMesFechaReg(int valorMes){
    fechaReg.asignarMes(valorMes);
}

int Problema::devolverMesFechaReg(){
    return fechaReg.devolverMes();
}

void Problema::asignarAoFechaReg(int valorAo){
    fechaReg.asignarAo(valorAo);
}

int Problema::devolverAoFechaReg(){
    return fechaReg.devolverAo();
}

void Problema::asignarHoraFechaReg(int valorHora){
    fechaReg.asignarHora(valorHora);
}

int Problema::devolverHoraFechaReg(){
    return fechaReg.devolverHora();
}

void Problema::asignarMinFechaReg(int valorMin){
    fechaReg.asignarMin(valorMin);
}

int Problema::devolverMinFechaReg(){
    return fechaReg.devolverMin();
}

void Problema::asignarSegFechaReg(int valorSeg){
    fechaReg.asignarSeg(valorSeg);
}

int Problema::devolverSegFechaReg(){
    return fechaReg.devolverSeg();
}

void Problema::asignarDiaFechaModif(int valorDia){
    fechaModif.asignarDia(valorDia);
}

int Problema::devolverDiaFechaModif(){
    return fechaModif.devolverDia();
}

void Problema::asignarMesFechaModif(int valorMes){
    fechaModif.asignarMes(valorMes);
}

int Problema::devolverMesFechaModif(){
    return fechaModif.devolverMes();
}

void Problema::asignarAoFechaModif(int valorAo){
    fechaModif.asignarAo(valorAo);
}

int Problema::devolverAoFechaModif(){
    return fechaModif.devolverAo();
}

void Problema::asignarHoraFechaModif(int valorHora){
    fechaModif.asignarHora(valorHora);
}

int Problema::devolverHoraFechaModif(){
    return fechaModif.devolverHora();
}

void Problema::asignarMinFechaModif(int valorMin){
    fechaModif.asignarMin(valorMin);
}

int Problema::devolverMinFechaModif(){
    return fechaModif.devolverMin();
}

void Problema::asignarSegFechaModif(int valorSeg){
    fechaModif.asignarSeg(valorSeg);
}

int Problema::devolverSegFechaModif(){
    return fechaModif.devolverSeg();
}
