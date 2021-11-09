#include "UnidadCurricular.h"

UnidadCurricular::UnidadCurricular(QObject *parent) : QObject(parent)
{
    creditos = duracion = trayecto = 0;
    estadoDeAcceso = "En espera";
}

UnidadCurricular::~UnidadCurricular(){

}

void UnidadCurricular::asignarCodigo(QString valorCodigo){
    codigo = valorCodigo;
}

QString UnidadCurricular::devolverCodigo(){
    return codigo;
}

void UnidadCurricular::asignarNombre(QString valorNombre){
    nombre = valorNombre;
}

QString UnidadCurricular::devolverNombre(){
    return nombre;
}

void UnidadCurricular::asignarTipo(QString valorTipo){
    tipo = valorTipo;
}

QString UnidadCurricular::devolverTipo(){
    return tipo;
}

void UnidadCurricular::asignarCreditos(int valorCreditos){
    creditos = valorCreditos;
}

int UnidadCurricular::devolverCreditos(){
    return creditos;
}

void UnidadCurricular::asignarDensidad(QString valorDensidad){
    densidad = valorDensidad;
}

QString UnidadCurricular::devolverDensidad(){
    return densidad;
}

void UnidadCurricular::asignarDuracion(int valorDuracion){
    duracion = valorDuracion;
}

int UnidadCurricular::devolverDuracion(){
    return duracion;
}

void UnidadCurricular::asignarTrayecto(int valorTrayecto){
    trayecto = valorTrayecto;
}

int UnidadCurricular::devolverTrayecto(){
    return trayecto;
}

void UnidadCurricular::asignarRutaDeIconoPrim(QString valorRuta){
    rutaDeIconoPrim = valorRuta;
}

QString UnidadCurricular::devolverRutaDeIconoPrim(){
    return rutaDeIconoPrim;
}

void UnidadCurricular::asignarRutaDeIconoSec(QString ruta) {
    rutaDeIconoSec = ruta;
}

QString UnidadCurricular::devolverRutaDeIconoSec(){
    return rutaDeIconoSec;
}

void UnidadCurricular::asignarDescripcion(QString texto){
    descripcion = texto;
}

QString UnidadCurricular::devolverDescripcion(){
    return descripcion;
}

void UnidadCurricular::asignarEstrategiasSugeridas(QString valorEstrategiasSugeridas){
    estrategiasSugeridas = valorEstrategiasSugeridas;
}

QString UnidadCurricular::devolverEstrategiasSugeridas(){
    return estrategiasSugeridas;
}

void UnidadCurricular::asignarEstadoDeAcceso(QString valorEstadoDeAcceso){
    estadoDeAcceso = valorEstadoDeAcceso;
}

QString UnidadCurricular::devolverEstadoDeAcceso(){
    return estadoDeAcceso;
}

void UnidadCurricular::asignarFechaReg(QString cadenaFecha){
    fechaReg.asignarCadenaFecha(cadenaFecha);
}

QString  UnidadCurricular::devolverFechaReg(){
    return fechaReg.convertirEnCadena();
}

void  UnidadCurricular::asignarFechaModif(QString cadenaFecha){
    fechaModif.asignarCadenaFecha(cadenaFecha);
}

QString  UnidadCurricular::devolverFechaModif(){
    return fechaModif.convertirEnCadena();
}

void UnidadCurricular::asignarNombreUsuario(QString valorNombre){
    usuario.asignarNombre(valorNombre);
}

QString UnidadCurricular::devolverNombreUsuario(){
    return usuario.devolverNombre();
}

void UnidadCurricular::asignarNombreCompletoUsuario(QString valorNombreCompleto){
    usuario.asignarNombreCompleto(valorNombreCompleto);
}

QString UnidadCurricular::devolverNombreCompletoUsuario(){
    return usuario.devolverNombreCompleto();
}

void UnidadCurricular::asignarCodigoUnidadDidactica(int indice, QString valorCodigo){
    if (indice > contarUnidadesDidacticasEnGeneral()){
        unidadesdidacticas = new UnidadDidactica[indice];
        unidadesdidacticas[indice].asignarCodigo(valorCodigo);
    }
}

