import QtQuick 2.12
import QtQuick.Window 2.12
import "board.js" as Board

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Snake")

    property int box_size: 30

    Rectangle {
        anchors.fill: parent
        focus: true

        Rectangle {
            id: food
            width: box_size
            height: box_size

            function place() {
                var random = Math.random() * (window.width);
                x = random - (random % box_size);
                random = Math.random() * (window.height);
                y = random - (random % box_size);
            }

            Component.onCompleted: place()

            Image {
                anchors.fill: parent
                source: "imgs/apple.png"
            }
        }

        Snake {
           id: snake
           body: [[0, 0], [30, 0], [60, 0], [60, 30], [60, 60], [60, 90]]
           rect_width: box_size
           rect_height: box_size
           board_width: window.width
           board_height: window.height
        }

        Keys.onPressed: {
            if (event.key === Qt.Key_Up)
                snake.update_dir(Board.Direction.UP)
            else if (event.key === Qt.Key_Down)
                snake.update_dir(Board.Direction.DOWN)
            else if (event.key === Qt.Key_Left)
                snake.update_dir(Board.Direction.LEFT)
            else if (event.key === Qt.Key_Right)
                snake.update_dir(Board.Direction.RIGHT)
        }

        Timer {
           id: game_timer
           interval: 150
           running: true
           repeat: true
           onTriggered: {
               snake.run()

               if (!snake.alive)
                   running = false

               var head = snake.body[0].slice(0);

               if (head[0] === food.x && head[1] === food.y) {
                   food.place();
                   snake.grow()
               }
           }
       }
    }
}
