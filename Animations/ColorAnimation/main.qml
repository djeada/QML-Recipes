import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Color Animation")

    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 6

        ColorRectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "green"
        }

        ColorRectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "blue"
        }
    }


}
