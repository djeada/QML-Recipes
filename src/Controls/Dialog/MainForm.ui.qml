import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    width: 640
    height: 480

    property alias button1: button1
    property alias button2: button2

    ColumnLayout {
        anchors.centerIn: parent

        Button {
            id: button1
        }

        Button {
            id: button2
        }
    }
}
