import QtQuick 2.0
import QtQuick.Layouts

Rectangle {
    id: rect
    width: 150
    height: 150
    color: activeFocus ? "green" : "black"

    // 按下 Tab 键，或者点击鼠标获取焦点
    activeFocusOnTab: true
    MouseArea {
        anchors.fill: parent
        onClicked: parent.forceActiveFocus()
    }

    // 设置按键事件传递的顺序
    Keys.forwardTo: [subRect2, subRect1]

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Item {
            Layout.fillWidth: true
        }

        Rectangle {
            id: subRect1
            width: 50
            height: 50
            color: "orange"

            Keys.onPressed: (event)=> {
                console.info("subRect1 pressed")

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

        Rectangle {
            id: subRect2
            width: 50
            height: 50
            color: "orange"

            Keys.onPressed: (event)=> {
                console.info("subRect2 pressed")

                switch(event.key) {
                case Qt.Key_Left:
                    x -= 10;
                    break;
                case Qt.Key_Right:
                    x += 10;
                    break;
                case Qt.Key_Up:
                    y -= 10;
                    event.accepted = true;  // 表明事件已被处理，无需继续传递
                    break;
                case Qt.Key_Down:
                    y += 10;
                    event.accepted = true;
                    break;
                default:
                    return;
                }
            }
        }

        Item {
            Layout.fillWidth: true
        }
    }
}
