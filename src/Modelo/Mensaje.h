#ifndef MENSAJE_H
#define MENSAJE_H

#include <QObject>
#include <Modelo/Fecha.h>
#include <Modelo/Usuario.h>
class Mensaje : public QObject
{
    Q_OBJECT
public:
    explicit Mensaje(QObject *parent = 0);
    void asignarId(long valorId);
    long devolverId();
    void asignarTipo(QString valorTipo);
    QString devolverTipo();
    void asignarAsunto(QString valorAsunto);
    QString devolverAsunto();
    void asignarTexto(QString valorTexto);
    QString devolverTexto();
    void asignarVisto(bool valorVisto);
    bool devolverVisto();
    void asignarFechaEnvio(QString cadenaFecha);
    QString devolverFechaEnvio();
    void asignarFechaRecibido(QString cadenaFecha);
    QString devolverFechaRecibido();
    void asignarNombreEmisor(QString valorNombre);
    QString devolverNombreEmisor();
    void asignarNombreCompletoEmisor(QString valorNombreCompleto);
    QString devolverNombreCompletoEmisor();
    void asignarNombreReceptor(QString valorNombre);
    QString devolverNombreReceptor();
    void asignarNombreCompletoReceptor(QString valorNombreCompleto);
    QString devolverNombreCompletoReceptor();
    Q_INVOKABLE bool guardar();
    Q_INVOKABLE bool cargarRecibido(long indice, QString usuario);
    Q_INVOKABLE long contarRecibido(QString usuario);
private:
    Q_PROPERTY(long id READ devolverId WRITE asignarId)
    Q_PROPERTY(QString tipo READ devolverTipo WRITE asignarTipo)
    Q_PROPERTY(QString asunto READ devolverAsunto WRITE asignarAsunto)
    Q_PROPERTY(QString texto READ devolverTexto WRITE asignarTexto)
    Q_PROPERTY(bool visto READ devolverVisto WRITE asignarVisto)
    Q_PROPERTY(QString fechaEnvio READ devolverFechaEnvio WRITE asignarFechaEnvio)
    Q_PROPERTY(QString fechaRecibido READ devolverFechaRecibido WRITE asignarFechaRecibido)
    Q_PROPERTY(QString nombreEmisor READ devolverNombreEmisor WRITE asignarNombreEmisor)
    Q_PROPERTY(QString nombreReceptor READ devolverNombreReceptor WRITE asignarNombreReceptor)
    long id;
    QString tipo;
    QString asunto;
    QString texto;
    bool visto;
    Fecha fechaEnvio;
    Fecha fechaRecibido;
    Usuario emisor;
    Usuario receptor;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};

#endif
