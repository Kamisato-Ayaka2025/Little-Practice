import QtQuick

Rectangle {
    width: 100
    height: 100
    color: "green"

    // 充满父元素
    MouseArea {
        anchors.fill: parent
        onClicked: parent.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
    }
}
