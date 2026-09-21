// StateButton.qml 
import QtQuick

Item {
    id: root

    // 属性声明
    property alias text: label.text
    property color background: "blue"

    // 信号声明
    signal clicked()

    width: 150; height: 80

    Rectangle {
        anchors.fill: parent
        // 背景色（三态）
        color: mouse.containsMouse
               ? (mouse.pressed
                  ? Qt.rgba(root.background.r, root.background.g, root.background.b, 0.85)
                  : Qt.rgba(root.background.r, root.background.g, root.background.b, 0.7))
               : root.background

        // 显示文本
        Text {
            id: label
            anchors.centerIn: parent
            color: "white"
        }

        // 鼠标区域
        MouseArea {
            id: mouse
            anchors.fill: parent
            hoverEnabled: true
            onClicked: root.clicked()
        }
    }
}
