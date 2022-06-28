import QtQuick 2.15

Item {
    id: recieverRoot
    height: recieverRectId.height
    width: recieverRectId.width

    property alias rectColor: recieverRectId.color

    //create slot to recieve the signal
    function recNotif(notice){
        console.log("Updated count from notifier: " + notice);
        recieverdisplayTextId.text = notice;
    }

    Rectangle {
        id: recieverRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: recieverdisplayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }


}
