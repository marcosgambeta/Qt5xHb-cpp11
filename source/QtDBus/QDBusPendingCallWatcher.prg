/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusPendingCallWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusPendingCallWatcher>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusPendingCallWatcher>
#endif

/*
QDBusPendingCallWatcher( const QDBusPendingCall & call, QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
  if( ISBETWEEN(1, 2) && ISQDBUSPENDINGCALL(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    auto obj = new QDBusPendingCallWatcher( *PQDBUSPENDINGCALL(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_DELETE )
{
  auto obj = qobject_cast<QDBusPendingCallWatcher*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ISFINISHED )
{
  auto obj = qobject_cast<QDBusPendingCallWatcher*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished() );
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
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_WAITFORFINISHED )
{
  auto obj = qobject_cast<QDBusPendingCallWatcher*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->waitForFinished();
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
void finished( QDBusPendingCallWatcher * self )
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ONFINISHED )
{
  auto sender = qobject_cast<QDBusPendingCallWatcher*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(QDBusPendingCallWatcher*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QDBusPendingCallWatcher::finished,
                                                              [sender, indexOfCodeBlock]
                                                              (QDBusPendingCallWatcher * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QDBUSPENDINGCALLWATCHER");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QDBUSPENDINGCALLWATCHER");
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
}

#pragma ENDDUMP
