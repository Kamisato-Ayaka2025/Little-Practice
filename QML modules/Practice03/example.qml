import QtQuick

Rectangle{
    id : root
    width : 200
    height : root.width
    color : "black"

    Rectangle{
        anchors.top : parent.top
        anchors.left : parent.left
        anchors.topMargin : 50
        anchors.leftMargin : 50
        
        width : root.width / 4
        height : this.width

        color : "green"
    }

    Rectangle{
        x : root.width / 2
        y : x

        width : root.width / 4
        height : this.width
        color : "yellow"
    }
}