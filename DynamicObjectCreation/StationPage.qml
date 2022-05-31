import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.0

Item {
    Text {
        id:stationName
        text: 'Station'
        anchors {
            left: parent.left
            top: parent.top
            margins: 40
        }
        font.pixelSize: 40
        color: "white"
    }

    Text {
        id: artistSongLabel
        anchors {
            left: parent.left
            top: stationName.bottom
            horizontalCenter: stationName.horizontalCenter
            leftMargin: 60
        }
        text:  "Unknown Artist"
        color: "white"
        font.pixelSize: 20
    }

    Button {
        id: backButton
        anchors {
            left: parent.left
            bottom: parent.bottom
            margins: 40
        }

        Text {
            id: backButtonText
            anchors.centerIn: parent
            text: "Back"
        }

        onClicked: mainLoader.source = "StackviewPage.qml"

    }


}
