import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements Demo")


    Item {
        id: containerItemID
        x: 50
        y: 50

        width: parent.width - 100
        height: 200

        //child rectangle that fills the entire item
        Rectangle {
            anchors.fill: parent
            color: "purple"
            border.color: "black"


        }


        //other child rectangles with fixed x, y positions
        Rectangle {
            x: 0
            y: 10
            width: 50
            height: 15
            color:"red"

            MouseArea {
                anchors.fill: parent

                onClicked: {

                }
            }
        }

        Rectangle {
            x: 60
            y: 10
            width: 50
            height: 15
            color:"green"

            MouseArea {
                anchors.fill: parent

                onClicked: {

                }
            }
        }

        Rectangle {
            x: 120
            y: 10
            width: 50
            height: 15
            color:"blue"

            MouseArea {
                anchors.fill: parent

                onClicked: {

                }
            }
        }

        Rectangle {
            x: 180
            y: 10
            width: 50
            height: 15
            color:"magenta"

            MouseArea {
                anchors.fill: parent

                onClicked: {

                }
            }
        }

        Text {
            x: 100
            y: 100
            id: mTextId
            text: "Hello World"
            font {
                family: "Helvetica";
                pointSize: 13
                bold: true
            }
            color: "red"
        }
        
        //There are three ways to render an image you want to show

        Image {
            //1) projects - run - copy the working directory and paste in explorer - paste image in working director
            //  then code the source like you see below.
            id: workingDirectoryImage
            x: 10
            y: 150
            width: 100
            height: 100

            //note below will trigger a QML error because qt doesn't detect the image is in the working directory, but its there.
            source: "file:LearnQt.png"
        }

        Image {
            //1) add image to resource file : right click project - add new - QT resource file - give name - finish. This will create a resource .qrc file
            // Next: open .qrc file in editor (if its not already) - add prefix (only actually add the prefix if you want to start the path at this resource file
            //       - hit enter because we do not need to add a prefix - click add files (make sure image is stored where the qt files are located (not the working build)
            //         add the image files to the resource - give it an alias if you want
            // Finally:
            id: storedResourceImage
            x: 150
            y: 150
            width: 100
            height: 100

            //when using the images from resource file, you need to specify the path relative to where it is in the qt folder, dont need the full path
            // or you can use the alias... source for this image would be images/learnQt.png.. but since I gave it an alias, I just use the alias to make
            // life easier
            source: "learnQt"
        }
    }
}
