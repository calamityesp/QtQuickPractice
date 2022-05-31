import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectId
        width: 10
        anchors.centerIn: parent

        //property binding is the ability for another property to depend on the value of another property
        // the height is bound to the width here
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors {
            top: redRectId.bottom
            left: redRectId.left
        }

        Text {
            id: blueRectIdText
            color: "white"
            text: "Increase Width By pushing me"
            font.pixelSize: 10
            anchors.centerIn: parent
        }

        MouseArea {
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
            anchors.fill: parent
        }
    }


    //this is an example of how to break the property binding, then you press this rectangle, then you will break the width binding of the first
    //rectangle and it will only increment the width of the first rectangle by 10
    Rectangle {
        id: greenRectId
        color: "green"
        Text {
            text: "breaking the property binding"
        }
        width: 100
        height: 100

        //this will break QT property binding in older versions of qt
        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.width = 100
            }
        }

        //to fix this then we need to do something like this



    }
}
