import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0

Page {
    id: page
    width: 480
    height: 800
    clip: true

    AnimatedImage {
        id: animatedImage
        x: 66
        y: 65
        width: 100
        height: 250
        source: "heat-gif.gif"
    }

    Slider {
        id: slider
        x: 10
        y: 65
        width: 50
        height: 250
        to: 100
        stepSize: 1
        orientation: Qt.Vertical
        value: 0
    }

    Text {
        id: text1
        x: 172
        y: 155
        width: 70
        height: 70
        text: slider.value + "°"
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        minimumPixelSize: 18
    }

    RowLayout {}

    RowLayout {}

    ColumnLayout {
        id: sutun
        x: 0
        y: 465
        width: 477
        height: 163
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: text2
            text: qsTr("Hatalar")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.preferredWidth: sutun.width
            Layout.preferredHeight: 30
        }

        ColumnLayout {
            RowLayout {
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.margins: 0
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.preferredWidth: sutun.width
                BorderImage {
                    id: borderImage
                    source: "noun_CPU Overheat_1141052.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                }

                BorderImage {
                    id: borderImage1
                    source: "noun_wrong_219691.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                }

                Image {
                    id: image
                    source: "noun_Error_911854.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                }

                Image {
                    id: image1
                    source: "noun_Broken Link_37722.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                }
                spacing: 35
            }

            RowLayout {
                Text {
                    id: text3
                    text: qsTr("Aşırı Sıcaklık")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 69
                    Layout.preferredHeight: 36
                }

                Text {
                    id: text5
                    text: qsTr("HATA2")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.preferredWidth: 69
                    Layout.preferredHeight: 36
                }

                Text {
                    id: text6
                    text: qsTr("HATA3")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.preferredWidth: 69
                    Layout.preferredHeight: 36
                }

                Text {
                    id: text4
                    text: qsTr("HATA1")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.preferredWidth: 69
                    Layout.preferredHeight: 36
                }
                Layout.preferredWidth: sutun.width
                Layout.preferredHeight: 36
                spacing: 35
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:6}
}
##^##*/
