import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Syntax Playground")

    property string displayToCircle: ""


    Row {
        id: row1
        spacing : 20
        anchors.centerIn: parent

        Rectangle {
            id: redRec
            height: 150
            width: 150
            color: "red"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked : {
                    console.log("you are hitting the red baby LETS GO")
                    displayToCircle = "red"
                }
            }
        }

        Rectangle {
            id: blueRec
            height: 150
            width: 150
            color: "blue"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked : {
                    console.log("you are hitting the blue baby LETS GO")
                    displayToCircle = "blue"
                }
            }
        }

        Rectangle {
            id: greenRec
            height: 150
            width: 150
            color: "green"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked : {
                    console.log("you are hitting the green baby LETS GO")
                    displayToCircle = "green"
                }
            }
        }

        Rectangle {
            id: circle
            height: 150
            width: 150
            color: "light blue"
            radius: 100
            Text {
                id: circleText
                anchors.centerIn: pare
                text: displayToCircle
            }

            MouseArea {
                anchors.fill: parent
                onClicked : {
                    console.log("you are hitting the circle baby LETS GO")
                    displayToCircle = "circle"
                }
            }
        }
    }






}
