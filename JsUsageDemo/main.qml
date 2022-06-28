import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript Usage Demo")


    Rectangle {
        id: containerRectId
        height: 100
        width: getHeight()
        color: x > 300 ? "red" : "green"

        onXChanged: {
            console.log("Current value changed")
        }

        function getHeight()
        {
            return height * 2
        }

    }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX:  parent.width - containerRectId.width
    }



}
