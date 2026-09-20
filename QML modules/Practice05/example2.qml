import QtQuick

Rectangle {
    width: 100
    height: 100
    color: activeFocus ? "green" : "black"

    activeFocusOnTab: true
    MouseArea {
        anchors.fill: parent
        onClicked: parent.forceActiveFocus()
    }

    // 专用按键 - 方向键：左、右、上、下
    Keys.onLeftPressed: {
        x -= 10
    }
    Keys.onRightPressed: {
        x += 10
    }
    Keys.onUpPressed: {
        y -= 10
    }
    Keys.onDownPressed: {
        y += 10
    }
}
