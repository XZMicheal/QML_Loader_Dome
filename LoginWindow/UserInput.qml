import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Item{
    id:mItem
    width: 640
    height: 360

    signal oClicked();
    signal oMsg(var msg);
    Rectangle {
        id: rectangle
        color: "#ffffff"
        opacity: 0.8
        anchors.fill: parent
        Button {
            id: button
            x: 270
            y: 160
            text: qsTr("跳转到下一页")
            onClicked: {
                mItem.oClicked();
            }
        }

        Button {
            id: button1
            x: 270
            y: 219
            text: qsTr("跳转到下个界面")
            onClicked: {
                mItem.oMsg("Button1");
            }
        }
    }
}
