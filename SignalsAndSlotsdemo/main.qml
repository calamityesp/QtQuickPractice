import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 500
    height: 700
    title: qsTr("Signals And Slots Demo")
    visible: true

    Rectangle {
        id: recangleId
        width: 200
        height: 300
        color: red

        signal greet(string message) // declare the signal
        function MyGreeting(mMessage){
            console.log("Signal Slot message: " + mMessage)
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.error("We clicked some shit");
                greet("Hello There") //Fire the signal
            }
        }


        Component.onCompleted: {
            greet.connect(myGreeting); //connects the greeting to the slot
        }
    }

}
