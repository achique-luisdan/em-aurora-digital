QT += qml quick \
      sql \
      printsupport

CONFIG += c++11

SOURCES += main.cpp \
    Modelo/Articulo.cpp \
    Modelo/ElementoMultimedia.cpp \
    Modelo/Fecha.cpp \
    Modelo/Juego.cpp \
    Modelo/Mensaje.cpp \
    Modelo/Problema.cpp \
    Modelo/Seccion.cpp \
    Modelo/Solucion.cpp \
    Modelo/UnidadCurricular.cpp \
    Modelo/UnidadDidactica.cpp \
    Modelo/Usuario.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    Modelo/Articulo.h \
    Modelo/ElementoMultimedia.h \
    Modelo/Fecha.h \
    Modelo/Juego.h \
    Modelo/Mensaje.h \
    Modelo/Problema.h \
    Modelo/Seccion.h \
    Modelo/Solucion.h \
    Modelo/UnidadCurricular.h \
    Modelo/UnidadDidactica.h \
    Modelo/Usuario.h
