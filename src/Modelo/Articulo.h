#ifndef ARTICULO_H
#define ARTICULO_H

#include <QObject>
#include <QString>
#include <QtSql>
#include <QPrinter>
#include <QPrintDialog>
#include <Modelo/Seccion.h>
#include <Modelo/Usuario.h>
#include <Modelo/Fecha.h>

class Articulo : public QObject
{
public:
    explicit Articulo(QObject *parent = 0);
    ~Articulo();
    void asignarCodigo(QString valorCodigo);
    QString devolverCodigo();
    void asignarTitulo(QString valorTitulo);
    QString devolverTitulo();
    void asignarDesambiguacion(QString valorDesambiguacion);
    QString devolverDesambiguacion();
    void asignarRutaDeIcono(QString valorRutaDeIcono);
    QString devolverRutaDeIcono();
    void asignarDescripcion(QString valorDescripcion);
    QString devolverDescripcion();
    void asignarEtiqueta(QString valorEtiqueta);
    QString devolverEtiqueta();
    void asignarVisitas(long valorVisitas);
    long devolverVisitas();
    void asignarEstadoDeAcceso(QString valorEstadoDeAcceso);
    QString devolverEstadoDeAcceso();
    void asignarFechaReg(QString cadenaFecha);
    QString devolverFechaReg();
    void asignarFechaModif(QString cadenaFecha);
    QString devolverFechaModif();
    Q_INVOKABLE void asignarCodigoSeccion(QString valorCodigo, int indice);
    Q_INVOKABLE QString devolverCodigoSeccion(int indice);
    Q_INVOKABLE void asignarTituloSeccion(QString valorTitulo, int indice);
    Q_INVOKABLE QString devolverTituloSeccion(int indice);
    Q_INVOKABLE void asignarTipoSeccion(QString valorTipo, int indice);
    Q_INVOKABLE QString devolverTipoSeccion(int indice);
    Q_INVOKABLE void asignarNivelSeccion(int valorNivel, int indice);
    Q_INVOKABLE int devolverNivelSeccion(int indice);
    Q_INVOKABLE void asignarTextoSeccion(QString valorTexto, int indice);
    Q_INVOKABLE QString devolverTextoSeccion(int indice);
    Q_INVOKABLE void asignarEstadoDeAccesoSeccion(QString valorEstadoDeAcceso, int indice);
    Q_INVOKABLE QString devolverEstadoDeAccesoSeccion(int indice);
    Q_INVOKABLE void asignarNombreUsuario(QString valorNombre, int indice);
    Q_INVOKABLE QString devolverNombreUsuario(int indice);
    Q_INVOKABLE void asignarNombreCompletoUsuario(QString valorNombreCompleto, int indice);
    Q_INVOKABLE QString devolverNombreCompletoUsuario(int indice);
    Q_INVOKABLE bool buscar(QString valorCodigo);
    Q_INVOKABLE bool buscar(QString valorCodigo,QString valorCodigoUnidadDidactica);
    Q_INVOKABLE bool cargar(QString valorCodigoArticulo);
    Q_INVOKABLE bool cargarDisponibles(QString valorCodigoArticulo);
    Q_INVOKABLE bool guardar(QString valorCodigoUnidadDidactica);
    Q_INVOKABLE bool modificar(QString valorCodigoUnidadDidactica);
    Q_INVOKABLE bool actualizarCodigo(QString valorCodigo);
    Q_INVOKABLE bool eliminar();
    Q_INVOKABLE bool cargarSeccionesEnGeneral();
    Q_INVOKABLE int contarSeccionesEnGeneral();

private:
    Q_OBJECT
    Q_PROPERTY(QString codigo READ devolverCodigo WRITE asignarCodigo)
    Q_PROPERTY(QString titulo READ devolverTitulo WRITE asignarTitulo)
    Q_PROPERTY(QString desambiguacion READ devolverDesambiguacion WRITE asignarDesambiguacion)
    Q_PROPERTY(QString rutaDeIcono READ devolverRutaDeIcono WRITE asignarRutaDeIcono)
    Q_PROPERTY(QString descripcion READ devolverDescripcion WRITE asignarDescripcion)
    Q_PROPERTY(QString etiqueta READ devolverEtiqueta WRITE asignarEtiqueta)
    Q_PROPERTY(long visitas READ devolverVisitas WRITE asignarVisitas)
    Q_PROPERTY(QString estadoDeAcceso READ devolverEstadoDeAcceso WRITE asignarEstadoDeAcceso)
    Q_PROPERTY(QString fechaReg READ devolverFechaReg WRITE asignarFechaReg)
    Q_PROPERTY(QString fechaModif READ devolverFechaModif WRITE asignarFechaModif)
    QString codigo;
    QString titulo;
    QString desambiguacion;
    QString rutaDeIcono;
    QString descripcion;
    QString etiqueta;
    long visitas;
    QString estadoDeAcceso;
    Fecha fechaReg;
    Fecha fechaModif;
    Seccion *secciones;
    Usuario *usuarios;
    QSqlDatabase baseDeDatos;
    bool conectarBaseDeDatos(bool accion);
};

#endif
