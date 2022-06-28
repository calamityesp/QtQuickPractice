import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Componenets With Signal and Slots")


    Notifier {
        id: notifierOne
        rectColor: "dodgerblue"
        target: recieverOne
        /*Component.onCompleted: {
            //notify.connect(recieverOne.recNotif) with this way: we connect the signal from the notifier to the reciever from the main function in this case
        }*/
    }

    Reciever {
        id: recieverOne
        anchors.right: parent.right
        rectColor: "yellowgreen"
    }

    //we can also connect our slot from reciever one in the parent like this, as long as we specify the ids
    /*
     Component.onCompleted: {
            notifierOne.notify.connect(recieverOne.recNotif)
       }
    */
}
