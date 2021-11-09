#ifndef USUARIO_H
#define USUARIO_H

#include <QObject>
#include <QString>
#include <QtSql>

#include <Modelo/Fecha.h>

class Usuario : public QObject
{
        Q_OBJECT
public:
    explicit Usuario(QObject *parent = 0);
    ~Usuario();
    void asignarNombre(QString nom);
    QString devolverNombre();
    void asignarNombreCompleto(QString nomCompleto);
    QString devolverNombreCompleto();
    void asignarPrivilegios (QString priv);
    QString devolverPrivilegios();
    void asignarNivel(int niv);
    int devolverNivel();
    void asignarRutaDeFotoDePerfil(QString valorRutaDeFotoDePerfil);
    QString devolverRutaDeFotoDePerfil();
    void asignarContrasea(QString contras);
    QString devolverContrasea();
    void asignarEstadoDeAcceso(QString estad);
    QString devolverEstadoDeAcceso();
    void asignarFechaReg(QString cadenaFecha);
    QString devolverFechaReg();
    void asignarFechaAcceso(QString cadenaFecha);
    QString devolverFechaAcceso();
    void asignarDisponibilidad(QString valorDisponibilidad);
    QString devolverDisponibilidad();
    Q_INVOKABLE bool buscar(QString valorNombreUsuario);
    Q_INVOKABLE bool cargar(QString valorNombreUsuario);
    Q_INVOKABLE bool guardar();
private:
    Q_PROPERTY(QString nombre READ devolverNombre WRITE asignarNombre)
    Q_PROPERTY(QString nombreCompleto READ devolverNombreCompleto WRITE asignarNombreCompleto)
    Q_PROPERTY(QString privilegios READ devolverPrivilegios WRITE asignarPrivilegios)
    Q_PROPERTY(int nivel READ devolverNivel WRITE asignarNivel)
    Q_PROPERTY(QString rutaDeFotoDePerfil READ devolverRutaDeFotoDePerfil WRITE asignarRutaDeFotoDePerfil)
    Q_PROPERTY(QString contrasea READ devolverContrasea WRITE asignarContrasea)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(QString fechaReg READ devolverFechaReg WRITE asignarFechaReg)
    Q_PROPERTY(QString fechaAcceso READ devolverFechaAcceso WRITE asignarFechaAcceso)
    Q_PROPERTY(QString disponibilidad READ devolverDisponibilidad WRITE asignarDisponibilidad)

    QString nombre;
    QString nombreCompleto;
    QString privilegios;
    int nivel;
    QString rutaDeFotoDePerfil;
    QString contrasea;
    QString estadoDeAcceso;
    QString disponibilidad;
    Fecha fechaReg;
    Fecha fechaAcceso;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};

#endif
