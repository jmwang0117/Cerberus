#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/wheeltec_robot/src/navigation-melodic/base_local_planner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/wheeltec_robot/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/wheeltec_robot/install/lib/python2.7/dist-packages:/root/wheeltec_robot/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/wheeltec_robot/build" \
    "/usr/bin/python2" \
    "/root/wheeltec_robot/src/navigation-melodic/base_local_planner/setup.py" \
     \
    build --build-base "/root/wheeltec_robot/build/navigation-melodic/base_local_planner" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/wheeltec_robot/install" --install-scripts="/root/wheeltec_robot/install/bin"