QString UnidadCurricular::devolverCodigoUnidadDidactica(int indice){
    return unidadesdidacticas[indice].devolverCodigo();
}

void UnidadCurricular::asignarNombreUnidadDidactica(int indice, QString valorNombre){
    unidadesdidacticas[indice].asignarNombre(valorNombre);
}

QString UnidadCurricular::devolverNombreUnidadDidactica(int indice){
    return unidadesdidacticas[indice].devolverNombre();
}

void UnidadCurricular::asignarRutaDeIconUnidadDidactica(int indice, QString ruta){
    unidadesdidacticas[indice].asignarRutaDeIcono(ruta);
}

QString UnidadCurricular::devolverRutaDeIconUnidadDidactica(int indice){
    return unidadesdidacticas[indice].devolverRutaDeIcono();
}

void UnidadCurricular::asignarDescripcionUnidadDidactica(int indice, QString texto){
    unidadesdidacticas[indice].asignarDescripcion(texto);
}

QString UnidadCurricular::devolverDescripcionUnidadDidactica(int indice){
    return unidadesdidacticas[indice].devolverDescripcion();
}

void UnidadCurricular::asignarNombreUsuarioUnidadDidactica(int indice, QString valorNombre)
{
    unidadesdidacticas[indice].asignarNombreUsuario(valorNombre);
}

QString UnidadCurricular::devolverNombreUsuarioUnidadDidactica(int indice)
{
    return unidadesdidacticas[indice].devolverNombreUsuario();
}

void UnidadCurricular::asignarEstadoDeAccesoUnidadDidactica(int indice, QString valorEstadoDeAcceso)
{
    unidadesdidacticas[indice].asignarEstadoDeAcceso(valorEstadoDeAcceso);
}

QString UnidadCurricular::devolverEstadoDeAccesoUnidadDidactica(int indice)
{
    return unidadesdidacticas[indice].devolverEstadoDeAcceso();
}

void UnidadCurricular::asignarFechaModifUnidadDidactica(int indice, QString cadenaFecha)
{
    unidadesdidacticas[indice].asignarFechaModif(cadenaFecha);
}

QString UnidadCurricular::devolverFechaModifUnidadDidactica(int indice)
{
    return unidadesdidacticas[indice].devolverFechaModif();
}

QString UnidadCurricular::generalCodigo()
{
    QString cadena, copia = nombre; copia.append(' '); QChar inicial;
    int contador = 0, letras = 0;
    if(copia.length() > 0){
        while (contador < copia.length()){
            if (copia.at(contador) != ' '){
                letras++;
                if (letras == 1){
                    inicial = copia.at(contador);
                }
            }
            else {
                if (letras > 2){
                    cadena.append(inicial);
                }
                letras = 0;
            }
            contador++;
        }
    }
    contador = 0;
    QString dominioMin = "abcdefghijklmnopqrstuvwxyz";
    QString dominioMay = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    if(cadena.length() < 2){
        while(contador < 26){
            if(copia.at(1) == dominioMin.at(contador)){
                cadena.append(dominioMay.at(contador));
            }
            else if(copia.at(1) == dominioMay.at(contador)){
                cadena.append(dominioMay.at(contador));
            }
            contador++;
        }
    }
    if(tipo.at(0) !=' '){
        cadena.append(tipo.at(0));
    }
    if(trayecto >=0 && duracion > 0 && creditos > 0){
        cadena.append(QString::number(trayecto));
        cadena.append(QString::number(duracion));
        cadena.append(QString::number(creditos));
    }
    return cadena;
}

bool UnidadCurricular::buscar(QString valorCriterio)
{
    bool bandera = false;
    conectarBaseDeDatos(true);
    QSqlQuery buscar("SELECT codigo, nombre FROM unidadescurricularesengeneral WHERE(nombre='"+valorCriterio+"' or codigo= '"+valorCriterio+"');", baseDeDatos);
    while (buscar.next()){
        if (valorCriterio == buscar.value(0).toString() or valorCriterio == buscar.value(1).toString()){
            bandera = true;
            break;
        }
    }
    conectarBaseDeDatos(false);
    return bandera;
}


