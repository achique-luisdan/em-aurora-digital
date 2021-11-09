#ifndef PROBLEMA_H
#define PROBLEMA_H

#include <QObject>
#include <QString>

#include <Modelo/Usuario.h>
#include <Modelo/Fecha.h>

class Problema : public QObject
{
    Q_OBJECT
public:
    explicit Problema(QObject *parent = 0);
    ~Problema();
    void asignarId(long valorId);
    long devolverId();
    void asignarNombre(QString valorNombre);
    QString devolverNombre();
    void asignarEnunciado(QString valorEnunciado);
    QString devolverEnunciado();
    void asignarComplejidad(QString valorComplejidad);
    QString devolverComplejidad();
    void asignarEstadoDeAcceso(QString valorEstadoDeAcceso);
    QString devolverEstadoDeAcceso();
    void asignarDiaFechaReg(int valorDia);
    int devolverDiaFechaReg();
    void asignarMesFechaReg(int valorMes);
    int devolverMesFechaReg();
    void asignarAoFechaReg(int valorAo);
    int devolverAoFechaReg();
    void asignarHoraFechaReg(int valorHora);
    int devolverHoraFechaReg();
    void asignarMinFechaReg(int valorMin);
    int devolverMinFechaReg();
    void asignarSegFechaReg(int valorSeg);
    int devolverSegFechaReg();
    void asignarDiaFechaModif(int valorDia);
    int devolverDiaFechaModif();
    void asignarMesFechaModif(int valorMes);
    int devolverMesFechaModif();
    void asignarAoFechaModif(int valorAo);
    int devolverAoFechaModif();
    void asignarHoraFechaModif(int valorHora);
    int devolverHoraFechaModif();
    void asignarMinFechaModif(int valorMin);
    int devolverMinFechaModif();
    void asignarSegFechaModif(int valorSeg);
    int devolverSegFechaModif();
private:
    Q_PROPERTY(long id READ devolverId WRITE asignarId)
    Q_PROPERTY(QString nombre READ devolverNombre WRITE asignarNombre)
    Q_PROPERTY(QString enunciado READ devolverEnunciado WRITE asignarEnunciado)
    Q_PROPERTY(QString complejidad READ devolverComplejidad WRITE asignarComplejidad)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(int diaFechaReg READ devolverDiaFechaReg WRITE asignarDiaFechaReg)
    Q_PROPERTY(int mesFechaReg READ devolverMesFechaReg WRITE asignarMesFechaReg)
    Q_PROPERTY(int aoFechaReg READ devolverAoFechaReg WRITE asignarAoFechaReg)
    Q_PROPERTY(int horaFechaReg READ devolverHoraFechaReg WRITE asignarHoraFechaReg)
    Q_PROPERTY(int minFechaReg READ devolverMinFechaReg WRITE asignarMinFechaReg)
    Q_PROPERTY(int segFechaReg READ devolverSegFechaReg WRITE asignarSegFechaReg)
    Q_PROPERTY(int diaFechaModif READ devolverDiaFechaModif WRITE asignarDiaFechaModif)
    Q_PROPERTY(int mesFechaModif READ devolverMesFechaModif  WRITE asignarMesFechaModif)
    Q_PROPERTY(int aoFechaModif READ devolverAoFechaModif WRITE asignarAoFechaModif)
    Q_PROPERTY(int horaFechaModif READ devolverHoraFechaModif WRITE asignarHoraFechaModif)
    Q_PROPERTY(int minFechaModif READ devolverMinFechaModif WRITE asignarMinFechaModif)
    Q_PROPERTY(int segFechaModif READ devolverSegFechaModif WRITE asignarSegFechaModif)

    long id;
    QString nombre;
    QString enunciado;
    QString complejidad;
    QString estadoDeAcceso;
    Fecha fechaReg;
    Fecha fechaModif;

    Usuario usuario;
};

#endif
