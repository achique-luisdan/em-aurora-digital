#ifndef SOLUCION_H
#define SOLUCION_H

#include <QObject>
#include <QString>

#include <Modelo/Fecha.h>
#include <Modelo/Problema.h>
#include <Modelo/Usuario.h>

class Solucion : public QObject
{
    Q_OBJECT
public:
    explicit Solucion(QObject *parent = 0);
private:
    long id;
    QString solucion;
    QString descripcion;
    int puntuacion;
    QString estadoDeAcceso;
    Problema problema;
    Usuario usuario;
    Fecha fechaReg;
    Fecha fechaModif;
};

#endif
