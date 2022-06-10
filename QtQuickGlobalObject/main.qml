import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.0

Window {
    id: root
    //this will demonstrate the QtQML type which can be found in the documentations
    //this global object can be used to make some things easier. This will just be
    // a simple demonstration on how wt global object can help make your life easier

    width: 640
    height: 480
    visible: true
    title: qsTr("QtQuick Global Object Demo")

     property var fonts : Qt.fontFamilies() //return a list of availble fonts.

    Rectangle {
        id: redRect
        width: 100
        height: 100
        color: "red"
        anchors {
            centerIn: parent
        }

        Text {
            text: "Quit Application"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            anchors.centerIn: parent

            onClicked: {
                console.log("Quiting the Application")

                //use the QT global object to quit the application
                Qt.quit()
            }
        }
    }

    Rectangle {
        width: 50
        height: 50
        color: "green"
        anchors {
            left: redRect.right
            top: redRect.top
            leftMargin: 20
        }

        Text {
            text: "List fonts"
            font.pixelSize: 12
            color: "white"
            anchors.centerIn: parent
            anchors.fill: parent
        }

        MouseArea {
            anchors.fill: parent
            anchors.centerIn: parent

            onClicked: {
                console.log("All available fonts")

                //loop through all of the available fonts and print them to the console.
                for(var i=0; i < fonts.length; i++){
                    console.log(i, ": ", fonts[i], "\n")
                }
            }
        }
    }


}
