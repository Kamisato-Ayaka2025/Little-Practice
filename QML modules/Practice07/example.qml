import QtQuick
import QtQuick.Layouts

Rectangle {
    id: compontentPage

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Item {
            Layout.fillWidth: true
        }

        StateButton {
            text: "Home"
            onClicked: console.info("home button clicked")
        }
        StateButton {
           background: "orange"
           text: "About"
           onClicked: console.info("about button clicked")
        }
        StateButton {
           background: "green"
           text: "Contact"
           onClicked: console.info("contact button clicked")
        }

        Item {
            Layout.fillWidth: true
        }
    }
}
