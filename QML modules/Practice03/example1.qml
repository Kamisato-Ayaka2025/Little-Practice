import QtQuick

Rectangle {
    width: 200
    height: 200
    color: "black"

    Grid {
        topPadding: 50
        leftPadding: 50
        rows: 2
        columns: 2
        spacing: 0

        Rectangle {
            width: 50
            height: 50
            color: "green"
        }
        // 这两个 Item 用于占位
        Item {
            width: 50
            height: 50
        }
        Item {
            width: 50
            height: 50
        }
        Rectangle {
            width: 50
            height: 50
            color: "yellow"
        }
    }
}
