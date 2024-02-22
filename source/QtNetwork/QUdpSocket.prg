/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKDATAGRAM
REQUEST QNETWORKINTERFACE
#endif

CLASS QUdpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete
   METHOD joinMulticastGroup
   METHOD leaveMulticastGroup
   METHOD multicastInterface
   METHOD setMulticastInterface
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD receiveDatagram
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUdpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QUdpSocket>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QUdpSocket>
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0) )
#include <QtNetwork/QNetworkDatagram>
#endif
#include <QtNetwork/QNetworkInterface>

/*
QUdpSocket( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QUDPSOCKET_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QUdpSocket( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QUdpSocket()
*/
HB_FUNC_STATIC( QUDPSOCKET_DELETE )
{
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

HB_FUNC_STATIC( QUDPSOCKET_JOINMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    /*
    bool joinMulticastGroup( const QHostAddress & groupAddress )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->joinMulticastGroup( *PQHOSTADDRESS(1) ) );
    }

  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    /*
    bool joinMulticastGroup( const QHostAddress & groupAddress, const QNetworkInterface & iface )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->joinMulticastGroup( *PQHOSTADDRESS(1), *PQNETWORKINTERFACE(2) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QUDPSOCKET_LEAVEMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    /*
    bool leaveMulticastGroup( const QHostAddress & groupAddress )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->leaveMulticastGroup( *PQHOSTADDRESS(1) ) );
    }

  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    /*
    bool leaveMulticastGroup( const QHostAddress & groupAddress, const QNetworkInterface & iface )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->leaveMulticastGroup( *PQHOSTADDRESS(1), *PQNETWORKINTERFACE(2) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QNetworkInterface multicastInterface() const
*/
HB_FUNC_STATIC( QUDPSOCKET_MULTICASTINTERFACE )
{
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QNetworkInterface( obj->multicastInterface() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKINTERFACE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setMulticastInterface( const QNetworkInterface & iface )
*/
HB_FUNC_STATIC( QUDPSOCKET_SETMULTICASTINTERFACE )
{
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
    {
#endif
      obj->setMulticastInterface( *PQNETWORKINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool hasPendingDatagrams() const
*/
HB_FUNC_STATIC( QUDPSOCKET_HASPENDINGDATAGRAMS )
{
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingDatagrams() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 pendingDatagramSize() const
*/
HB_FUNC_STATIC( QUDPSOCKET_PENDINGDATAGRAMSIZE )
{
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pendingDatagramSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkDatagram receiveDatagram( qint64 maxSize = -1 )
*/
HB_FUNC_STATIC( QUDPSOCKET_RECEIVEDATAGRAM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      auto ptr = new QNetworkDatagram( obj->receiveDatagram( OPQINT64( 1, -1 ) ) );
      Qt5xHb::createReturnClass(ptr, "QNETWORKDATAGRAM", true);
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
qint64 readDatagram(char *data, qint64 maxlen, QHostAddress *host = nullptr, quint16 *port = nullptr)
*/

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    /*
    qint64 writeDatagram( const QNetworkDatagram & datagram )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RQINT64( obj->writeDatagram( *PQNETWORKDATAGRAM(1) ) );
    }
#endif

  }
  else if( ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISNUM(2) && ISQHOSTADDRESS(3) && HB_ISNUM(4) )
  {
    /*
    qint64 writeDatagram( const char * data, qint64 len, const QHostAddress & host, quint16 port )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RQINT64( obj->writeDatagram( PCONSTCHAR(1), PQINT64(2), *PQHOSTADDRESS(3), PQUINT16(4) ) );
    }

  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && HB_ISNUM(3) )
  {
    /*
    qint64 writeDatagram( const QByteArray & datagram, const QHostAddress & host, quint16 port )
    */
    auto obj = qobject_cast<QUdpSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RQINT64( obj->writeDatagram( *PQBYTEARRAY(1), *PQHOSTADDRESS(2), PQUINT16(3) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
