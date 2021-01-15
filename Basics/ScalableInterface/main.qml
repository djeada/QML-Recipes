import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scalable Interface")


    property int dpi: Screen.pixelDensity * 25.4

    function dp(x){
        if (dpi < 120)
            return x;

        return x*(dpi/160);
    }

}
