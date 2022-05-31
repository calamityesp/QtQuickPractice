import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Rectangle {
    id:statusBar
    height:45
    anchors {
        left: parent.left
        right: parent.right
        top : parent.top
        }

    color: Qt.rgba(0,0,0,0)

    RowLayout {
        id: buttonRow
        height: statusBar.height
        width: statusBar.width / 4
        spacing: 0
        anchors {
            left: statusBar.left
            top: statusBar.top
        }

        Button {
            id:backButton
            width: parent.width / 3
            text: "Back"
        }

        Button {
            id:homeButton
            width: parent.width / 3
            text: "Home"
        }

        Button {
            id:favButton
            width: parent.width / 3
            text: "Favorite"
        }
    }

    Text {
        id: statusText
        anchors {
            top: parent.top
            right: parent.right
            rightMargin: 10
            }
        width: parent.width / 4
        height: parent.height
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter


        text: "21F 12:55 PM"
        color: "white"
        font.pixelSize: 20
    }
}
