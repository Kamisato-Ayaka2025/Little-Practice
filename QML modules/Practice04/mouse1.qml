import QtQuick

Rectangle {
    width: 100
    height: 100
    color: "blue"

    MouseArea {
        anchors.fill: parent
        // 支持所有可能的按钮
        acceptedButtons: Qt.AllButtons
        // 鼠标单击
        onClicked: (mouse)=> {
                       if (mouse.button === Qt.LeftButton) {
                           console.info("left button clicked , %1 , %2".arg(mouse.x).arg(mouse.y))
                       } else if (mouse.button === Qt.RightButton) {
                           console.info("right button clicked")
                       } else if (mouse.button === Qt.MiddleButton) {
                           console.info("middle button clicked")
                       }  else {
                           console.info("button clicked: %1".arg(mouse.button))
                       }
                   }
        // 鼠标双击
        onDoubleClicked: (mouse)=> {
                             if (mouse.button === Qt.LeftButton) {
                                 console.info("area double clicked")
                             }
                         }
        // 鼠标滚轮
        onWheel: (wheel)=> {
            console.info("wheel button clicked, angleDelta: %1, x: %2, y: %3".arg(wheel.angleDelta).arg(wheel.x).arg(wheel.y))
        }
    }
}
