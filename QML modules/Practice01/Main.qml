import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import My.Backend 1.0

Window{
    visible: true
    width : 640
    height : 480
    title: qsTr("Hello world")

    Button{
        x : 10
        y : 10
        width : 100
        height : 50
        text : qsTr("backend")
        onClicked:{
            Backend.receive("Button 1 msg")
        }
    }

    Button{
        x : 120
        y : 10
        width : 100
        height : 50
        text : qsTr("backend2")
        onClicked: {
            Backend2.receive("Button 2 msg")
        }
    }

    TextArea{
        id : textArea
        x : 10
        y : 70
        font.pointSize : 20
        placeholderText:  qsTr("Msg Area")
    }

    Connections{
        target: Backend
        onMessage: {
            textArea.text = msg
        }
    }

    Connections{
        target: Backend2
        onMessage: {
            textArea.text = msg
        }
    }
}
