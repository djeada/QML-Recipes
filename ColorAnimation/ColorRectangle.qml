import QtQuick 2.0

Item {

    property string color: rectangle.color
    id: background

    Rectangle {
         id: rectangle
         x: 150; y: 150
         width: 100
         height: 100
         color: "red"
     }

     ColorAnimation {
         id: animation_1
         target: rectangle
         property: "color"
         from: background.color
         to: "white"
         duration: 1000
         running: !animation_2.running
     }

     ColorAnimation {
         id: animation_2
         target: rectangle
         property: "color"
         from: "white"
         to: background.color
         duration: 1000
         running: !animation_1.running
     }
}
