import QtQuick 2.0
import "board.js" as Board

Repeater {
    id: snake
    property int dir: Board.Direction.DOWN
    property bool alive: true
    property int board_width
    property int board_height
    property int rect_width
    property int rect_height
    property var body

    function update_dir(new_dir) {
        if (dir === Board.Direction.UP && new_dir === Board.Direction.DOWN)
            return
        if (dir === Board.Direction.DOWN && new_dir === Board.Direction.UP)
            return
        if (dir === Board.Direction.LEFT && new_dir === Board.Direction.RIGHT)
            return
        if (dir === Board.Direction.RIGHT && new_dir === Board.Direction.LEFT)
            return
        dir = new_dir
    }

    function run () {
        if (snake.alive) {
            snake.move()
            snake.check_collisions()
        }
    }

    function grow() {
        var head = body[0].slice(0);
        if (dir === Board.Direction.UP)
            head = [head[0], head[1] - snake.rect_height]

        else if (dir === Board.Direction.DOWN)
            head = [head[0], head[1] + snake.rect_height]

        else if (dir === Board.Direction.RIGHT)
            head = [head[0] + snake.rect_width, head[1]]

        else if (dir === Board.Direction.LEFT)
            head = [head[0] - snake.rect_width, head[1]]

        body.unshift(head)
        snake.model = body
    }


    function move() {
        body.pop()
        grow()
     }

    function itemInArray(array , item) {
        for ( var i = 2; i < array.length; i++ ) {
            if (item[0] === array[i][0] && item[1] === array[i][1])
                return true;
         }
         return false;
    }

    function check_collisions() {
        var head = body[0].slice(0);

        //Collision with itself
        if (itemInArray(body, head)) {
            alive = false
            return
        }

        //Collision with board borders
        if (head[0] < 0 || (head[0] + rect_width) > board_width){
            alive = false
            return
        }

        if (head[1] < 0 || (head[1] + rect_height) > board_height){
            alive = false
            return
        }
    }

    function eat(pos) {
       pos.unshift(food.pos.slice(0));
       food.place();
    }

    model: body

    delegate: Rectangle {
        id: rect
        width: rect_width
        height: rect_height
        radius: width/5
        color: 'darkGreen'
        x: model.modelData[0]
        y: model.modelData[1]
    }
}


