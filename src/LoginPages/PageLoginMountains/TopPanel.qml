import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {

    Image {
        id: mountains_image
        source: "imgs/moutains.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        clip: true
        mipmap: true
    }

    Text {
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:  parent.verticalCenter
        text: "SIGN IN"
        font.family: "Helvetica"
        font.pointSize: 40
    }
}
