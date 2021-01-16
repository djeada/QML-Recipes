import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Transitions")

    RowLayout {
         id: layout
         anchors.fill: parent
         spacing: 6

         TransitionRectangle {
             Layout.fillWidth: true
             Layout.fillHeight: true
             initial_angle: 0
         }

         TransitionRectangle {
             Layout.fillWidth: true
             Layout.fillHeight: true
             initial_angle: -90
         }
     }

}
