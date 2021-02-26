import QtQuick 2.15
import QtQuick.Layouts 1.15

ColumnLayout {
    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: 20

        Rectangle {
            id: mail_icon_background
            Layout.preferredWidth: text_input_username.focus ? 39 : 40
            Layout.fillHeight: true
            color: "lightBlue"

            Image {
                id: mail_icon
                source: "imgs/letter.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter:  parent.verticalCenter
                width: parent.width*0.8
                height: parent.widht*0.8
                fillMode: Image.PreserveAspectFit
                mipmap: true
            }

        }

        Rectangle {

            color: "white"
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.color: text_input_username.focus ? mail_icon_background.color : color
            border.width: 1

            TextInput {
                id: text_input_username
                anchors.left: parent.left
                anchors.verticalCenter:  parent.verticalCenter
                text: qsTr("Your username")
                font.family: "Verdana"
                font.pixelSize: 20
                leftPadding: parent.border.width + 3

                onActiveFocusChanged: {
                    if (activeFocus && text === "Your username")
                        text = "";
                }
            }

            MouseArea {
             anchors.fill: parent
             onClicked: text_input_username.forceActiveFocus();
           }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: 20

        Rectangle {
            id: lock_icon_background
            Layout.preferredWidth: text_input_password.focus ? 39 : 40
            Layout.fillHeight: true
            color: "lightGray"

            Image {
                id: lock_icon
                source: "imgs/lock.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter:  parent.verticalCenter
                width: parent.width*0.8
                height: parent.widht*0.8
                fillMode: Image.PreserveAspectFit
                mipmap: true
            }

        }

        Rectangle {
            color: "white"
            Layout.fillWidth: true
            Layout.fillHeight: true
            border.color : text_input_password.focus ? lock_icon_background.color : color
            border.width: 1

            TextInput {
                id: text_input_password
                anchors.left: parent.left
                anchors.verticalCenter:  parent.verticalCenter
                text: qsTr("Your password")
                font.family: "Verdana"
                font.pixelSize: 20
                leftPadding: parent.border.width + 3
                echoMode: text === "Your password" ? TextInput.Normal : TextInput.PasswordEchoOnEdit

                onActiveFocusChanged: {
                    if (activeFocus && text === "Your password") {
                        text = "";
                     }
                }
            }

            MouseArea {
             anchors.fill: parent
             onClicked: text_input_password.forceActiveFocus();
           }
        }

    }
}


