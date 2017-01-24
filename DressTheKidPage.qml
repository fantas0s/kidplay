import QtQuick 2.0

Rectangle {
    id: dressMainItem
    width: 100
    height: 100
    color: "white"

    Image {
        id: dressMan
        source: "images/dressman.png"
        anchors.centerIn: parent
    }

    MouseArea {
        id: briefsItem
        x: 10
        y: 500
        width: briefs.width
        height: briefs.height
        Image {
            id: briefs
            source: "images/briefs.png"
        }
        drag.target: briefsItem
        drag.axis: Drag.XandYAxis
        drag.minimumX: 0
        drag.maximumX: parent.width
        drag.minimumY: 0
        drag.maximumY: parent.height
        onReleased: {
            if ((briefsItem.x < (dressMan.x+125+(dressMan.width / 4))) &&
                (briefsItem.x > (dressMan.x+125-(dressMan.width / 4))) &&
                (briefsItem.y < (dressMan.y+628+(dressMan.width / 4))) &&
                (briefsItem.y > (dressMan.y+628-(dressMan.width / 4)))) {
                briefsItem.x = dressMan.x+125;
                briefsItem.y = dressMan.y+628;
            }
        }
    }

    MouseArea {
        id: pantsItem
        x: 10
        y: 10
        width: pants.width
        height: pants.height
        Image {
            id: pants
            source: "images/pants.png"
        }
        drag.target: pantsItem
        drag.axis: Drag.XandYAxis
        drag.minimumX: 0
        drag.maximumX: parent.width
        drag.minimumY: 0
        drag.maximumY: parent.height
        onReleased: {
            if ((pantsItem.x < (dressMan.x+(dressMan.width / 4))) &&
                (pantsItem.x > (dressMan.x-(dressMan.width / 4))) &&
                (pantsItem.y < (dressMan.y+628+(dressMan.width / 4))) &&
                (pantsItem.y > (dressMan.y+628-(dressMan.width / 4)))) {
                pantsItem.x = dressMan.x;
                pantsItem.y = dressMan.y+628;
            }
        }
    }
}
