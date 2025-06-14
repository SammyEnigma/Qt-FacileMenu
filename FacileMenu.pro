QT       += core gui svg

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += interactive_buttons/ \
    color_octree/ \
    facile_menu/

SOURCES += \
    color_octree/coloroctree.cpp \
    color_octree/imageutil.cpp \
    facile_menu/facilemenu.cpp \
    facile_menu/facilemenubar.cpp \
    facile_menu/facilemenuitem.cpp \
    interactive_buttons/interactivebuttonbase.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    color_octree/coloroctree.h \
    color_octree/imageutil.h \
    facile_menu/facilemenu.h \
    facile_menu/facilemenuanimation.h \
    facile_menu/facilemenubar.h \
    facile_menu/facilemenubarinterface.h \
    facile_menu/facilemenuitem.h \
    interactive_buttons/interactivebuttonbase.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

DISTFILES += \
    README.md \
    screenshots/menubar.gif \
    screenshots/picture.gif \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,x86) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
