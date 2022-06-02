import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    id: root
    width: 1024
    height:640
    visible: true

    Rectangle {
        id: redRectangle
        anchors {
            centerIn: parent
        }
        width: 100
        height: width + 20
        color: "red"
    }

    Rectangle {
        id: greenRect
        height: 30
        width: 30
        anchors {
            top: redRectangle.bottom
            left: redRectangle.left
        }

        color: "green"

        MouseArea {
            anchors.fill: parent
            onClicked: redRectangle.width += 10
        }
    }

    Rectangle {
        id: blueRect
        height: 30
        width: 30
        anchors {
            left: greenRect.right
            top: greenRect.top
        }
        color: "blue"

        MouseArea {
            anchors.fill: parent
            onClicked: redRectangle.width = 100
        }
    }

}
