import QtQuick
import QtQuick.Layouts

GridLayout {
    width: 100; height: 100
    columns: 2

    Rectangle {
        id: topLeft
        width: 50; height: 50
        color: activeFocus ? "green" : "black"
        MouseArea {
            anchors.fill: parent
            onClicked: parent.forceActiveFocus()
        }

        KeyNavigation.right: topRight
        KeyNavigation.down: bottomLeft
    }

    Rectangle {
        id: topRight
        width: 50; height: 50
        color: activeFocus ? "green" : "black"

        KeyNavigation.left: topLeft
        KeyNavigation.down: bottomRight
    }

    Rectangle {
        id: bottomLeft
        width: 50; height: 50
        color: activeFocus ? "green" : "black"

        KeyNavigation.right: bottomRight
        KeyNavigation.up: topLeft
    }

    Rectangle {
        id: bottomRight
        width: 50; height: 50
        color: activeFocus ? "green" : "black"

        KeyNavigation.left: bottomLeft
        KeyNavigation.up: topRight
    }
}
