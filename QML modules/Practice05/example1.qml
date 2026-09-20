import QtQuick

Rectangle {
    width: 100
    height: 100
    color: activeFocus ? "green" : "black"

    // 按下 Tab 键，或者点击鼠标获取焦点
    activeFocusOnTab: true
    MouseArea {
        anchors.fill: parent
        onClicked: parent.forceActiveFocus()
    }

    // 可处理大部分按键事件
    Keys.onPressed: (event)=> {
        console.info("key %1(%2) was pressed".arg(event.text).arg(event.key))

        switch(event.key) {
        case Qt.Key_Left:
            x -= 10;
            break;
        case Qt.Key_Right:
            x += 10;
            break;
        case Qt.Key_Up:
            y -= 10;
            break;
        case Qt.Key_Down:
            y += 10;
            break;
        default:
            return;
        }
    }
}
