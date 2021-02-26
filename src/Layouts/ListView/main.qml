import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("List View")

    Row {
        id: row
        height: 50
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Button {
            id: button_1
            text: qsTr("Add Button")
            height: 50

            onClicked: listModel.append({button_text: "Button " + (listModel.count + 1)})
        }

        Button {
            id: button_2
            text: qsTr("Remove Button")
            height: 50

            onClicked: {
                if (listModel.count > 0)
                    listModel.remove(listModel.count - 1)
            }
        }
    }

    ScrollView {
        id: background
        anchors.top: row.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

            ListView {
                id: list_view
                anchors.fill: parent
                focus: true

                delegate: Item {
                    id: item
                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: 50

                    Button {
                        anchors.fill: parent
                        anchors.margins: 5
                        text: button_text
                    }
                }

                model: ListModel {
                    id: listModel
                }
            }
        }
}