bool UnidadCurricular::guardar()
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery insertar("INSERT INTO unidadcurricular (codigo, nombre, tipo, creditos, densidad, duracion, trayecto, rutadeiconoprim, rutadeiconosec, descripcion, estrategiassugeridas, estadodeacceso, nombreusuario, fechareg) "
                       "VALUES ('"+codigo+"', '"+nombre+"', '"+tipo+"', "+QString::number(creditos)+", '"+densidad+"', "+QString::number(duracion)+", "+QString::number(trayecto)+", '"+rutaDeIconoPrim+"', '"+rutaDeIconoSec+"', '"+descripcion+"', '"+estrategiasSugeridas+"', '"+estadoDeAcceso+"', '"+usuario.devolverNombre()+"', now());", baseDeDatos);
    if(!insertar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadCurricular::cargar(QString valorNombre)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadcurricular WHERE (codigo='"+valorNombre+"' or nombre='"+valorNombre+"');", baseDeDatos);
    while (cargar.next()){
        if (valorNombre == cargar.value(0).toString() or valorNombre == cargar.value(1).toString()){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            tipo = cargar.value(2).toString();
            creditos = cargar.value(3).toInt();
            densidad = cargar.value(4).toString();
            duracion = cargar.value(5).toInt();
            trayecto = cargar.value(6).toInt();
            rutaDeIconoPrim = cargar.value(7).toString();
            rutaDeIconoSec = cargar.value(8).toString();
            descripcion = cargar.value(9).toString();
            estrategiasSugeridas = cargar.value(10).toString();
            estadoDeAcceso = cargar.value(11).toString();
            usuario.asignarNombre(cargar.value(12).toString());
            fechaReg.asignarCadenaFecha(cargar.value(13).toString());
            fechaModif.asignarCadenaFecha(cargar.value(14).toString());
            centinela = true; break;
        }
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadCurricular::cargarEnGeneral(int indice)
{
    bool centinela = false;
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadcurricular;", baseDeDatos);
    while (cargar.next()) {
        if (contador == indice){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            tipo = cargar.value(2).toString();
            creditos = cargar.value(3).toInt();
            densidad = cargar.value(4).toString();
            duracion = cargar.value(5).toInt();
            trayecto = cargar.value(6).toInt();
            rutaDeIconoPrim = cargar.value(7).toString();
            rutaDeIconoSec = cargar.value(8).toString();
            descripcion = cargar.value(9).toString();
            estrategiasSugeridas = cargar.value(10).toString();
            estadoDeAcceso = cargar.value(11).toString();
            usuario.asignarNombre(cargar.value(12).toString());
            fechaReg.asignarCadenaFecha(cargar.value(13).toString());
            fechaModif.asignarCadenaFecha(cargar.value(14).toString());
            centinela = true;break;
        }
        contador++;
    }
    conectarBaseDeDatos(false);
    return centinela;
}


bool UnidadCurricular::cargarDisponibles(int indice)
{
    bool centinela = false;
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery cargar("SELECT *FROM unidadescurricularesdisponibles;", baseDeDatos);
    while (cargar.next()) {
        if (contador == indice){
            codigo = cargar.value(0).toString();
            nombre = cargar.value(1).toString();
            rutaDeIconoPrim = cargar.value(2).toString();
            rutaDeIconoSec = cargar.value(3).toString();
            descripcion = cargar.value(4).toString();
            centinela = true;break;
        }
        contador++;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

bool UnidadCurricular::modificar(QString nombreUsuarioModifico)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    int id =0;
    QSqlQuery contar("SELECT id FROM historialdemodificacionesdelasunidadescurriculares;", baseDeDatos);
    while (contar.next()) {
        if(contar.value(0).toInt() > id){
            id = contar.value(0).toInt();
        }
    }
    id = id+1;
    qDebug() << QString::number(id);
    QSqlQuery modificar("begin;"
                        "UPDATE unidadcurricular SET nombre='"+nombre+"', tipo='"+tipo+"', creditos="+QString::number(creditos)+", densidad='"+densidad+"',duracion="+QString::number(duracion)+",trayecto="+QString::number(trayecto)+",rutadeiconoprim='"+rutaDeIconoPrim+"', rutadeiconosec='"+rutaDeIconoSec+"', descripcion='"+descripcion+"', estrategiassugeridas='"+estrategiasSugeridas+"' , estadodeacceso='"+estadoDeAcceso+"', nombreusuario='"+usuario.devolverNombre()+"', fechamodif=now() "
                        "WHERE (codigo ='"+codigo+"');"
                        "SELECT identificarusuarioquemodificolaunidadcurricular("+QString::number(id)+", '"+nombreUsuarioModifico+"'); "
                        "commit;", baseDeDatos);
    if(!modificar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    cargar(nombre);
    return centinela;
}

bool UnidadCurricular::eliminar(QString nombreUsuarioElimino)
{
    bool centinela = false;
    conectarBaseDeDatos(true);
    int id = 0;
    QSqlQuery contar("SELECT id FROM papeleradeunidadescurriculares;", baseDeDatos);
    while (contar.next()) {
        if(contar.value(0).toInt() > id){
            id = contar.value(0).toInt();
        }
    }
    id = id+1;
    qDebug() << QString::number(id);
    QSqlQuery eliminar("begin;"
                       "DELETE FROM unidadcurricular WHERE (codigo ='"+codigo+"');"
                       "SELECT identificarusuarioqueeliminolaunidadcurricular("+QString::number(id)+" , '"+nombreUsuarioElimino+"');"
                       "commit;", baseDeDatos);
    if(!eliminar.exec()){
        centinela = true;
    }
    conectarBaseDeDatos(false);
    return centinela;
}

int UnidadCurricular::contarVisitas()
{
    int visitas = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT codigo, visitas FROM visitasrealizasalasunidadescurriculares WHERE(codigo='"+codigo+"');", baseDeDatos);
    while (contar.next()) {
        if(codigo == contar.value(0).toString()){
            visitas = contar.value(1).toInt();
        }
    }
    conectarBaseDeDatos(false);
    return visitas;
}

double UnidadCurricular::calcularPorcentajeDeVisitas()
{
    double porcentaje = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT codigo, porcentaje FROM visitasrealizasalasunidadescurriculares WHERE(codigo='"+codigo+"');", baseDeDatos);
    while (contar.next()) {
        if(codigo == contar.value(0).toString()){
            porcentaje = contar.value(1).toDouble();
        }
    }
    conectarBaseDeDatos(false);
    return porcentaje;

}

bool UnidadCurricular::generalReporteDeVisitas()
{
    QPdfWriter pdf("/home/luisdan/visitas.pdf");
    QPainter pintura(&pdf);
    int contador = 1;
    bool centinela = false;
    conectarBaseDeDatos(true);
    QFont fuente;
    fuente.setFamily("Arial");
    fuente.setPointSize(12);
    fuente.setBold(true);
    pintura.setPen(Qt::black);
    pintura.setFont(fuente);
    pintura.drawText(1, 1, "Código \t\t Nombre \t\t Visitas \t\t Porcentaje");
    fuente.setBold(false);
    pintura.setPen(Qt::black);
    pintura.setFont(fuente);
    QSqlQuery cargar("SELECT *FROM unidadescurricularesengeneral;", baseDeDatos);
    while (cargar.next()) {
        codigo = cargar.value(0).toString();
        nombre = cargar.value(1).toString();
        pintura.setPen(Qt::black);
        pintura.setFont(fuente);
        pintura.drawText(12, contador*300, codigo+"\t\t"+nombre+"\t"+QString::number(contarVisitas())+"\t\t"+QString::number(calcularPorcentajeDeVisitas())+"%");
        contador++;
    }
    conectarBaseDeDatos(false);

    pintura.end();
    centinela = QDesktopServices::openUrl(QUrl::fromLocalFile("/home/luisdan/visitas.pdf"));
    return centinela;
}

int UnidadCurricular::contarEnGeneral(){
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT COUNT(codigo) FROM unidadescurricularesengeneral;", baseDeDatos);
    while (contar.next()){
        contador = contar.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}

int UnidadCurricular::contarDisponibles()
{
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT COUNT (codigo) FROM  unidadescurricularesdisponibles;", baseDeDatos);
    while (contar.next()){
        contador = contar.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}

int UnidadCurricular::buscarUnidadDidactica(QString valorNombre){
    UnidadDidactica objUnidadDidactica;
    return objUnidadDidactica.buscar(valorNombre, nombre);
}

bool UnidadCurricular::cargarUnidadesDidacticasEnGeneral()
{
    int contador = 0;
    if (contarUnidadesDidacticasEnGeneral() > 0){
        unidadesdidacticas = new UnidadDidactica[contarUnidadesDidacticasEnGeneral()];
        conectarBaseDeDatos(true);
        QSqlQuery cargar("SELECT *FROM unidaddidactica WHERE(codigounidadcurricular ='"+codigo+"')", baseDeDatos);
        while (cargar.next()){
            if (cargar.value(5).toString() == codigo){
                unidadesdidacticas[contador].asignarCodigo(cargar.value(0).toString());
                unidadesdidacticas[contador].asignarNombre(cargar.value(1).toString());
                unidadesdidacticas[contador].asignarRutaDeIcono(cargar.value(2).toString());
                unidadesdidacticas[contador].asignarDescripcion(cargar.value(3).toString());
                unidadesdidacticas[contador].asignarEstadoDeAcceso(cargar.value(4).toString());
                unidadesdidacticas[contador].asignarNombreUsuario(cargar.value(6).toString());
                unidadesdidacticas[contador].asignarFechaReg(cargar.value(7).toString());
                unidadesdidacticas[contador].asignarFechaModif(cargar.value(8).toString());
                contador = contador +1;
            }
        }
        conectarBaseDeDatos(false);
    }
    return true;
}

bool UnidadCurricular::cargarUnidadesDidacticasDisponibles()
{
    int contador = 0;
    if (contarUnidadesDidacticasDisponibles() > 0){
        unidadesdidacticas = new UnidadDidactica[contarUnidadesDidacticasDisponibles()];
        conectarBaseDeDatos(true);
        QSqlQuery cargar("SELECT *FROM unidadesdidacticasdisponibles WHERE(codigounidadcurricular ='"+codigo+"');", baseDeDatos);
        while (cargar.next()){
            if (cargar.value(4).toString() == codigo){
                unidadesdidacticas[contador].asignarCodigo(cargar.value(0).toString());
                unidadesdidacticas[contador].asignarNombre(cargar.value(1).toString());
                unidadesdidacticas[contador].asignarRutaDeIcono(cargar.value(2).toString());
                unidadesdidacticas[contador].asignarDescripcion(cargar.value(3).toString());
                contador = contador +1;
            }
        }
        conectarBaseDeDatos(false);
    }
    return true;
}

int UnidadCurricular::contarUnidadesDidacticasEnGeneral()
{
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT COUNT(codigo) FROM unidadesdidacticasengeneral WHERE (codigounidadcurricular='"+codigo+"');", baseDeDatos);
    while (contar.next()){
       contador = contar.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}

int UnidadCurricular::contarUnidadesDidacticasDisponibles()
{
    int contador = 0;
    conectarBaseDeDatos(true);
    QSqlQuery contar("SELECT COUNT(codigo) FROM unidadesdidacticasdisponibles WHERE (codigounidadcurricular='"+codigo+"');", baseDeDatos);
    while (contar.next()){
       contador = contar.value(0).toInt();
    }
    conectarBaseDeDatos(false);
    return contador;
}

bool UnidadCurricular::conectarBaseDeDatos(bool accion)
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
