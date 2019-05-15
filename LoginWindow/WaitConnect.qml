import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    width: 640
    height: 360

    signal oClicked();
    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Button {
            id: button
            x: 246
            y: 184
            text: qsTr("Button")
            onClicked: {
                oClicked();
            }
        }
    }
}

/*##^## Designer {
    D{i:3;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
}
 ##^##*/
