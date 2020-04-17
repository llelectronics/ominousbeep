import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    ListModel {
        id: aboutModel
        ListElement {
            txt: qsTr("Inspired by Rick & Morty TV series")
            url: "https://www.youtube.com/watch?v=VlgZi1UHk_E"
        }
        ListElement {
            txt: qsTr("Copyright Leszek Lesner (C) 2020")
        }
        ListElement {
            txt: qsTr("License: GPLv3+")
            url: "https://github.com/llelectronics/ominousbeep"
        }
    }

    SilicaListView {
        id: listView
        model: aboutModel
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("About")
            description: qsTr("Version: " + appVersion)
        }
        delegate: BackgroundItem {
            id: delegate

            Label {
                x: Theme.horizontalPageMargin
                text: txt
                anchors.verticalCenter: parent.verticalCenter
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            onClicked: Qt.openUrlExternally(url)
        }
        VerticalScrollDecorator {}
    }
}
