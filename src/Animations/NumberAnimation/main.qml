import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Number Animation")
    id: window

    Row {
           id: layout
           anchors.fill: parent
           spacing: 6

            NumberRectangle {
               x_0: 0
               y_0: 0
               x_1: window.width - 100
               y_1: window.height - 100
               color: "green"
           }

           NumberRectangle {
               x_0: window.width - 100
               y_0: 0
               x_1: 0
               y_1: window.height - 100
               color: "blue"
           }
       }
}
