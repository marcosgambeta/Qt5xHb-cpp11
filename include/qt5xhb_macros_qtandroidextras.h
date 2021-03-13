/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTANDROIDEXTRAS_H
#define QT5XHB_MACROS_QTANDROIDEXTRAS_H

#define ISQANDROIDACTIVITYRESULTRECEIVER(n)                 Qt5xHb::isObjectDerivedFrom(n,"QAndroidActivityResultReceiver")
#define ISQANDROIDBINDER(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QAndroidBinder")
#define ISQANDROIDINTENT(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QAndroidIntent")
#define ISQANDROIDJNIENVIRONMENT(n)                         Qt5xHb::isObjectDerivedFrom(n,"QAndroidJniEnvironment")
#define ISQANDROIDJNIEXCEPTIONCLEANER(n)                    Qt5xHb::isObjectDerivedFrom(n,"QAndroidJniExceptionCleaner")
#define ISQANDROIDJNIOBJECT(n)                              Qt5xHb::isObjectDerivedFrom(n,"QAndroidJniObject")
#define ISQANDROIDPARCEL(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QAndroidParcel")
#define ISQANDROIDSERVICE(n)                                Qt5xHb::isObjectDerivedFrom(n,"QAndroidService")
#define ISQANDROIDSERVICECONNECTION(n)                      Qt5xHb::isObjectDerivedFrom(n,"QAndroidServiceConnection")
#define ISQTANDROID(n)                                      Qt5xHb::isObjectDerivedFrom(n,"QtAndroid")

#define PQANDROIDACTIVITYRESULTRECEIVER(n)                  (QAndroidActivityResultReceiver *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDBINDER(n)                                  (QAndroidBinder *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDINTENT(n)                                  (QAndroidIntent *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDJNIENVIRONMENT(n)                          (QAndroidJniEnvironment *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDJNIEXCEPTIONCLEANER(n)                     (QAndroidJniExceptionCleaner *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDJNIOBJECT(n)                               (QAndroidJniObject *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDPARCEL(n)                                  (QAndroidParcel *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDSERVICE(n)                                 (QAndroidService *) Qt5xHb::itemGetPtr(n)
#define PQANDROIDSERVICECONNECTION(n)                       (QAndroidServiceConnection *) Qt5xHb::itemGetPtr(n)
#define PQTANDROID(n)                                       (QtAndroid *) Qt5xHb::itemGetPtr(n)

#define OPQANDROIDACTIVITYRESULTRECEIVER(n,v)               HB_ISNIL(n)? v : (QAndroidActivityResultReceiver *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDBINDER(n,v)                               HB_ISNIL(n)? v : (QAndroidBinder *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDINTENT(n,v)                               HB_ISNIL(n)? v : (QAndroidIntent *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDJNIENVIRONMENT(n,v)                       HB_ISNIL(n)? v : (QAndroidJniEnvironment *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDJNIEXCEPTIONCLEANER(n,v)                  HB_ISNIL(n)? v : (QAndroidJniExceptionCleaner *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDJNIOBJECT(n,v)                            HB_ISNIL(n)? v : (QAndroidJniObject *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDPARCEL(n,v)                               HB_ISNIL(n)? v : (QAndroidParcel *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDSERVICE(n,v)                              HB_ISNIL(n)? v : (QAndroidService *) Qt5xHb::itemGetPtr(n)
#define OPQANDROIDSERVICECONNECTION(n,v)                    HB_ISNIL(n)? v : (QAndroidServiceConnection *) Qt5xHb::itemGetPtr(n)
#define OPQTANDROID(n,v)                                    HB_ISNIL(n)? v : (QtAndroid *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTANDROIDEXTRAS_H */
