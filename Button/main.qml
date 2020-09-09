import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Buttons Example")

    Item {
        anchors.fill: parent

        ColumnLayout {
            anchors.centerIn: parent

            Button {
                id: button1

                background: Rectangle {
                    color: button1.pressed ? "#RRGGBB" : "#FF0000"
                    border.color: button1.pressed ? "black" : "red"
                    border.width: 5
                    radius: 5
                }

                contentItem: Text {
                    text: qsTr("Button 1")
                    color: button1.pressed ? "#FF0000"  : "white"
                }
            }

            Button {
                id: button2

                background: Rectangle {
                    color: button2.pressed ? "black" : "red"
                    border.color: button2.pressed ? "red" : "black"
                    border.width: 2
                    radius: 5
                }

                contentItem: Text {
                    text: qsTr("Button 2")
                    color: button2.pressed ? "red" : "black"
                }
            }
        }
    }

}

