c++ -arch x86_64 \
    -shared \
    -o libOpenIMAJGStreamer.dylib \
    ../common/OpenIMAJ_GStreamer.cpp \
    -I../common -I/usr/local/include/gstreamer-1.0/ \
    -I/usr/local/include/glib-2.0 \
    -I/usr/local/opt/gettext/include \
    -I/usr/local/lib/glib-2.0/include \
    -L/usr/local/Cellar/gst-plugins-base/1.4.0/lib \
    -L/usr/local/Cellar/gstreamer/1.4.0/lib \
    -L/usr/local/Cellar/glib/2.40.0_1/lib \
    -lglib-2.0 \
    -lgobject-2.0 \
    -lgstapp-1.0 \
    -lgstbase-1.0 \
    -lgstpbutils-1.0 \
    -lgstreamer-1.0 \
    -lgstriff-1.0 \
    -lgstvideo-1.0

c++ -arch x86_64 \
    -o test \
    ../common/main.cpp \
    -I../common \
    -I/usr/local/include/gstreamer-1.0/ \
    -I/usr/local/include/glib-2.0 \
    -I/usr/local/opt/gettext/include \
    -I/usr/local/lib/glib-2.0/include \
    -L/usr/local/Cellar/gst-plugins-base/1.4.0/lib \
    -L/usr/local/Cellar/gstreamer/1.4.0/lib \
    -L/usr/local/Cellar/glib/2.40.0_1/lib \
    -L. \
    -lglib-2.0 \
    -lgobject-2.0 \
    -lgstapp-1.0 \
    -lgstbase-1.0 \
    -lgstpbutils-1.0 \
    -lgstreamer-1.0 \
    -lgstriff-1.0 \
    -lgstvideo-1.0 \
    -lOpenIMAJGStreamer

