#ifndef FECHA_H
#define FECHA_H

#include <QObject>
#include <QString>

class Fecha: public QObject
{
public:
    Fecha();
    ~Fecha();
    int devolverDia();
    void asignarDia(int valorDia);
    int devolverMes();
    void asignarMes(int valorMes);
    int devolverAo();
    void asignarAo(int valorAo);
    int devolverHora();
    void asignarHora(int valorHora);
    int devolverMin();
    void asignarMin(int valorMin);
    int devolverSeg();
    void asignarSeg(int valorSeg);

    Q_INVOKABLE QString convertirEnCadena();
    Q_INVOKABLE void asignarCadenaFecha(QString fecha);

private:
    Q_OBJECT
    Q_PROPERTY(int dia READ devolverDia WRITE asignarDia)
    Q_PROPERTY(int mes READ devolverMes WRITE asignarMes)
    Q_PROPERTY(int ao READ devolverAo WRITE asignarAo)
    Q_PROPERTY(int hora READ devolverHora WRITE asignarHora)
    Q_PROPERTY(int min READ devolverMin WRITE asignarMin)
    Q_PROPERTY(int seg READ devolverSeg WRITE asignarSeg)

    int dia;
    int mes;
    int ao;
    int hora;
    int min;
    int seg;
};

#endif
