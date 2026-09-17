import QtQuick 2.3

Rectangle {
    width: 300
    height: 200

    gradient: Gradient {
        GradientStop { position: 0.0; color: "yellow" }
        GradientStop { position: 1.0; color: "green" }
    }
}
