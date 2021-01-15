import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Navigation")

    RowLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            id: rect_1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: activeFocus ? "green" : "darkgreen"
            KeyNavigation.right: rect_2
            focus: true
        }

        Rectangle {
            id: rect_2
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: activeFocus ? "blue" : "darkblue"
            KeyNavigation.left: rect_1
            KeyNavigation.right: rect_3
        }

        Rectangle {
            id: rect_3
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: activeFocus ? "white" : "gray"
            KeyNavigation.left: rect_2
        }
    }
}

