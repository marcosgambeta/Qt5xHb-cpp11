/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTPURCHASING_H
#define QT5XHB_MACROS_QTPURCHASING_H

#define ISQINAPPPRODUCT(n)                                  Qt5xHb::isObjectDerivedFrom(n,"QInAppProduct")
#define ISQINAPPSTORE(n)                                    Qt5xHb::isObjectDerivedFrom(n,"QInAppStore")
#define ISQINAPPTRANSACTION(n)                              Qt5xHb::isObjectDerivedFrom(n,"QInAppTransaction")

#define PQINAPPPRODUCT(n)                                   (QInAppProduct *) Qt5xHb::itemGetPtr(n)
#define PQINAPPSTORE(n)                                     (QInAppStore *) Qt5xHb::itemGetPtr(n)
#define PQINAPPTRANSACTION(n)                               (QInAppTransaction *) Qt5xHb::itemGetPtr(n)

#define OPQINAPPPRODUCT(n,v)                                HB_ISNIL(n)? v : (QInAppProduct *) Qt5xHb::itemGetPtr(n)
#define OPQINAPPSTORE(n,v)                                  HB_ISNIL(n)? v : (QInAppStore *) Qt5xHb::itemGetPtr(n)
#define OPQINAPPTRANSACTION(n,v)                            HB_ISNIL(n)? v : (QInAppTransaction *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTPURCHASING_H */
