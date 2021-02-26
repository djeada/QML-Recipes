import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Path View")

    ImagePathView {
        model: path_view_model
        box_size: 100
        window_width: window.width
        window_height: window.height
    }

    ListModel {
       id: path_view_model
       ListElement { file: "imgs/profile.png"
                     name: "profile" }
       ListElement { file: "imgs/rocket.png"
                     name: "rocket" }
       ListElement { file: "imgs/home.png"
                     name: "home" }
       ListElement { file: "imgs/arrow.png"
                     name: "arrow" }
   }

}
