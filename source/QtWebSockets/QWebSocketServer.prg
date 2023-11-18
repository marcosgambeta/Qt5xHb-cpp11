/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
REQUEST QWEBSOCKET
#endif

CLASS QWebSocketServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD listen
   METHOD close
   METHOD isListening
   METHOD maxPendingConnections
   METHOD setMaxPendingConnections
   METHOD serverPort
   METHOD serverAddress
   METHOD secureMode
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD error
   METHOD errorString
   METHOD pauseAccepting
   METHOD resumeAccepting
   METHOD serverName
   METHOD setServerName
   METHOD proxy
   METHOD setProxy
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD supportedVersions

   METHOD onAcceptError
   METHOD onServerError
   METHOD onOriginAuthenticationRequired
   METHOD onNewConnection
   METHOD onPeerVerifyError
   METHOD onSslErrors
   METHOD onClosed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebSocketServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtWebSockets/QWebSocketServer>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtWebSockets/QWebSocketServer>
#endif
#endif

#include <QtNetwork/QNetworkProxy>
#include <QtWebSockets/QWebSocket>
#include <QtWebSockets/QWebSocketCorsAuthenticator>

/*
QWebSocketServer( const QString & serverName, QWebSocketServer::SslMode secureMode, QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && ( ISQOBJECT(3) || HB_ISNIL(3) ) )
  {
    auto obj = new QWebSocketServer( PQSTRING(1), static_cast<QWebSocketServer::SslMode>( hb_parni(2) ), OPQOBJECT( 3, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QWEBSOCKETSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool listen( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_LISTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( ISQHOSTADDRESS(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      RBOOL( obj->listen( HB_ISNIL(1) ? QHostAddress::Any : *static_cast<QHostAddress*>(Qt5xHb::itemGetPtr(1)), OPQUINT16( 2, 0 ) ) );
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
void close()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
bool isListening() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isListening() );
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
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_MAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxPendingConnections() );
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
void setMaxPendingConnections( int numConnections )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETMAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaxPendingConnections( PINT(1) );
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
quint16 serverPort() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->serverPort() );
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
QHostAddress serverAddress() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QHostAddress( obj->serverAddress() );
      Qt5xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
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
QWebSocketServer::SslMode secureMode() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SECUREMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->secureMode() );
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
int socketDescriptor() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->socketDescriptor() );
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
bool setSocketDescriptor( int socketDescriptor )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setSocketDescriptor( PINT(1) ) );
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
bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_HASPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingConnections() );
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
virtual QWebSocket * nextPendingConnection()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEXTPENDINGCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebSocket * ptr = obj->nextPendingConnection();
      Qt5xHb::createReturnQObjectClass(ptr, "QWEBSOCKET");
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
QWebSocketProtocol::CloseCode error() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
void pauseAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PAUSEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pauseAccepting();
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
void resumeAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_RESUMEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resumeAccepting();
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
QString serverName() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->serverName() );
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
void setServerName( const QString & serverName )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setServerName( PQSTRING(1) );
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
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QNetworkProxy( obj->proxy() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKPROXY", true);
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
void setProxy( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
#endif
      obj->setProxy( *PQNETWORKPROXY(1) );
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
void setSslConfiguration( const QSslConfiguration & sslConfiguration )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
#endif
      obj->setSslConfiguration( *PQSSLCONFIGURATION(1) );
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
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSslConfiguration( obj->sslConfiguration() );
      Qt5xHb::createReturnClass(ptr, "QSSLCONFIGURATION", true);
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
QList<QWebSocketProtocol::Version> supportedVersions() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SUPPORTEDVERSIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QWebSocketProtocol::Version> list = obj->supportedVersions();
      auto pArray = hb_itemArrayNew(0);
      for( const auto & item : list )
      {
        auto pItem = hb_itemPutNI(nullptr, static_cast<int>(item));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
void acceptError( QAbstractSocket::SocketError socketError )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONACCEPTERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("acceptError(QAbstractSocket::SocketError)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::acceptError,
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractSocket::SocketError arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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

/*
void serverError( QWebSocketProtocol::CloseCode closeCode )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONSERVERERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("serverError(QWebSocketProtocol::CloseCode)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::serverError,
                                                              [sender, indexOfCodeBlock]
                                                              (QWebSocketProtocol::CloseCode arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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

/*
void originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONORIGINAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("originAuthenticationRequired(QWebSocketCorsAuthenticator*)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::originAuthenticationRequired,
                                                              [sender, indexOfCodeBlock]
                                                              (QWebSocketCorsAuthenticator * arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) arg1, "QWEBSOCKETCORSAUTHENTICATOR");
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

/*
void newConnection()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONNEWCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("newConnection()");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::newConnection,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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

/*
void peerVerifyError( const QSslError & error )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONPEERVERIFYERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("peerVerifyError(QSslError)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::peerVerifyError,
                                                              [sender, indexOfCodeBlock]
                                                              (const QSslError & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QSSLERROR");
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

/*
void sslErrors( const QList<QSslError> & errors )
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONSSLERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("sslErrors(QList<QSslError>)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::sslErrors,
                                                              [sender, indexOfCodeBlock]
                                                              (const QList<QSslError> & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            auto pDynSym = hb_dynsymFindName("QSSLERROR");
            auto pArg1 = hb_itemArrayNew(0);
            if( pDynSym != nullptr )
            {
              for( const auto & item : arg1 )
              {
                hb_vmPushDynSym(pDynSym);
                hb_vmPushNil();
                hb_vmDo(0);
                auto pTempObject = hb_itemNew(nullptr);
                hb_itemCopy(pTempObject, hb_stackReturnItem());
                auto pTempItem = hb_itemPutPtr(nullptr, new QSslError(item));
                hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
                hb_arrayAddForward(pArg1, pTempObject);
                hb_itemRelease(pTempObject);
                hb_itemRelease(pTempItem);
              }
            }
            else
            {
              hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
            }
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

/*
void closed()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ONCLOSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto sender = qobject_cast<QWebSocketServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("closed()");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QWebSocketServer::closed,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBSOCKETSERVER");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
