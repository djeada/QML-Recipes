import QtQuick 2.0

Item {

    property string color_1
    property string color_2
    id: background

    Flipable {
       id: flipable
       anchors.centerIn: parent
       property bool flipped: false

       front: Rectangle {
           id: rectangle_1
           color: background.color_1
           width: 100
           height: 100
           anchors.centerIn: parent
       }
       back: Rectangle {
           id: rectangle_2
           color: background.color_2
           width: 100
           height: 100
           anchors.centerIn: parent
       }

       transform: Rotation {
           axis.x: 1; axis.y: 0; axis.z: 0
           angle: flipable.flipped ? 180 : 0

           Behavior on angle {
               NumberAnimation { duration: 500 }
           }
       }
   }

   MouseArea {
       anchors.fill: parent
       onClicked: flipable.flipped = !flipable.flipped
   }
}
