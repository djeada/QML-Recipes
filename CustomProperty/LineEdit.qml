import QtQuick 2.0
import QtQuick.Layouts 1.15

ColumnLayout {
    property string text: text_input.text
    spacing: 2

    Rectangle {
        id: background_header
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        Layout.preferredHeight: 16
        Text {
            id: header
            text: "Line Edit"
            font.pixelSize: parent.height - 3
        }
    }


    Rectangle {
        id: background_text_area
        Layout.fillHeight: true
        Layout.fillWidth: true
        border.color: "black"
        radius: 1;
        smooth: true
        clip: true

        TextInput {
            id: text_input
            width: parent.width
            text: ""
            color: focus ? "black" : "gray"
            font.pixelSize: parent.height - 8

        }
    }
}

