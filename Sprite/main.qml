import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Sprites")

    SpriteSequence {
        x: parent.width/2 - width/2
        y: parent.height/2 - height/2
        width: 250
        height: 250

        sprites: Sprite {
            source: "img/animation.png"
            frameCount: 4
            frameDuration: 100
        }
    }
}

