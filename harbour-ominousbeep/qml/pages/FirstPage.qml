import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.PortraitMask

    Rectangle {
        anchors.fill: parent
        color: "black"
    }


    Rectangle {
        id: outer
        height: parent.width - (2 * Theme.paddingLarge)
        width: height
        radius: width * 0.5
        color: "black"
        border.color: "red"
        border.width: 32
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: Theme.paddingLarge
    }

    Rectangle {
        id: innerOne
        height: outer.height / 1.3
        width: height
        radius: width * 0.5
        color: "black"
        border.color: "red"
        border.width: 24
        anchors.centerIn: outer
    }

    Rectangle {
        id: inner
        height: outer.height / 1.8
        width: height
        radius: width * 0.5
        color: "red"
        anchors.centerIn: outer
    }

    MouseArea {
        anchors.fill: outer
        onClicked: soundEffect.play()
    }

    SoundEffect {
        id: soundEffect
        source: "res/btimer-sound.wav"
    }

    Label {
        id: om
        color: "lightgreen"
        font.pixelSize: Theme.fontSizeHuge * 2
        font.bold: true
        text: "OMINOUS"
        anchors.top: outer.bottom
        anchors.topMargin: Theme.paddingLarge
        anchors.left: parent.left
        anchors.leftMargin: Theme.paddingLarge
    }
    Label {
        id: be
        color: "lightgreen"
        font.pixelSize: Theme.fontSizeHuge * 2
        font.bold: true
        text: "BEEPING"
        anchors.top: om.bottom
        anchors.topMargin: Theme.paddingSmall
        anchors.left: parent.left
        anchors.leftMargin: Theme.paddingLarge
    }
    Label {
        id: ap
        color: "lightgreen"
        font.pixelSize: Theme.fontSizeHuge * 2
        font.bold: true
        text: "APP"
        anchors.top: be.bottom
        anchors.topMargin: Theme.paddingSmall
        anchors.left: parent.left
        anchors.leftMargin: Theme.paddingLarge
    }

}
