#############################################################################
# Makefile for building: reMarkable
# Generated by qmake (3.1) (Qt 5.11.3)
# Project:  reMarkable.pro
# Template: app
# Command: /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/qmake -o Makefile reMarkable.pro -spec linux-oe-g++ CONFIG+=debug CONFIG+=qml_debug
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = arm-oe-linux-gnueabi-gcc -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
CXX           = arm-oe-linux-gnueabi-g++ -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
DEFINES       = -DQT_DEPRECATED_WARNINGS -DQT_QML_DEBUG -DQT_CORE_LIB
CFLAGS        = -pipe --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -g -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -I/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/QtCore -I. -I/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/linux-oe-g++
QMAKE         = /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = reMarkable1.0.0
DISTDIR = /home/robin/reMarkable/Bootloader_v1/.tmp/reMarkable1.0.0
LINK          = arm-oe-linux-gnueabi-g++ -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
LFLAGS        = --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi
LIBS          = $(SUBLIBS) -lQt5Core -lpthread 
AR            = cqs
RANLIB        = 
SED           = sed
STRIP         = arm-oe-linux-gnueabi-strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp 
OBJECTS       = main.o
DIST          = /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_pre.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/linux.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/sanitize.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base-unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-base.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/oe-device-extra.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qdevice.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/device_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qconfig.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_KArchive.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldebug_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_zlib_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_functions.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/linux-oe-g++/qmake.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_post.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exclusive_builds.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/toolchain.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_pre.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resolve_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_post.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qml_debug.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/warn_on.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resources.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/moc.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/unix/thread.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qmake_use.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/file_copies.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/testcase_targets.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exceptions.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/yacc.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/lex.prf \
		reMarkable.pro  main.cpp
QMAKE_TARGET  = reMarkable
DESTDIR       = 
TARGET        = reMarkable


first: all
####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: reMarkable.pro /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/linux-oe-g++/qmake.conf /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_pre.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/linux.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/sanitize.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base-unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-base.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-unix.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/oe-device-extra.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qdevice.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/device_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qconfig.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_KArchive.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldebug_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_zlib_private.pri \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_functions.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/linux-oe-g++/qmake.conf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_post.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exclusive_builds.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/toolchain.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_pre.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resolve_config.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_post.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qml_debug.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/warn_on.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resources.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/moc.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/unix/thread.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qmake_use.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/file_copies.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/testcase_targets.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exceptions.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/yacc.prf \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/lex.prf \
		reMarkable.pro \
		/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/libQt5Core.prl
	$(QMAKE) -o Makefile reMarkable.pro -spec linux-oe-g++ CONFIG+=debug CONFIG+=qml_debug
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_pre.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/unix.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/linux.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/sanitize.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/gcc-base-unix.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-base.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/common/g++-unix.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/oe-device-extra.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qdevice.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/device_config.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/qconfig.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_KArchive.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bluetooth_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_core_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_edid_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_gui_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_network_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_nfc_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_packetprotocol_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qml_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldebug_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quick_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_svg_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_webchannel_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_websockets_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xml_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/modules/qt_lib_zlib_private.pri:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_functions.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt_config.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/linux-oe-g++/qmake.conf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/spec_post.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exclusive_builds.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/toolchain.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_pre.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resolve_config.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/default_post.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qml_debug.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/warn_on.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qt.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/resources.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/moc.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/unix/thread.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/qmake_use.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/file_copies.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/testcase_targets.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/exceptions.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/yacc.prf:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/lex.prf:
reMarkable.pro:
/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile reMarkable.pro -spec linux-oe-g++ CONFIG+=debug CONFIG+=qml_debug

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/data/dummy.cpp $(DISTDIR)/
	$(COPY_FILE) --parents main.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_objc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_objc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_predefs_make_all: moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) moc_predefs.h
moc_predefs.h: /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/data/dummy.cpp
	arm-oe-linux-gnueabi-g++ -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 -pipe --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi -g -std=gnu++11 -Wall -W -dM -E -o moc_predefs.h /usr/local/oecore-x86_64/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_moc_objc_header_make_all:
compiler_moc_objc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_predefs_clean 

####### Compile

main.o: main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:
