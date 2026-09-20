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

    // Ctrl + Shift + 方向键
    Keys.onPressed: (event)=> {
        if ((event.modifiers & Qt.ControlModifier) && (event.modifiers & Qt.ShiftModifier)) {
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
}
