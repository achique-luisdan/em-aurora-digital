#ifndef UNIDADCURRICULAR_H
#define UNIDADCURRICULAR_H

#include <QObject>
#include <QString>
#include <QtSql/QSqlDatabase>
#include <QPdfWriter>
#include <QPainter>
#include <QDesktopServices>
#include <QUrl>
#include <Modelo/UnidadDidactica.h>
#include <Modelo/Usuario.h>
#include <Modelo/Fecha.h>

class UnidadCurricular : public QObject
{
    Q_OBJECT
public:
    explicit UnidadCurricular(QObject *parent = 0);
    ~UnidadCurricular();
    void asignarCodigo(QString valorCodigo);
    QString devolverCodigo();
    void asignarNombre(QString valorNombre);
    QString devolverNombre();
    void asignarTipo(QString valorTipo);
    QString devolverTipo();
    void asignarCreditos(int valorCreditos);
    int devolverCreditos();
    void asignarDensidad(QString valorDensidad);
    QString devolverDensidad();
    void asignarDuracion(int valorDuracion);
    int devolverDuracion();
    void asignarTrayecto(int valorTrayecto);
    int devolverTrayecto();
    void asignarRutaDeIconoPrim(QString valorRuta);
    QString devolverRutaDeIconoPrim();
    void asignarRutaDeIconoSec(QString valorRuta);
    QString devolverRutaDeIconoSec();
    void asignarDescripcion(QString valorDescripcion);
    QString devolverDescripcion();
    void asignarEstrategiasSugeridas(QString valorEstrategiasSugeridas);
    QString devolverEstrategiasSugeridas();
    void asignarEstadoDeAcceso(QString valorEstadoDeAcceso);
    QString devolverEstadoDeAcceso();
    void asignarFechaReg(QString cadenaFecha);
    QString devolverFechaReg();
    void asignarFechaModif(QString cadenaFecha);
    QString devolverFechaModif();
    void asignarNombreUsuario(QString valorNombre);
    QString devolverNombreUsuario();
    void asignarNombreCompletoUsuario(QString valorNombreCompleto);
    QString devolverNombreCompletoUsuario();
    Q_INVOKABLE void asignarCodigoUnidadDidactica(int indice, QString valorCodigo);
    Q_INVOKABLE QString devolverCodigoUnidadDidactica(int indice);
    Q_INVOKABLE void asignarNombreUnidadDidactica(int indice, QString valorNombre);
    Q_INVOKABLE QString devolverNombreUnidadDidactica(int indice);
    Q_INVOKABLE void asignarRutaDeIconUnidadDidactica(int indice, QString ruta);
    Q_INVOKABLE QString devolverRutaDeIconUnidadDidactica(int indice);
    Q_INVOKABLE void asignarDescripcionUnidadDidactica(int indice, QString texto);
    Q_INVOKABLE QString devolverDescripcionUnidadDidactica(int indice);
    Q_INVOKABLE void asignarNombreUsuarioUnidadDidactica(int indice, QString valorNombre);
    Q_INVOKABLE QString devolverNombreUsuarioUnidadDidactica(int indice);
    Q_INVOKABLE void asignarEstadoDeAccesoUnidadDidactica(int indice, QString valorEstadoDeAcceso);
    Q_INVOKABLE QString devolverEstadoDeAccesoUnidadDidactica(int indice);
    Q_INVOKABLE void asignarFechaModifUnidadDidactica(int indice, QString cadenaFecha);
    Q_INVOKABLE QString devolverFechaModifUnidadDidactica(int indice);

    Q_INVOKABLE QString generalCodigo();
    Q_INVOKABLE bool buscar(QString valorCriterio);
    Q_INVOKABLE bool guardar();
    Q_INVOKABLE bool cargar(QString valorNombre);
    Q_INVOKABLE bool cargarEnGeneral(int indice);
    Q_INVOKABLE bool cargarDisponibles(int indice);
    Q_INVOKABLE bool modificar(QString nombreUsuarioModifico);
    Q_INVOKABLE bool eliminar(QString nombreUsuarioElimino);
    Q_INVOKABLE int contarVisitas();
    Q_INVOKABLE double calcularPorcentajeDeVisitas();
    Q_INVOKABLE bool generalReporteDeVisitas();
    Q_INVOKABLE int contarEnGeneral();
    Q_INVOKABLE int contarDisponibles();
    Q_INVOKABLE int buscarUnidadDidactica(QString valorNombre);
    Q_INVOKABLE bool cargarUnidadesDidacticasEnGeneral();
    Q_INVOKABLE bool cargarUnidadesDidacticasDisponibles();
    Q_INVOKABLE int contarUnidadesDidacticasEnGeneral();
    Q_INVOKABLE int contarUnidadesDidacticasDisponibles();
private:
    Q_PROPERTY(QString codigo READ devolverCodigo WRITE asignarCodigo)
    Q_PROPERTY(QString nombre READ devolverNombre WRITE asignarNombre)
    Q_PROPERTY(QString tipo READ devolverTipo WRITE asignarTipo)
    Q_PROPERTY(int creditos READ devolverCreditos WRITE asignarCreditos)
    Q_PROPERTY(QString densidad READ devolverDensidad WRITE asignarDensidad)
    Q_PROPERTY(int duracion READ devolverDuracion WRITE asignarDuracion)
    Q_PROPERTY(int trayecto READ devolverTrayecto WRITE asignarTrayecto)
    Q_PROPERTY(QString rutaDeIconoPrim READ devolverRutaDeIconoPrim WRITE asignarRutaDeIconoPrim)
    Q_PROPERTY(QString rutaDeIconoSec READ devolverRutaDeIconoSec WRITE asignarRutaDeIconoSec)
    Q_PROPERTY(QString descripcion READ devolverDescripcion WRITE asignarDescripcion)
    Q_PROPERTY(QString estrategiasSugeridas READ devolverEstrategiasSugeridas WRITE asignarEstrategiasSugeridas)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(QString fechaReg READ devolverFechaReg WRITE asignarFechaReg)
    Q_PROPERTY(QString fechaModif READ devolverFechaModif WRITE asignarFechaModif)
    Q_PROPERTY(QString nombreUsuario READ devolverNombreUsuario WRITE asignarNombreUsuario)
    Q_PROPERTY(QString nombreCompletoUsuario READ devolverNombreCompletoUsuario WRITE asignarNombreCompletoUsuario)
    QString codigo;
    QString nombre;
    QString tipo;
    int creditos;
    QString densidad;
    int duracion;
    int trayecto;
    QString rutaDeIconoPrim;
    QString rutaDeIconoSec;
    QString descripcion;
    QString estrategiasSugeridas;
    QString estadoDeAcceso;
    Fecha fechaReg;
    Fecha fechaModif;
    UnidadDidactica *unidadesdidacticas;
    Usuario usuario;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};
#endif
