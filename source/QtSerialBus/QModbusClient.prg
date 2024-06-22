/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusClient INHERIT QModbusDevice

   METHOD delete
   METHOD timeout
   METHOD numberOfRetries

   METHOD onTimeoutChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusClient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusClient>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusClient>
#endif
#endif

/*
~QModbusClient()
*/
HB_FUNC_STATIC( QMODBUSCLIENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusClient*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
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
int timeout() const
*/
HB_FUNC_STATIC( QMODBUSCLIENT_TIMEOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusClient*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->timeout());
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
void setTimeout(int newTimeout)
*/

/*
QModbusReply *sendReadRequest(const QModbusDataUnit &read, int serverAddress)
*/
/*
QModbusReply *sendWriteRequest(const QModbusDataUnit &write, int serverAddress)
*/
/*
QModbusReply *sendReadWriteRequest(const QModbusDataUnit &read, const QModbusDataUnit &write, int serverAddress)
*/
/*
QModbusReply *sendRawRequest(const QModbusRequest &request, int serverAddress)
*/
/*
int numberOfRetries() const
*/
HB_FUNC_STATIC( QMODBUSCLIENT_NUMBEROFRETRIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusClient*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->numberOfRetries());
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
void setNumberOfRetries(int number)
*/

/*
void timeoutChanged( int newTimeout )
*/
HB_FUNC_STATIC( QMODBUSCLIENT_ONTIMEOUTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = qobject_cast<QModbusClient*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("timeoutChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QModbusClient::timeoutChanged,
                                           [sender, indexOfCodeBlock]
                                           (int arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QMODBUSCLIENT");
            auto pArg1 = hb_itemPutNI(nullptr, arg1);
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
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
