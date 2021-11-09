#ifndef JUEGO_H
#define JUEGO_H

#include <QObject>

class Juego : public QObject
{
    Q_OBJECT
public:
    explicit Juego(QObject *parent = 0);

signals:

public slots:
};

#endif // JUEGO_H