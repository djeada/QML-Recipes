import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15

Window {
    id: mainWindow
    width: 400
    height: 400
    visible: true

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: "black"
    }

    ColumnLayout {
        spacing: 2
        anchors.fill: parent

        Label {
            id: counterLabel
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            text: "0"
            color: "white"
            font.pixelSize: 60
            anchors.horizontalCenter: mainWindow.horizontalCenter

            Connections {
                target: obj

                function onLogsReady(logs) {
                    counterLabel.text = logs;
                }
            }

            background: Rectangle {
                color: "gray"
            }
        }

        Button {
            id: resetButton
            Layout.alignment: Qt.AlignCenter
            text: qsTr("Reset")
            onClicked: obj.setValue(0)
        }

        Button {
            id: incrementButton
            Layout.alignment: Qt.AlignCenter
            text: qsTr("Increment")
            onClicked: obj.increment()
        }

        Button {
            id: decrementButton
            Layout.alignment: Qt.AlignCenter
            text: qsTr("Decrement")
            onClicked: obj.decrement()
        }
    }
}
