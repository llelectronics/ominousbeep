import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("Ominousbeep App")
    }
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
    SoundEffect {
        id: soundEffect
        source: "../pages/res/btimer-sound.wav"
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-alarm"
            onTriggered: soundEffect.play()
        }
    }
}
