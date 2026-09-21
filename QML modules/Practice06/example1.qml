import QtQuick

Item {
    width: 200; height: 200

    Rectangle {
        width: 100; height: 100
        color: "green"

        Rectangle {
            z: -1
            x: 50; y: 50; width: 100; height: 100
            color: "blue"
        }
    }
}
