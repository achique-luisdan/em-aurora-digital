#ifndef SECCION_H
#define SECCION_H

#include <QObject>
#include <QString>
#include <QtSql>

#include <Modelo/Fecha.h>

class Seccion : public QObject
{
    Q_OBJECT
public:
    explicit Seccion(QObject *parent = 0);
    ~Seccion();
    void asignarCodigo(QString valorCodigo);
    QString devolverCodigo();
    void asignarTitulo(QString valorTitulo);
    QString devolverTitulo();
    void asignarTipo(QString valorTipo);
    QString devolverTipo();
    void asignarNivel(int niv);
    int devolverNivel();
    void asignarTexto(QString valorTexto);
    QString devolverTexto();
    void asignarEstadoDeAcceso(QString valorEstadoDeAcceso);
    QString devolverEstadoDeAcceso();
    void asignarFechaReg(QString cadenaFecha);
    QString devolverFechaReg();
    void asignarFechaModif(QString cadenaFecha);
    QString devolverFechaModif();
    Q_INVOKABLE bool cargar(QString valorCodigo);
    Q_INVOKABLE bool guardar(QString valorCodigoArticulo);
    Q_INVOKABLE bool modificar(QString valorCodigoArticulo);
    Q_INVOKABLE bool eliminar();

private:
    Q_PROPERTY(QString texto READ devolverTexto WRITE asignarTexto)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(int nivel READ devolverNivel WRITE asignarNivel)
    Q_PROPERTY(QString fechaReg READ devolverFechaReg WRITE asignarFechaReg)
    Q_PROPERTY(QString fechaModif READ devolverFechaModif WRITE asignarFechaModif)
    Q_PROPERTY(QString codigo READ devolverCodigo WRITE asignarCodigo)
    Q_PROPERTY(QString titulo READ devolverTitulo WRITE asignarTitulo)
    Q_PROPERTY(QString tipo READ devolverTipo WRITE asignarTipo)

    QString codigo;
    QString titulo;
    QString tipo;
    int nivel;
    QString texto;
    QString estadoDeAcceso;
    Fecha fechaReg;
    Fecha fechaModif;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};

#endif
