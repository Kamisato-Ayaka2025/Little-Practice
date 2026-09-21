import QtQuick

Text {
    linkColor: "green"  // 超链接颜色
    text: "See the <a href=\"https://waleon.blog.csdn.net\">Waleon blog</a>."
    onLinkHovered: console.info(link + " link hovered")
    onLinkActivated: {
        Qt.openUrlExternally(link)
        console.info(link + " link activated")
    }
}
