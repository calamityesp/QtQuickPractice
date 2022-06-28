import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 1024
    height: 670
    visible: true
    title: qsTr("Dynamic Object Creation From Memory")

    Image {
        id: backgroundImage
        anchors.fill: parent
        width: parent.width
        height: parent.height
        source: "spaceUnsplash_copy.jpg"

        StatusBar {
            id: statusBar
        }        
    }

    PropertyBinding {
        id: propertyBindingBlock
    }
}
