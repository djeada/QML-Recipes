import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("List Item Animation")

    ListView {
        anchors.fill: parent

        delegate: Item {
            height: parent.height/list_model.count
            anchors.left: parent.left
            anchors.right: parent.right

            Rectangle {
                id: body
                anchors.fill: parent
                color: "white"
                clip: true

                Rectangle {
                    id: color_rect
                    height: 0
                    width: 0
                    color: "lightGray"

                    transform: Translate {
                        x: -color_rect.width / 2
                        y: -color_rect.height / 2
                    }
                }

                Text {
                    text: text_item
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    font.pixelSize: 14
                    renderType: Text.NativeRendering
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                }

                MouseArea {
                    anchors.fill: parent

                    onPressed: {
                        color_rect.x = mouseX
                        color_rect.y = mouseY
                        circle_animation.start()
                    }

                    onClicked: circle_animation.stop()
                    onReleased: circle_animation.stop()
                    onPositionChanged: circle_animation.stop()
                }

                PropertyAnimation {
                    id: circle_animation
                    target: color_rect
                    properties: "width,height,radius"
                    from: 0
                    to: body.width*3
                    duration: 1000

                    onStopped: {
                        color_rect.width = 0
                        color_rect.height = 0
                    }
                }
            }
        }
        model:  ListModel {
            id: list_model

            ListElement {text_item: qsTr("Element 1")}
            ListElement {text_item: qsTr("Element 2")}
            ListElement {text_item: qsTr("Element 3")}
            ListElement {text_item: qsTr("Element 4")}
        }
    }
}
