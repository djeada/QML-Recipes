import QtQuick 2.0

Item {

    property string color
    property int x_0
    property int y_0
    property int x_1
    property int y_1

    id: background

    Rectangle {
         id: rectangle
         x: background.x_0
         y: background.y_0
         width: 100
         height: 100
         color: background.color
     }

    NumberAnimation {
          target: rectangle
          properties: "x"
          to: background.x_1;
          duration: 2000
          running: true
      }

    NumberAnimation {
          target: rectangle
          properties: "y"
          to: background.y_1;
          duration: 2000
          running: true
      }
}
