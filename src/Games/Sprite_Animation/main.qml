import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Sprites")


    AnimatedSprite {
            id: sprite;
            width: 200;
            height: 200;
            x: 0;
            y: parent.height/2 - height/2;
            source: "img/animation.png";
            frameCount: 4;
            frameRate: 25;
            loops: Animation.Infinite;
            running: true;

            NumberAnimation {
                id: sprite_number_animation
                target: sprite;
                property: "x";
                from: sprite.x;
                to: window.width;
                duration: 3000;
                loops: Animation.Infinite;
                running: true;
            }
        }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (sprite.paused)
                sprite.resume();
            else
                sprite.pause();
            sprite_number_animation.running = !sprite_number_animation;
        }
    }
}

