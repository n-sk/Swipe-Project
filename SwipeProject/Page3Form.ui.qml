import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0

Page {
    id: page
    width: 480
    height: 800

    Slider {
        id: slider1
        x: 8
        y: 76
        width: 50
        height: 250
        orientation: Qt.Vertical
        value: 0
        stepSize: 1
        to: 0
        from: -100
    }

    Text {
        id: text2
        x: 170
        y: 164
        width: 100
        height: 75
        text: slider1.value + "°"
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        minimumPointSize: 12
        maximumLineCount: 3
        clip: false
    }

    AnimatedImage {
        id: animatedImage1
        x: 64
        y: 76
        width: 100
        height: 250
        source: "cold-gif.gif"
    }

    ColumnLayout {
        id: sutun
        x: 0
        y: 465
        width: 477
        height: 163
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: text3
            text: qsTr("Hatalar")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.preferredWidth: sutun.width
            Layout.preferredHeight: 30
        }

        ColumnLayout {
            RowLayout {
                Layout.margins: 0
                Layout.rightMargin: 10
                spacing: 35
                Layout.fillWidth: true
                BorderImage {
                    id: borderImage
                    source: "noun_CPU Overheat_1141052.svg"
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                BorderImage {
                    id: borderImage1
                    source: "noun_wrong_219691.svg"
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Image {
                    id: image
                    source: "noun_Error_911854.svg"
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Image {
                    id: image1
                    source: "noun_Broken Link_37722.svg"
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Layout.leftMargin: 10
                Layout.preferredWidth: sutun.width
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            RowLayout {
                spacing: 35
                Text {
                    id: text4
                    text: qsTr("Aşırı Sıcaklık")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.preferredWidth: 69
                    Layout.preferredHeight: 36
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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
                    id: text7
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
            }
        }
    }
}
