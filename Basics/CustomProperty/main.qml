import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Property")
    
    LineEdit {
         id: lineEdit
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.top: parent.top
         anchors.topMargin: 0.05*window.height
         width: 0.8*window.width;
         height: 0.2*window.height
     }

     Text {
         anchors.top: lineEdit.bottom
         anchors.topMargin: 12
         anchors.left: parent.left
         anchors.leftMargin: 16
         text: "<b>Your text:</b> " + lineEdit.text
     }

     Image {
         id: clearButton
         source: "img/Clear_Icon.png"
         height: 50
         width: 50
         anchors.left: lineEdit.right
         anchors.verticalCenter: lineEdit.verticalCenter
         MouseArea {
             anchors.fill: parent
             onClicked: lineEdit.text = ""
         }
     }
}
