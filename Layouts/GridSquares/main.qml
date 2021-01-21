import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Grid squares")

    Grid {
        anchors.fill: parent
        columns: 2
        rows: 2
        spacing: 0

        Rectangle {
            width: parent.height/2
            height: parent.height/2
            color: "black"
        }
        Rectangle {
            width: parent.height/2
            height: parent.height/2
            color: "green"
        }
        Rectangle {
            width: parent.height/2
            height: parent.height/2
            color: "gray"
        }
        Rectangle {
            width: parent.height/2
            height: parent.height/2
            color: "blue"
        }

    }
}
