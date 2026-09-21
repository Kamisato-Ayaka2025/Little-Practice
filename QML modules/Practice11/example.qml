import QtQuick

Rectangle {
    width: 200
    height: 200
    color: "lightgray"

    Rectangle {
        id: rectangle
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "blue"
        state: "visibleState"  // 初始状态

        states: [
            State {
                name: "visibleState"
                PropertyChanges { target: rectangle; opacity: 1 }
            },
            State {
                name: "hiddenState"
                changes: [  // changes 可省略
                    PropertyChanges { target: rectangle; opacity: 0 }
                ]
            }
        ]
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (rectangle.state === "visibleState") {
                rectangle.state = "hiddenState";
            } else {
                rectangle.state = "visibleState";
            }
        }
    }
}
