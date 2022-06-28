import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {

        MButton {
            id: buttonOne
            buttonText: "Booty"

            onButtonClicked: {
                console.log("You clicked the booty button")
            }
        }

        MButton {
            id: buttonTwo
            x: 50
       }
    }
}
