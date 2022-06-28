import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    anchors.centerIn: parent

    Rectangle {
        id: redPropRect
        width: 100;
        height: 100;
        anchors.centerIn: parent
        color: "red"
    }



    Rectangle {
        id: bluePropRect
        width: 50
        height: 50
        anchors {
            left: redPropRect.right
            top: redPropRect.bottom
        }

        MouseArea {
            height: parent.height
            width: parent.width

            onClicked: {
                console.log("You used property binding to resize the large rectangle");
                redPropRect.width += 10;
                redPropRect.height += 10
            }
        }
    }

}
