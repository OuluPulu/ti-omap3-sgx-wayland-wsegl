TEMPLATE = lib
TARGET = EGL

QT = 
SOURCES = egl.c


include(../common/common.pri)

!contains(QT_CONFIG, no-pkg-config) {
    CONFIG += link_pkgconfig
    PKGCONFIG += wayland-client wayland-server
} else {
    LIBS += -ldl -lwayland-client -lwayland-server -lwayland-egl
}


target.path = $$PREFIX/usr/lib
INSTALLS += target
