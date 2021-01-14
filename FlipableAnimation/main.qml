import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flipable Animation")

    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 6

        FlipableRectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color_1: "green"
            color_2: "black"
        }

        FlipableRectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color_1: "blue"
            color_2: "gray"
        }
    }


}
