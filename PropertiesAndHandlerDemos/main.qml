import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers Demo")

    property string mFirstname: "Daniel" //whenever this property is defined a signal handler is also created. When the
    // property changes changes, QML fires a signal.
    // We can define a signal handler that will handle when the property above changes the QML launches a
    // signal indicating the property change ------ this works for any property, a signal will always be generated
    onMFirstnameChanged: {
        //this signal handler is generated when the property is changed
        console.log("The firstname is changed to: " + mFirstname);
    }

    Rectangle {
        width: 300
        height: 100
        color: "dodgerblue" //you can find the colors from help and colors and qml will show you all of the available colors.
        anchors.centerIn: parent
        Text {
            id: rectText
            anchors.centerIn: parent
            text: qsTr(mFirstname)
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Changing the name to John");
                mFirstname = "John" //when we click the box change the name to John and fire the signal
            }
        }
    }

    Component.onCompleted: {
        console.log("The firstname is : " + mFirstname );
    }
}
