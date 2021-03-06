/****************************************************************************
**
** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
** All rights reserved.
** Contact: Nokia Corporation (qt-info@nokia.com)
**
** This file is part of the QtDeclarative module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** GNU Lesser General Public License Usage
** This file may be used under the terms of the GNU Lesser General Public
** License version 2.1 as published by the Free Software Foundation and
** appearing in the file LICENSE.LGPL included in the packaging of this
** file. Please review the following information to ensure the GNU Lesser
** General Public License version 2.1 requirements will be met:
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Nokia gives you certain additional
** rights. These rights are described in the Nokia Qt LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU General
** Public License version 3.0 as published by the Free Software Foundation
** and appearing in the file LICENSE.GPL included in the packaging of this
** file. Please review the following information to ensure the GNU General
** Public License version 3.0 requirements will be met:
** http://www.gnu.org/copyleft/gpl.html.
**
** Other Usage
** Alternatively, this file may be used in accordance with the terms and
** conditions contained in a signed written agreement between you and Nokia.
**
**
**
**
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 1.0

Item {
    id: delegate
    height: column.height + 40
    width: delegate.ListView.view.width

    Column {
        id: column
        x: 20; y: 20
        width: parent.width - 40

        Text {
            id: titleText
            text: qsTr("<a href='%1'>%2</a>".arg(link).arg(title)); width: parent.width; wrapMode: Text.WordWrap
            font { bold: true; family: "Helvetica"; pointSize: 16 }
            onLinkActivated: Qt.openUrlExternally(link)
        }

        Text {
            id: pubDateText
            text: pubDate; width: parent.width; wrapMode: Text.WordWrap
            font { bold: true; family: "Helvetica"; pointSize: 12 }
        }

        Text {
            id: descriptionText
            width: parent.width; text: description
            wrapMode: Text.WordWrap; font.family: "Helvetica"
        }
    }

    Rectangle {
        width: parent.width; height: 1; color: "#cccccc"
        anchors.bottom: parent.bottom
    }
}
