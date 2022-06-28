import QtQuick 2.15

Item {
    id: rootId
    property alias buttonText: buttonTextId.text
    signal buttonClicked

    Rectangle {
        width: buttonTextId.implicitWidth + 10
        height: buttonTextId.implicitHeight + 10
        border {
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                //console.log("You clicked a button motherfucker" + buttonTextId.text);
                rootId.buttonClicked();
            }
        }
    }
}


