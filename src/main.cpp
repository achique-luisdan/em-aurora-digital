#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <Modelo/Usuario.h>
#include <Modelo/Mensaje.h>
#include <Modelo/Fecha.h>
#include <Modelo/UnidadCurricular.h>
#include <Modelo/UnidadDidactica.h>
#include <Modelo/Articulo.h>
#include <Modelo/Seccion.h>
#include <Modelo/Fecha.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    qmlRegisterType<Usuario>("QUsuario", 0, 1, "Usuario");
    qmlRegisterType<Mensaje>("QMensaje", 0, 1, "Mensaje");
    qmlRegisterType<UnidadCurricular>("QUnidadCurricular", 0, 1, "UnidadCurricular");
    qmlRegisterType<UnidadDidactica>("QUnidadDidactica", 0, 1, "UnidadDidactica");
    qmlRegisterType<Articulo>("QArticulo", 0, 1, "Articulo");
    qmlRegisterType<Seccion>("QSeccion", 0, 1, "Seccion");
    qmlRegisterType<Usuario>("QUsuario", 0, 1, "Usuario");
    qmlRegisterType<Fecha>("QFecha", 0, 1, "Fecha");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/Delegado/PaginaInicio.qml")));
    return app.exec();
}
