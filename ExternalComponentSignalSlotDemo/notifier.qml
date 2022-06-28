import QtQuick 2.15

Item {
    id: notifierRoot
    height: notifierRectId.height
    width: notifierRectId.width

    property int count: 0
    property alias rectColor: notifierRectId.color
    property Reciever target: null //set to null initially, but will be tracking on changes below

    //this signal will be used to send the count property
    signal notify(string count)

    // third way to connect is to set a property here and set the function when it changes.
    // this way doesn't allow for the function to change in the parent:
    onTargetChanged: {
        notify.connect(target.recNotif);
    }



    Rectangle {
        id: notifierRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                count++;
                notify(count) //this will fire whenever count is changed. so when we click we increase count and fire a signal sending the count
            }
        }
    }

}
