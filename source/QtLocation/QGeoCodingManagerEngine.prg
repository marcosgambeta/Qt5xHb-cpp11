/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

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

PROCEDURE destroyObject () CLASS QGeoCodingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManagerEngine>
#endif
#endif

#include <QtCore/QLocale>

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->managerName () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->managerVersion () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
*/
void QGeoCodingManagerEngine_geocode1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QGeoCodeReply * ptr = obj->geocode ( *PQGEOADDRESS(1), *PQGEOSHAPE(2) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
*/
void QGeoCodingManagerEngine_geocode2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QGeoCodeReply * ptr = obj->geocode ( PQSTRING(1), PINT(2), PINT(3), *PQGEOSHAPE(4) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

//[1]virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
//[2]virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if( ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2) )
  {
    QGeoCodingManagerEngine_geocode1();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISQGEOSHAPE(4) )
  {
    QGeoCodingManagerEngine_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOSHAPE(2) )
    {
#endif
      QGeoCodeReply * ptr = obj->reverseGeocode ( *PQGEOCOORDINATE(1), *PQGEOSHAPE(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOCODEREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale ( *PQLOCALE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QLocale( obj->locale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void finished( QGeoCodeReply * reply )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(QGeoCodeReply*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoCodingManagerEngine::finished, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoCodeReply * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QGEOCODINGMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QGEOCODEREPLY" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString = QString() )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoCodeReply*,QGeoCodeReply::Error,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoCodingManagerEngine::error, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoCodeReply * arg1, QGeoCodeReply::Error arg2, QString arg3) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QGEOCODINGMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QGEOCODEREPLY" );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, (int) arg2 );
            PHB_ITEM pArg3 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
