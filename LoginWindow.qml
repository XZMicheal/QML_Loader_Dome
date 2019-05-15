import QtQuick 2.0

Item {
    id: mitem
    width: 640
    height: 480

    signal oClicked();

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        Image {
            id: image
            anchors.fill: parent
            source: "Image/Login/backgroud.jpg"
        }
    }

    Item {
        id: itemSelect
        y: 120
        height: 360
        clip: true
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Loader{
            property int pageNo: 0
            function userInputClicked()
            {
                pageNo = 1;
                pageLoader.source = "qrc:/LoginWindow/WaitConnect.qml";
            }
            function userInputMsg(){
                console.log("hello world")
                oClicked();
            }
            function waitConnectedHandling()
            {
                console.log("waitConnectedHandling");
                pageNo = 0;
                pageLoader.source = "qrc:/LoginWindow/UserInput.qml";
            }

            id:pageLoader
            anchors.fill: parent
            source: "qrc:/LoginWindow/UserInput.qml"    //init
            onLoaded: {
                if(pageNo==0){
                    pageLoader.item.oClicked.connect(pageLoader.userInputClicked);
                    pageLoader.item.oMsg.connect(pageLoader.userInputMsg);
                }else if(pageNo == 1){
                    pageLoader.item.oClicked.connect(pageLoader.waitConnectedHandling);
                }else if(pageNo == 2){

                }
            }
        }
    }

}

/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:106;anchors_y:212}D{i:1;anchors_height:200;anchors_width:200;anchors_x:212;anchors_y:177}
}
 ##^##*/
