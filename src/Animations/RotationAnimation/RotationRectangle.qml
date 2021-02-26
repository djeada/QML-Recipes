import QtQuick 2.0

Item {

    property string color: "red"
    id: background

    Rectangle {
         id: rectangle
         x: 150; y: 150
         width: 100
         height: 100
         color: background.color
         smooth: true

         RotationAnimation on rotation {
              from: 0; to: 360
              direction: RotationAnimation.Clockwise
              duration: 2000
          }
     }
}
