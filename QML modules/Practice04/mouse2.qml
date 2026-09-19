import QtQuick

Rectangle {
    width: 100
    height: 100
    color: "yellow"
    MouseArea {
        anchors.fill: parent
        onClicked: console.info("area1 clicked")
    }

    // 定义小于父组件的区域
    // MouseArea 重叠时，propagateComposedEvents 为 true，mouse.accepted 为 false，事件将继续传递，直到被接收为止
    Rectangle {
        width: 50
        height: 50;
        color: "red"
        MouseArea {
            anchors.fill: parent
            propagateComposedEvents: true
            onClicked: (mouse) =>{
                console.info("area2 clicked")
                mouse.accepted = false
            }
        }
    }
}
