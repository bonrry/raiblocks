import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello Rai")

    header: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }

    Label {
        id: isLocked
        text: qsTr("Locked")
    }

    Label {
        id: isConnected
        text: qsTr("Connected")
        anchors.top: isLocked.bottom
    }

    Label {
        id: syncStatus
        text: qsTr("Sync")
        anchors.top: isConnected.bottom
    }
}
