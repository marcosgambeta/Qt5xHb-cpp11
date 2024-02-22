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

CLASS QModbusRtuSerialMaster INHERIT QModbusClient

   METHOD new
   METHOD delete
   METHOD interFrameDelay

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusRtuSerialMaster
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialMaster>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialMaster>
#endif
#endif

/*
QModbusRtuSerialMaster( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALMASTER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QModbusRtuSerialMaster( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QModbusRtuSerialMaster()
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALMASTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusRtuSerialMaster*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
int interFrameDelay() const
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALMASTER_INTERFRAMEDELAY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusRtuSerialMaster*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->interFrameDelay() );
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
void setInterFrameDelay(int microseconds)
*/

#pragma ENDDUMP
