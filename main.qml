import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.1

Window {
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("TR_Kidsplay educative")
    id: root

    DressTheKidPage {
        id: dressPage
        anchors.fill: parent
    }
}
