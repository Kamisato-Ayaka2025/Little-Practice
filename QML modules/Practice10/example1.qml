import QtQuick

Text {
    text: qsTr("Hello World!")

    font {
        family: "Helvetica"  // 字体
        pointSize: 20  // 字体大小
        bold: true    // 粗体
        italic: true  // 斜体
        underline: true  // 下划线
        capitalization: Font.AllLowercase   // 大小写（文本自动转小写）
    }
}
