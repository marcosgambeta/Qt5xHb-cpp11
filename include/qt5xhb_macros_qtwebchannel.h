/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBCHANNEL_H
#define QT5XHB_MACROS_QTWEBCHANNEL_H

#define ISQQMLWEBCHANNEL(n)                                 _qt5xhb_isObjectDerivedFrom(n,"QQmlWebChannel")
#define ISQWEBCHANNEL(n)                                    _qt5xhb_isObjectDerivedFrom(n,"QWebChannel")
#define ISQWEBCHANNELABSTRACTTRANSPORT(n)                   _qt5xhb_isObjectDerivedFrom(n,"QWebChannelAbstractTransport")

#define PQQMLWEBCHANNEL(n)                                  (QQmlWebChannel *) _qt5xhb_itemGetPtr(n)
#define PQWEBCHANNEL(n)                                     (QWebChannel *) _qt5xhb_itemGetPtr(n)
#define PQWEBCHANNELABSTRACTTRANSPORT(n)                    (QWebChannelAbstractTransport *) _qt5xhb_itemGetPtr(n)

#define OPQQMLWEBCHANNEL(n,v)                               ISNIL(n)? v : (QQmlWebChannel *) _qt5xhb_itemGetPtr(n)
#define OPQWEBCHANNEL(n,v)                                  ISNIL(n)? v : (QWebChannel *) _qt5xhb_itemGetPtr(n)
#define OPQWEBCHANNELABSTRACTTRANSPORT(n,v)                 ISNIL(n)? v : (QWebChannelAbstractTransport *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBCHANNEL_H */
