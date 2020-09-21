import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: qsTr("Dialog")
    color: "white"

    MainForm {
        anchors.fill: parent

        Component {
          id: leftButtonStyle

          ButtonStyle {

              background: Rectangle {
                  width: control.width
                  height: control.height
                  color: control.hovered ? "gray" : "white"
              }

              label: Text {
                  font.family: "Helvetica"
                  font.pointSize: 15
                  color: "black"
                  text: control.text
              }
          }

        }

        button1 {
            text: qsTr("Open Dialog")
            style: leftButtonStyle
        }

        button2  {
            text: qsTr("Close")
            style: leftButtonStyle
        }

        button1.onClicked: customDialog.open();
        button2.onClicked: Qt.quit();

        Dialog {
            id: customDialog
            width: 300
            height: 300

            contentItem: Rectangle {
                anchors.fill: parent
                color: "black"

                Rectangle {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: columnHor.top
                    color: "black"

                    Label {
                        id: labelEx
                        anchors.centerIn: parent
                        text: qsTr("Example Dialog")
                        color: "lightblue"
                    }
                }

                Rectangle {
                    id: columnHor
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: bottomRow.top
                    color: "#d7d7d7"
                    height: 5
                }

                Row {
                    id: bottomRow
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: customDialog.height/2

                    Button {
                        id: dialogButtonCancel
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        width: parent.width / 3 - 1
                        text: qsTr("Reject")
                        onClicked: customDialog.close()
                    }

                    Rectangle {
                        id: rowVert1
                        width: 5
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        color: "#d7d7d7"
                    }

                    Button {
                        id: dialogButtonOk
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        width: parent.width / 3 - 1
                        text: qsTr("Accept")
                        onClicked: customDialog.close()
                    }


                    Rectangle {
                        id: rowVert2
                        width: 5
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        color: "#d7d7d7"
                    }

                    Button {
                        id: dialogButtonExpand
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        width: parent.width / 3 - 1
                        text: qsTr("Expand")
                        onClicked: customDialog.close()
                    }
                }
            }
        }
    }
}
