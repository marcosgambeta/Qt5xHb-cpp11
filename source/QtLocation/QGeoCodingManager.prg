/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManager INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoCodingManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManager>
#endif
#endif

#include <QtCore/QLocale>

HB_FUNC_STATIC( QGEOCODINGMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->managerName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->managerVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE )
{
  if( ISBETWEEN(1, 2) && ISQGEOADDRESS(1) && ( ISQGEOSHAPE(2) || HB_ISNIL(2) ) )
  {
    /*
    QGeoCodeReply * geocode( const QGeoAddress & address, const QGeoShape & bounds = QGeoShape() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QGeoCodeReply * ptr = obj->geocode( *PQGEOADDRESS(1), HB_ISNIL(2) ? QGeoShape() : *static_cast<QGeoShape*>(Qt5xHb::itemGetPtr(2)) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
    }
#endif

  }
  else if( ISBETWEEN(1, 4) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( ISQGEOSHAPE(4) || HB_ISNIL(4) ) )
  {
    /*
    QGeoCodeReply * geocode( const QString & searchString, int limit = -1, int offset = 0, const QGeoShape & bounds = QGeoShape() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QGeoCodeReply * ptr = obj->geocode( PQSTRING(1), OPINT( 2, -1 ), OPINT( 3, 0 ), HB_ISNIL(4) ? QGeoShape() : *static_cast<QGeoShape*>(Qt5xHb::itemGetPtr(4)) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QGeoCodeReply * reverseGeocode( const QGeoCoordinate & coordinate, const QGeoShape & bounds = QGeoShape() )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQGEOCOORDINATE(1) && ( ISQGEOSHAPE(2) || HB_ISNIL(2) ) )
    {
#endif
      QGeoCodeReply * ptr = obj->reverseGeocode( *PQGEOCOORDINATE(1), HB_ISNIL(2) ? QGeoShape() : *static_cast<QGeoShape*>(Qt5xHb::itemGetPtr(2)) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLocale( const QLocale & locale )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale( *PQLOCALE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QLocale( obj->locale() );
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void finished( QGeoCodeReply * reply )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(QGeoCodeReply*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoCodingManager::finished, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoCodeReply * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOCODINGMANAGER");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QGEOCODEREPLY");
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

/*
void error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString = QString() )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoCodeReply*,QGeoCodeReply::Error,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoCodingManager::error, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoCodeReply * arg1, QGeoCodeReply::Error arg2, QString arg3) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOCODINGMANAGER");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QGEOCODEREPLY");
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, (int) arg2 );
            PHB_ITEM pArg3 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
            hb_itemRelease(pArg3);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
