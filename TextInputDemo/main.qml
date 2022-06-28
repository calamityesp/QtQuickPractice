import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Input Demo")

    Row {
        x: 10
        y: 10
        spacing: 10

        Rectangle {
            id: firstname
            width: firstnameLabelId.implicitWidth + 20
            height: firstnameLabelId.implicitHeight + 20
            color: "beige"

            Text {
                id: firstnameLabelId
                anchors.centerIn: parent
                text: "First Name"
            }
        }
    }
}
