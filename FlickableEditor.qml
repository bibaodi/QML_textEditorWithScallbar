import QtQuick
import QtQuick.Controls

Flickable {
    id: flickable
    property var textAreaId: textArea
    flickableDirection: Flickable.VerticalFlick
    anchors.fill: parent

    TextArea.flickable: TextArea {
        id: textArea
        textFormat: Qt.RichText
        wrapMode: TextArea.Wrap
        focus: true
        selectByMouse: true
        persistentSelection: true
        // Different styles have different padding and background
        // decorations, but since this editor is almost taking up the
        // entire window, we don't need them.
        leftPadding: 6
        rightPadding: 6
        topPadding: 0
        bottomPadding: 0
        background: Rectangle {
            anchors.fill: parent
            color: "green"
        }
    }

    ScrollBar.vertical: ScrollBar {}

    Component.onCompleted: {
        for (var i = 0; i < 200; i++) {
            var msg = "line: " + i
            textArea.append(msg)
        }
    }
}
