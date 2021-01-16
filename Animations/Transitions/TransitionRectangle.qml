import QtQuick 2.0

Rectangle {
    property int initial_angle
    id: background

    Image {
        id: rocket
        anchors.centerIn: parent
        height: width* sourceSize.width/sourceSize.height
        width: parent.width
        source: "imgs/rocket.png"
    }

    states: [
        State {
            id: state_up
            name: "up"
            PropertyChanges {
                target: rocket;
                rotation: background.initial_angle
            }
        },

        State {
            id: state_down
            name: "down"
            PropertyChanges {
                target: rocket;
                rotation: background.initial_angle + 180
            }
        }
    ]

    state: "up"

    transitions: [
        Transition {
            from: "*"; to: "*"
            PropertyAnimation {
                target: rocket
                properties: "rotation";
                duration: 1000
            }
        }
    ]

    MouseArea {
        anchors.fill: parent
        onClicked: parent.state === "up" ? parent.state = "down" : parent.state = "up"
    }
}
