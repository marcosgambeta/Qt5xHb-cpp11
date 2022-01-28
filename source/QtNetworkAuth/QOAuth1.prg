/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QOAuth1 INHERIT QAbstractOAuth

   METHOD new
   METHOD delete
   METHOD clientSharedSecret
   METHOD setClientSharedSecret
   METHOD setClientCredentials
   METHOD tokenSecret
   METHOD setTokenSecret
   METHOD setTokenCredentials
   METHOD temporaryCredentialsUrl
   METHOD setTemporaryCredentialsUrl
   METHOD tokenCredentialsUrl
   METHOD setTokenCredentialsUrl
   METHOD setSignatureMethod
   METHOD grant
   METHOD continueGrantWithVerifier

   METHOD onClientSharedSecretChanged
   METHOD onSignatureMethodChanged
   METHOD onTemporaryCredentialsUrlChanged
   METHOD onTokenCredentialsUrlChanged
   METHOD onTokenSecretChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuth1
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth1>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth1>
#endif
#endif

HB_FUNC_STATIC( QOAUTH1_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    /*
    QOAuth1( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth1( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
#endif

  }
  else if( ISBETWEEN( 1, 2 ) && ISQNETWORKACCESSMANAGER( 1 ) && ( ISQOBJECT( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    QOAuth1( QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth1( PQNETWORKACCESSMANAGER( 1 ), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
#endif

  }
  else if( ISBETWEEN( 3, 4 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) && ISQNETWORKACCESSMANAGER( 3 ) && ( ISQOBJECT( 4 ) || HB_ISNIL( 4 ) ) )
  {
    /*
    QOAuth1( const QString & clientIdentifier, const QString & clientSharedSecret, QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth1( PQSTRING( 1 ), PQSTRING( 2 ), PQNETWORKACCESSMANAGER( 3 ), OPQOBJECT( 4, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
#endif

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOAUTH1_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

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
#endif
}

/*
QString clientSharedSecret() const
*/
HB_FUNC_STATIC( QOAUTH1_CLIENTSHAREDSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->clientSharedSecret() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setClientSharedSecret( const QString & clientSharedSecret )
*/
HB_FUNC_STATIC( QOAUTH1_SETCLIENTSHAREDSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setClientSharedSecret( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setClientCredentials( const QString & clientIdentifier, const QString & clientSharedSecret )
*/
HB_FUNC_STATIC( QOAUTH1_SETCLIENTCREDENTIALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->setClientCredentials( PQSTRING( 1 ), PQSTRING( 2 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString tokenSecret() const
*/
HB_FUNC_STATIC( QOAUTH1_TOKENSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->tokenSecret() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTokenSecret( const QString & tokenSecret )
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setTokenSecret( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setTokenCredentials( const QString & token, const QString & tokenSecret )
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENCREDENTIALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->setTokenCredentials( PQSTRING( 1 ), PQSTRING( 2 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QUrl temporaryCredentialsUrl() const
*/
HB_FUNC_STATIC( QOAUTH1_TEMPORARYCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QUrl( obj->temporaryCredentialsUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTemporaryCredentialsUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_SETTEMPORARYCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQURL( 1 ) )
    {
#endif
      obj->setTemporaryCredentialsUrl( *PQURL( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QUrl tokenCredentialsUrl() const
*/
HB_FUNC_STATIC( QOAUTH1_TOKENCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QUrl( obj->tokenCredentialsUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTokenCredentialsUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQURL( 1 ) )
    {
#endif
      obj->setTokenCredentialsUrl( *PQURL( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setSignatureMethod( QOAuth1::SignatureMethod value )
*/
HB_FUNC_STATIC( QOAUTH1_SETSIGNATUREMETHOD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setSignatureMethod( static_cast<QOAuth1::SignatureMethod>( hb_parni( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void grant() override
*/
HB_FUNC_STATIC( QOAUTH1_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->grant();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void continueGrantWithVerifier( const QString & verifier )
*/
HB_FUNC_STATIC( QOAUTH1_CONTINUEGRANTWITHVERIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast< QOAuth1 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->continueGrantWithVerifier( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clientSharedSecretChanged( const QString & credential )
*/
HB_FUNC_STATIC( QOAUTH1_ONCLIENTSHAREDSECRETCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("clientSharedSecretChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::clientSharedSecretChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void signatureMethodChanged( QOAuth1::SignatureMethod method )
*/
HB_FUNC_STATIC( QOAUTH1_ONSIGNATUREMETHODCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("signatureMethodChanged(QOAuth1::SignatureMethod)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::signatureMethodChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QOAuth1::SignatureMethod arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void temporaryCredentialsUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_ONTEMPORARYCREDENTIALSURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("temporaryCredentialsUrlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::temporaryCredentialsUrlChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void tokenCredentialsUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_ONTOKENCREDENTIALSURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("tokenCredentialsUrlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::tokenCredentialsUrlChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void tokenSecretChanged( const QString & token )
*/
HB_FUNC_STATIC( QOAUTH1_ONTOKENSECRETCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("tokenSecretChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::tokenSecretChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
