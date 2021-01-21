import QtQuick 2.0

PathView {
    property int box_size
    property int window_width
    property int window_height

    id: view
    anchors.fill: parent
    focus: true

    delegate: Component {
        Column {
            Image {
                anchors.horizontalCenter: delegate_text.horizontalCenter
                source: model.file
                width: box_size
                height: box_size
                smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: delegate_text
                text: model.name
                font.pixelSize: 24
            }
        }
    }

    path: Path {
               startX: box_size; startY: view.height/2
               PathAttribute { name: "iconScale"; value: 0.2 }
               PathAttribute { name: "iconOpacity"; value: 10.2 }
               PathAttribute { name: "iconOrder"; value: 0 }
               PathLine {x: view.width / 2 + box_size; y: view.height/2 }
               PathAttribute { name: "iconScale"; value: 1.2 }
               PathAttribute { name: "iconOpacity"; value: 1 }
               PathAttribute { name: "iconOrder"; value: 8 }
               PathLine {x: view.width + box_size; y: view.height/2 }
           }

    Keys.onLeftPressed: incrementCurrentIndex()
    Keys.onRightPressed: decrementCurrentIndex()
}
