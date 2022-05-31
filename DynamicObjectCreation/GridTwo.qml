import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15

Item {
    ListModel {
        id: listModel
        ListElement{ name: "Nine"; page: "" }
        ListElement{ name: "Ten"; page: "" }
        ListElement{ name: "Eleven"; page: "" }
        ListElement{ name: "Twelve"; page: "" }
        ListElement{ name: "Thirteen"; page: "" }
        ListElement{ name: "Fourteen"; page: "" }
        ListElement{ name: "Fifteen"; page: "" }
        ListElement{ name: "Sixteen"; page: "" }
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

        Button  {
                id: prevButton
                Layout.alignment: Qt.AlignLeft
                Text {
                    id: prevButtonText
                    anchors.centerIn: parent
                    text: "Previous"
                    color: "white"
                }

                //this will pop the view view from the stackView
                onClicked: stackView.pop("GridTwo.qml")
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
        }
    }
}
