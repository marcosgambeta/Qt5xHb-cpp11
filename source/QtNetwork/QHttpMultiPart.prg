/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHttpMultiPart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QHttpMultiPart>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QHttpMultiPart>
#endif

/*
QHttpMultiPart( QObject * parent = nullptr )
*/
void QHttpMultiPart_new1()
{
  auto obj = new QHttpMultiPart( OPQOBJECT( 1, nullptr ) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QHttpMultiPart( QHttpMultiPart::ContentType contentType, QObject * parent = nullptr )
*/
void QHttpMultiPart_new2()
{
  auto obj = new QHttpMultiPart( static_cast<QHttpMultiPart::ContentType>( hb_parni( 1 ) ), OPQOBJECT( 2, nullptr ) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QHttpMultiPart_new1();
  }
  else if( ISBETWEEN( 1, 2 ) && HB_ISNUM( 1 ) && ( ISQOBJECT( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QHttpMultiPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QHttpMultiPart()
*/
HB_FUNC_STATIC( QHTTPMULTIPART_DELETE )
{
  auto obj = qobject_cast< QHttpMultiPart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append( const QHttpPart & httpPart )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_APPEND )
{
  auto obj = qobject_cast< QHttpMultiPart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQHTTPPART( 1 ) )
    {
#endif
      obj->append( *PQHTTPPART( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray boundary() const
*/
HB_FUNC_STATIC( QHTTPMULTIPART_BOUNDARY )
{
  auto obj = qobject_cast< QHttpMultiPart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QByteArray( obj->boundary() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setBoundary( const QByteArray & boundary )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETBOUNDARY )
{
  auto obj = qobject_cast< QHttpMultiPart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQBYTEARRAY( 1 ) )
    {
#endif
      obj->setBoundary( *PQBYTEARRAY( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentType( QHttpMultiPart::ContentType contentType )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETCONTENTTYPE )
{
  auto obj = qobject_cast< QHttpMultiPart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setContentType( static_cast<QHttpMultiPart::ContentType>( hb_parni( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
