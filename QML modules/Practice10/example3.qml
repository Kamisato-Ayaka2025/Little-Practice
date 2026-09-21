import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Label {
    Layout.preferredWidth: 100
    Layout.preferredHeight: 100
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment : Text.AlignVCenter
    text: qsTr("Hello World!")
    color: "white"

    background: Rectangle {
        color: "green"
        radius: 50
    }
}
