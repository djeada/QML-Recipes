import QtQuick 2.0

Rectangle {
    ListView {
        id: list_view
        orientation: ListView.Vertical
        boundsBehavior: Flickable.StopAtBounds
        anchors.fill: parent
        delegate: Item {
            width: list_view.width
            height: 60
            Row {
                Rectangle {
                    width: list_view.width
                    height: 60
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#ffffff" }
                        GradientStop { position: 1.0; color: "#f0f0f0" }
                    }

                    Image {
                        id: icon_image
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.margins: 10
                        width: 0.8*parent.height
                        height: 0.8*parent.height
                        source: icon
                    }

                    Column {
                        anchors.left: icon_image.right
                        anchors.margins: 10
                        Text {
                            text: title
                            font.family: "Courier"
                            font.pixelSize: 25
                        }

                        Text {
                            text: subtitle
                            font.family: "Verdana"
                            font.pixelSize: 20
                        }
                    }

                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        width: 0.7*parent.height
                        height: 0.7*parent.height
                        source: "imgs/arrow.png"
                    }
                }
            }
        }

        model:ListModel {
            ListElement {
                title: "Home"
                subtitle: "Go back to dashboard"
                icon: "/imgs/home.png"
            }

            ListElement {
                title: "Profile"
                subtitle: "Customize your profile picture"
                icon: "/imgs/profile.png"
            }

            ListElement {
                title: "Search"
                subtitle: "Search for nearby places"
                icon: "/imgs/search.png"
            }

            ListElement {
                title: "Settings"
                subtitle: "Customize your app settings"
                icon: "/imgs/settings.png"
            }
        }
    }
}
