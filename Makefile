#############################################################################
# Makefile for building: ver001
# Generated by qmake (3.0) (Qt 5.7.0)
# Project:  ver001.pro
# Template: app
# Command: /opt/Qt5.7.0/5.7/gcc_64/bin/qmake -spec linux-clang -o Makefile ver001.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = clang
CXX           = clang++
DEFINES       = -DQT5BUILD -DNGL_DEBUG -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -I/usr/local/include/SDL2 -D_REENTRANT -msse -msse2 -msse3 -march=native -O2 -std=gnu++11 -Wall -W -Wno-unused-parameter -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -Iinclude -I/home/i7620560/Bullet/bullet3/src -I/home/i7620560/NGL/include -I/opt/Qt5.7.0/5.7/gcc_64/include -I/opt/Qt5.7.0/5.7/gcc_64/include/QtOpenGL -I/opt/Qt5.7.0/5.7/gcc_64/include/QtWidgets -I/opt/Qt5.7.0/5.7/gcc_64/include/QtGui -I/opt/Qt5.7.0/5.7/gcc_64/include/QtCore -Imoc -I/opt/Qt5.7.0/5.7/gcc_64/mkspecs/linux-clang
QMAKE         = /opt/Qt5.7.0/5.7/gcc_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = ver0011.0.0
DISTDIR = /home/i7620560/Documents/year3/Masterclass/MPC/ver001/obj/ver0011.0.0
LINK          = clang++
LFLAGS        = -ccc-gcc-name g++ -Wl,-rpath,/home/i7620560/NGL/lib -Wl,-rpath,/opt/Qt5.7.0/5.7/gcc_64/lib
LIBS          = $(SUBLIBS) -L/usr/local/lib -Wl,-rpath,/usr/local/lib -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf -L/home/i7620560/Bullet/bullet3/bin/ -lBulletSoftBody -lBulletDynamics -lBulletCollision -lLinearMath -L/home/i7620560/NGL/lib -l NGL -ltiff -L/opt/Qt5.7.0/5.7/gcc_64/lib -lQt5OpenGL -L/usr/lib64 -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = obj/

####### Files

SOURCES       = main.cpp 
OBJECTS       = obj/main.o
DIST          = .qmake.stash \
		ver001.pro  main.cpp
QMAKE_TARGET  = ver001
DESTDIR       = 
TARGET        = ver001


first: all
####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: ver001.pro .qmake.cache /opt/Qt5.7.0/5.7/gcc_64/mkspecs/linux-clang/qmake.conf /opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/sanitize.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/clang.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dcore.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dcore_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dextras.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dextras_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dinput.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dinput_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dlogic.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dlogic_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquick.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquick_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickextras.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickinput.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickrender.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3drender.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3drender_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_charts.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_charts_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_datavisualization.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_datavisualization_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gamepad.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gamepad_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_location.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_location_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_purchasing.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_purchasing_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scxml.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scxml_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialbus.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialbus_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webchannel.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webengine.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecoreheaders_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_websockets.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webview.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webview_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/linux-clang/qmake.conf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/spec_post.prf \
		.qmake.cache \
		.qmake.stash \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/default_pre.prf \
		/home/i7620560/NGL/UseNGL.pri \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/resources.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/moc.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/unix/opengl.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/uic.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/unix/thread.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/file_copies.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/lex.prf \
		ver001.pro \
		/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5OpenGL.prl \
		/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Widgets.prl \
		/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Gui.prl \
		/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Core.prl
	$(QMAKE) -spec linux-clang -o Makefile ver001.pro
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/spec_pre.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/unix.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/linux.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/sanitize.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/gcc-base.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/gcc-base-unix.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/common/clang.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/qconfig.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dcore.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dcore_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dextras.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dextras_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dinput.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dinput_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dlogic.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dlogic_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquick.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquick_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickextras.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickextras_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickinput.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickinput_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickrender.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3dquickrender_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3drender.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_3drender_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_charts.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_charts_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_core.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_datavisualization.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_datavisualization_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designer.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gamepad.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gamepad_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gui.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_help.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_location.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_location_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimedia.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_network.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_nfc.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_positioning.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_purchasing.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_purchasing_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qml.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quick.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_script.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_script_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scripttools.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scxml.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_scxml_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sensors.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialbus.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialbus_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialport.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sql.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_svg.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webchannel.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webengine.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginecoreheaders_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_websockets.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webview.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_webview_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_x11extras.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xml.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt_functions.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt_config.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/linux-clang/qmake.conf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/spec_post.prf:
.qmake.cache:
.qmake.stash:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/exclusive_builds.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/default_pre.prf:
/home/i7620560/NGL/UseNGL.pri:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/resolve_config.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/default_post.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/warn_on.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/qt.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/resources.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/moc.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/unix/opengl.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/uic.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/unix/thread.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/file_copies.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/testcase_targets.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/exceptions.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/yacc.prf:
/opt/Qt5.7.0/5.7/gcc_64/mkspecs/features/lex.prf:
ver001.pro:
/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5OpenGL.prl:
/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Widgets.prl:
/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Gui.prl:
/opt/Qt5.7.0/5.7/gcc_64/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec linux-clang -o Makefile ver001.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents main.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

obj/main.o: main.cpp /home/i7620560/Bullet/bullet3/src/btBulletDynamicsCommon.h \
		/home/i7620560/Bullet/bullet3/src/btBulletCollisionCommon.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionWorld.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btVector3.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btScalar.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btMinMax.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btAlignedAllocator.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btTransform.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btMatrix3x3.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btQuaternion.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btQuadWord.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionObject.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btMotionState.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btAlignedObjectArray.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btDispatcher.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btTransformUtil.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btManifoldResult.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionObjectWrapper.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btBoxShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConvexInternalShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConvexShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btCollisionShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btCollisionMargin.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btAabbUtil2.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btSphereShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btCapsuleShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btCylinderShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConeShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConcaveShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTriangleCallback.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConvexHullShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTriangleMesh.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btOptimizedBvh.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btHashMap.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btSerializer.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btCompoundShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btTetrahedronShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btEmptyShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btMultiSphereShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionShapes/btUniformScalingShape.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/CollisionDispatch/btCollisionConfiguration.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btDbvt.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btQuickprof.h \
		/home/i7620560/Bullet/bullet3/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btDefaultMotionState.h \
		/home/i7620560/Bullet/bullet3/src/LinearMath/btIDebugDraw.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Dynamics/btDynamicsWorld.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Dynamics/btRigidBody.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btSolverBody.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpring2Constraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btGearConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btFixedConstraint.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/ConstraintSolver/btConstraintSolver.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Vehicle/btRaycastVehicle.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Vehicle/btVehicleRaycaster.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Vehicle/btWheelInfo.h \
		/home/i7620560/Bullet/bullet3/src/BulletDynamics/Dynamics/btActionInterface.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/main.o main.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

