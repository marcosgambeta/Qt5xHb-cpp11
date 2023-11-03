/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QOAuth2AuthorizationCodeFlow INHERIT QAbstractOAuth2

   METHOD new
   METHOD delete
   METHOD accessTokenUrl
   METHOD setAccessTokenUrl
   METHOD grant
   METHOD refreshAccessToken

   METHOD onAccessTokenUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuth2AuthorizationCodeFlow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth2AuthorizationCodeFlow>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth2AuthorizationCodeFlow>
#endif
#endif

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QOAuth2AuthorizationCodeFlow( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth2AuthorizationCodeFlow( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(1, 2) && ISQNETWORKACCESSMANAGER(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QOAuth2AuthorizationCodeFlow( QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth2AuthorizationCodeFlow( PQNETWORKACCESSMANAGER(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && ISQNETWORKACCESSMANAGER(2) && ( ISQOBJECT(3) || HB_ISNIL(3) ) )
  {
    /*
    QOAuth2AuthorizationCodeFlow( const QString & clientIdentifier, QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth2AuthorizationCodeFlow( PQSTRING(1), PQNETWORKACCESSMANAGER(2), OPQOBJECT( 3, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(3, 4) && ISQURL(1) && ISQURL(2) && ISQNETWORKACCESSMANAGER(3) && ( ISQOBJECT(4) || HB_ISNIL(4) ) )
  {
    /*
    QOAuth2AuthorizationCodeFlow( const QUrl & authorizationUrl, const QUrl & accessTokenUrl, QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth2AuthorizationCodeFlow( *PQURL(1), *PQURL(2), PQNETWORKACCESSMANAGER(3), OPQOBJECT( 4, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(4, 5) && HB_ISCHAR(1) && ISQURL(2) && ISQURL(3) && ISQNETWORKACCESSMANAGER(4) && ( ISQOBJECT(5) || HB_ISNIL(5) ) )
  {
    /*
    QOAuth2AuthorizationCodeFlow( const QString & clientIdentifier, const QUrl & authorizationUrl, const QUrl & accessTokenUrl, QNetworkAccessManager * manager, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuth2AuthorizationCodeFlow( PQSTRING(1), *PQURL(2), *PQURL(3), PQNETWORKACCESSMANAGER(4), OPQOBJECT( 5, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QOAuth2AuthorizationCodeFlow()
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QUrl accessTokenUrl() const
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_ACCESSTOKENURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->accessTokenUrl() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
void setAccessTokenUrl( const QUrl & accessTokenUrl )
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_SETACCESSTOKENURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setAccessTokenUrl( *PQURL(1) );
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
void grant() override
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->grant();
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
void refreshAccessToken()
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_REFRESHACCESSTOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->refreshAccessToken();
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
void accessTokenUrlChanged( const QUrl & accessTokenUrl )
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_ONACCESSTOKENURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = qobject_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("accessTokenUrlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QOAuth2AuthorizationCodeFlow::accessTokenUrlChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QOAUTH2AUTHORIZATIONCODEFLOW");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QURL");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
