#ifndef UNIDADDIDACTICA_H
#define UNIDADDIDACTICA_H

#include <QString>
#include <QObject>
#include <QtSql>

#include <Modelo/Articulo.h>
#include <Modelo/Usuario.h>
#include <Modelo/Fecha.h>

class UnidadDidactica: public QObject
{
public:
    explicit UnidadDidactica(QObject *parent = 0);
    void asignarCodigo(QString cod);
    QString devolverCodigo();
    void asignarNombre(QString nom);
    QString devolverNombre();
    void asignarRutaDeIcono(QString ruta);
    QString devolverRutaDeIcono();
    void asignarDescripcion(QString texto);
    QString devolverDescripcion();
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
    Q_INVOKABLE void asignarCodigoArticulo(QString valorCodigo, int indice);
    Q_INVOKABLE QString devolverCodigoArticulo(int indice);
    Q_INVOKABLE void asignarTituloArticulo(QString valorTitulo, int indice);
    Q_INVOKABLE QString devolverTituloArticulo(int indice);
    Q_INVOKABLE void asignarRutaDeIconoArticulo(QString ruta, int indice);
    Q_INVOKABLE QString devolverRutaDeIconoArticulo(int indice);
    Q_INVOKABLE void asignarDescripcionArticulo(int indice, QString valorDescripcion);
    Q_INVOKABLE QString devolverDescripcionArticulo(int indice);
    Q_INVOKABLE void asignarVisitasArticulo(int indice, int valorVisitas);
    Q_INVOKABLE int devolverVisitasArticulo(int indice);
    Q_INVOKABLE void asignarEstadoDeAccesoArticulo(int indice, QString valorEstadoDeAcceso);
    Q_INVOKABLE QString devolverEstadoDeAccesoArticulo(int indice);
    Q_INVOKABLE void asignarFechaRegArticulo(int indice, QString cadenaFecha);
    Q_INVOKABLE QString devolverFechaRegArticulo(int indice);
    Q_INVOKABLE void asignarFechaModifArticulo(int indice, QString cadenaFecha);
    Q_INVOKABLE QString devolverFechaModifArticulo(int indice);
    Q_INVOKABLE bool buscar(QString valorCodigo);
    Q_INVOKABLE bool buscar(QString valorNombre, QString valorCodigoUnidCurr);
    Q_INVOKABLE bool guardar(QString valorCodigoUnidCurr);
    Q_INVOKABLE bool cargar(QString valorCodigo);
    Q_INVOKABLE bool cargarEnGeneral(int indice);
    Q_INVOKABLE bool cargarEnGeneral(QString valorCriterio, QString codigoUnidCurr);
    Q_INVOKABLE bool modificar(QString codigoUnidCurr);
    Q_INVOKABLE bool eliminar();
    Q_INVOKABLE int contarEnGeneral();
    Q_INVOKABLE bool cargarArticulosEnGeneral();
    Q_INVOKABLE int contarArticulosEnGeneral();
    Q_INVOKABLE bool cargarArticulosDisponibles();
    Q_INVOKABLE int contarArticulosDisponibles();
private:
    Q_OBJECT
    Q_PROPERTY(QString codigo READ devolverCodigo WRITE asignarCodigo)
    Q_PROPERTY(QString nombre READ devolverNombre WRITE asignarNombre)
    Q_PROPERTY(QString rutaDeIcono READ devolverRutaDeIcono WRITE asignarRutaDeIcono)
    Q_PROPERTY(QString descripcion READ devolverDescripcion WRITE asignarDescripcion)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(QString fechaReg READ devolverFechaReg WRITE asignarFechaReg)
    Q_PROPERTY(QString fechaModif READ devolverFechaModif WRITE asignarFechaModif)
    Q_PROPERTY(QString nombreUsuario READ devolverNombreUsuario WRITE asignarNombreUsuario)
    Q_PROPERTY(QString nombreCompletoUsuario READ devolverNombreCompletoUsuario WRITE asignarNombreCompletoUsuario)
    QString codigo;
    QString nombre;
    QString rutaDeIcono;
    QString descripcion;
    QString estadoDeAcceso;
    Fecha fechaReg;
    Fecha fechaModif;
    Articulo *articulos;
    Usuario usuario;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};

#endif
