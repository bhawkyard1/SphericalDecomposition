TARGET = ver001

OBJECTS_DIR = obj

QT += opengl core

isEqual(QT_MAJOR_VERSION, 5) {
        cache()
        #DEFINES  += QT5BUILD
}

INCLUDEPATH += $$PWD/include

MOC_DIR = moc

SOURCES += $$PWD/main.cpp \
                     $$PWD/src/*.cpp

HEADERS += $$PWD/include/*.hpp

CONFIG += console

!equals(PWD, $${OUT_PWD}){
        copydata.commands = echo "creating destination dirs";
        # now make a dir
        copydata.commands += mkdir -p $$OUT_PWD/shaders;
        copydata.commands += echo "copying files";
        # then copy the files
        copydata.commands += $(COPY_DIR) $$PWD/shaders/* $$OUT_PWD/shaders/;
        # now make sure the first target is built before copy
        first.depends = $(first) copydata
        export(first.depends)
        export(copydata.commands)
        # now add it as an extra target
        QMAKE_EXTRA_TARGETS += first copydata
}

OTHER_FILES += readme.md \
                           ./shaders/*.glsl

CONFIG += console

unix {
    #QT THINGS
    QMAKE_CXXFLAGS += $$system(sdl2-config --cflags)

    #QMAKE_CXXFLAGS -= -O
    #QMAKE_CXXFLAGS -= -O1
    #QMAKE_CXXFLAGS -= -O2

    #QMAKE_CXXFLAGS *= -O3

    #SDL THINGS
    LIBS += $$system(sdl2-config --libs)
    LIBS += -lSDL2_image -lSDL2_mixer -lSDL2_ttf

    #Bullet things
    INCLUDEPATH += $$(HOME)/Bullet/bullet3/src/
    LIBS += -L$$(HOME)/Bullet/bullet3/bin/
    LIBS += -lBulletSoftBody -lBulletDynamics -lBulletCollision -lLinearMath
}

NGLPATH = $$(NGLDIR)
isEmpty(NGLPATH){ # note brace must be here
        message("including $HOME/NGL")
        include($(HOME)/NGL/UseNGL.pri)
}
else{ # note brace must be here
        message("Using custom NGL location")
        include($(NGLDIR)/UseNGL.pri)
}
