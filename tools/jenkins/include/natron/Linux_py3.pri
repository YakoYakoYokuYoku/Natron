boost: LIBS += -lboost_serialization
expat: LIBS += -lexpat
expat: PKGCONFIG -= expat
INCLUDEPATH+=/opt/Natron-sdk/include
LIBS+="-L/opt/Natron-sdk/lib"

pyside {
PKGCONFIG -= pyside
PKGCONFIG -= pyside-py$$PYV
INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)
INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)/QtCore
INCLUDEPATH += $$system(pkg-config --variable=includedir pyside)/QtGui
INCLUDEPATH += $$system(pkg-config --variable=includedir QtGui)
LIBS += -lpyside.cpython-$${PYVERNODOT}m
}
shiboken {
PKGCONFIG -= shiboken
PKGCONFIG -= shiboken-py$$PYV
INCLUDEPATH += $$system(pkg-config --variable=includedir shiboken)
LIBS += -lshiboken.cpython-$${PYVERNODOT}m
}

QMAKE_LFLAGS += -Wl,-rpath,\\\$\$ORIGIN/../lib
