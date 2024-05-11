import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("textEditorWithScallbar")
    FlickableEditor {
        id: id_textEditorWithScallbar
        anchors.fill: parent
    }
}
