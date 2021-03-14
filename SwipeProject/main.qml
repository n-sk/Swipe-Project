import QtQuick 2.12
import QtQuick.Controls 2.5
//import QtQuick.VirtualKeyboard 2.4

ApplicationWindow {
    id: window
    width: 480
    height: 800
    visible: true
    title: qsTr("Hastane Arabası v1.0")

    SwipeView {
        id: swipeView
        width: 480
        height: 800
        anchors.fill: parent
        anchors.bottomMargin: -529
        currentIndex: tabBar.currentIndex

        Page1Form {
        }
        Page2Form {
        }
        Page3Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Sıcak Menü")
        }
        TabButton {
            text: qsTr("Ayarlar")
        }
        TabButton {
            text: qsTr("Soğuk Menü")
        }
    }

}
