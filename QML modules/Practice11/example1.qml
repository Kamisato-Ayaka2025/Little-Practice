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
                PropertyChanges { target: rectangle; opacity: 0 }
            }
        ]

//        transitions: [
//            Transition {
//                from: "visibleState"
//                to: "hiddenState"
//                NumberAnimation { properties: "opacity"; duration: 1000 }
//            },
//            Transition {
//                from: "hiddenState"
//                to: "visibleState"
//                NumberAnimation { properties: "opacity"; duration: 1000 }
//            }
//        ]

        transitions: Transition {
            from: "*"
            to: "*"
            NumberAnimation { properties: "opacity"; duration: 1000 }
        }
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
