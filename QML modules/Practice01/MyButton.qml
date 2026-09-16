import QtQuick
import "My_Button_Imply.js" as logic

Rectangle{
    id : root

    implicitWidth: image.width
    implicitHeight: image.height
    color: "white"

    signal clicked()

    Image{
        id : image
        source: "Qt_log.png"
        anchors.fill: parent
    }

}


