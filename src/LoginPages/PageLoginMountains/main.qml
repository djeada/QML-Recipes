import QtQuick 2.15
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 600
    height: 600
    visible: true
    title: qsTr("Page Login")

    ColumnLayout {

        anchors.fill: parent
        spacing: 30

        TopPanel {
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.preferredHeight: 0.4*window.height
        }

        Rectangle {
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: 0.9*window.width
            Layout.preferredHeight: 0.3*window.height

            CredentialPanel {
                anchors.fill: parent

                CheckBox {
                   checked: true
                   text: qsTr("Remeber Me")
                }
            }
        }

        Button {
           id: sign_in_button
           Layout.preferredWidth: 0.8*window.width
           Layout.alignment: Qt.AlignCenter

           text: "Sign Me in Now"
           palette.buttonText: "white"

           background: Rectangle {
               radius: 3
               gradient: Gradient {
                   GradientStop { position: 0 ; color: sign_in_button.pressed ? "#2B60DE" : "#1589FF" }
                   GradientStop { position: 1 ; color: sign_in_button.pressed ? "#1589FF" : "#2B60DE" }
               }
           }
        }

        Text {
            id: link_text
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: 0.1*window.height
            color: "darkGray"
            text: '<html><style type="text/css"></style>I\'m new here. <u><a href="">I want an account.</a></u></html>'
        }
   }
}
