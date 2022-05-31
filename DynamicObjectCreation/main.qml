import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Dialogs 1.3


Window {
    id: root
    width: 1024
    height: 640
    visible: true
    title: qsTr("Hello World")

    Image {
        id: backgroundImage
        anchors.fill: parent
        width: parent.width
        height: parent.height
        source: "spaceUnsplash.jpg"
    }

    StatusBar {
        id: statusBar
    }

    Loader {
        id: mainLoader
        anchors {
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }
        source: "StackviewPage.qml"
    }

    Dialog {
        id: mainDialog
        title: "Simple Dialog Box"
        standardButtons: StandardButton.Ok | StandardButton.Cancel | StandardButton.Yes
        Text {
            id: mainDialogText
            text: "Im a main dialogue"
        }

    }
}
