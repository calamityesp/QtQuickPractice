import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    anchors.fill: parent
    StackView {
        id: stackView
        anchors.fill: parent
        anchors {
            leftMargin: 50
            topMargin: 20
        }

        initialItem: "GridOne.qml"
    }
}
