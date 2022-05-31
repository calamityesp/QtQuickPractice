import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.0

Item {
    ListModel {
        id: listModel
        ListElement{ name: "One"; page: "StationPage.qml" }
        ListElement{ name: "Two"; page: "" }
        ListElement{ name: "Three"; page: "" }
        ListElement{ name: "Four"; page: "" }
        ListElement{ name: "Five"; page: "" }
        ListElement{ name: "Six"; page: "" }
        ListElement{ name: "Seven"; page: "" }
        ListElement{ name: "Eight"; page: "" }
    }

    GridView {
        id: gridView
        anchors.fill: parent
        model: listModel //a list of elements we will use for the grid (with the data we will use as well)
        cellHeight: 240
        cellWidth: 240

        //delegate is how you want to draw each item in the grid. in this case we will draw a rectangle for each grid item
        delegate: Rectangle {
            width: 200
            height: 200
            color: "grey"
            radius: 5
            Text {
                color: "white"
                text: name
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                //reference the loader defined on the main.qml page and replace it with the value in the page element in our ListElement
                onClicked: mainLoader.source = page
            }
        }

    }

    //make sure to add the controls library for buttons

    RowLayout {
        id:buttonRow1
        anchors {
            bottom: parent.bottom
            right: parent.right
            margins: 40
        }

        Button {
            id: qialogTester
            Text {
                id: dialogButtonText
                text: "Dialog Test"
                anchors.centerIn: parent
            }
            onClicked: mainDialog.open()
        }

        Button  {
                id: prevButton
                Layout.alignment: Qt.AlignLeft
                Text {
                    id: prevButtonText
                    anchors.centerIn: parent
                    text: "Previous"
                    color: "white"
                }
            }

        Button  {
            id: nextButton
            Layout.alignment: Qt.AlignRight
            Text {
                id: nextButtonText
                anchors.centerIn: parent
                text: "Next"
                color: "white"
            }
            onClicked: stackView.push("GridTwo.qml")
        }
    }

}


