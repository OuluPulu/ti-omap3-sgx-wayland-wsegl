TARGET = wayland-egl
TEMPLATE = lib
CONFIG += link_pkgconfig
CONFIG -= qt

!contains(QT_CONFIG, no-pkg-config) {
    CONFIG += link_pkgconfig
    PKGCONFIG += wayland-client wayland-server
} else {
    LIBS += -ldl -lwayland-client -lwayland-server
}

SOURCES = wayland-egl.c
HEADERS = wayland-egl-priv.h wsegl.h

include(../common/common.pri) | error("can't include common.pri")

target.path = $$PREFIX/usr/lib
INSTALLS += target
