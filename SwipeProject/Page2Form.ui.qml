import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs.qml 1.0
import QtQuick.Layouts 1.11
import QtQuick.Shapes 1.14
import QtGraphicalEffects 1.0

Page {
    width: 480
    height: 800
    property alias itemDelegate: itemDelegate

    ColumnLayout {
        x: 0
        y: 0
        height: 750

        Rectangle {
            id: rectangle
            color: "#cf8e8e"
            radius: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 400
            Layout.preferredWidth: 480

            Text {
                id: text1
                x: 0
                y: 8
                width: 480
                height: 20
                text: qsTr("KABLOSUZ BAĞLANTI")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle1
            color: "#cca1a1"
            radius: 50
            border.color: "#000000"
            border.width: 1
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.preferredHeight: 400
            Layout.preferredWidth: 480
            gradient: Gradient {
                GradientStop { position: 0.0; color: "red" }
                GradientStop { position: 0.33; color: "yellow" }
                GradientStop { position: 1.0; color: "green" }
            }

            MouseArea {
                id: mouseArea
                x: 32
                y: 74
                width: 80
                height: 80

                Connections {
                    target: mouseArea
                    onClicked: popup.open()
                }
            }

            Image {
                id: image
                x: 32
                y: 74
                width: 80
                height: 80
                source: "noun_Language_3325148.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text3
                x: 200
                y: 74
                width: 80
                height: 80
                text: qsTr("Text")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                rotation: -0.078
            }

            ItemDelegate {
                id: itemDelegate
                x: 303
                y: 84
                text: qsTr("Item Delegate")
                checkable: true
                checked: false
                highlighted: false

                Text {
                    id: text2
                    x: -302
                    y: -68
                    width: 480
                    height: 20
                    text: qsTr("AYARLAR")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Popup
            {
                id: popup
                anchors.centerIn: rectangle1
                width: 450; height: 370
                dim: false
                focus: true

                closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
                ColumnLayout {
                    anchors.fill: parent
                    CheckBox { text: qsTr("E-mail") }
                    CheckBox { text: qsTr("Calendar") }
                    CheckBox { text: qsTr("Contacts") }
                }
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}
}
##^##*/
