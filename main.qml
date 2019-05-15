import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id:root
    visible: true
    width: 640
    height: 480
    flags: Qt.Window | Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint
    color: "#80000000"

    Item{
        id:mitem
        anchors.fill: parent
        Loader{
            property int pageNo: 0
            function onOClicked()
            {
                console.log("window")
                pageNo = 1;
                root.width = 1024
                root.height = 768
                root.x = Screen.width/2 - root.width/2
                root.y = Screen.height/2 - root.height/2
                source = "qrc:/WorkWindow.qml";
            }
            id:pageLoader
            anchors.fill: parent
            source: "qrc:/LoginWindow.qml";
            onLoaded: {
                if(pageNo == 0){
                    pageLoader.item.oClicked.connect(pageLoader.onOClicked);
                }
            }
        }
    }
}
