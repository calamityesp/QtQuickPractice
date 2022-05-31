import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectId
        width: 100
        anchors.centerIn: parent

        //property binding is the ability for another property to depend on the value of another property
        height: width * 1.5
        color: "red"
    }
}
