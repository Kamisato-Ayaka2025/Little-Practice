import QtQuick

Rectangle {
    width: 200
    height: 200
    color: "lightgray"

    Rectangle {
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "blue"

        SequentialAnimation on opacity {
            running: true
            loops: Animation.Infinite
            NumberAnimation { from: 1; to: 0; duration: 1000; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 0; to: 1; duration: 1000; easing.type: Easing.InOutQuad }
        }
    }
}
