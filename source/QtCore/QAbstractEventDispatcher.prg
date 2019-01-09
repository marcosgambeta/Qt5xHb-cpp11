/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterNativeEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD installNativeEventFilter
   METHOD interrupt
   METHOD processEvents
   METHOD registerEventNotifier
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD remainingTime
   METHOD removeNativeEventFilter
   METHOD unregisterEventNotifier
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance
   METHOD startingUp
   METHOD closingDown

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool filterNativeEvent(const QByteArray & eventType, void * message, long * result)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTERNATIVEEVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISPOINTER(2) && ISNUM(3) )
    {
#endif
      long par3;
      RBOOL( obj->filterNativeEvent ( *PQBYTEARRAY(1), (void *) hb_parptr(2), &par3 ) );
      hb_stornl( par3, 3 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->flush ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool hasPendingEvents () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingEvents () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void installNativeEventFilter(QAbstractNativeEventFilter * filterObj)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTALLNATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
#endif
      obj->installNativeEventFilter ( PQABSTRACTNATIVEEVENTFILTER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->interrupt ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_PROCESSEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1) )
    {
#endif
      RBOOL( obj->registerEventNotifier ( PQWINEVENTNOTIFIER(1) ) );
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
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
#endif
      obj->registerSocketNotifier ( PQSOCKETNOTIFIER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
*/
void QAbstractEventDispatcher_registerTimer1 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->registerTimer ( PINT(1), (Qt::TimerType) hb_parni(2), PQOBJECT(3) ) );
  }
}

/*
virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/
void QAbstractEventDispatcher_registerTimer2 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->registerTimer ( PINT(1), PINT(2), (Qt::TimerType) hb_parni(3), PQOBJECT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
//[2]virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISQOBJECT(4) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual int remainingTime(int timerId) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMAININGTIME )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->remainingTime ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMOVENATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
#endif
      obj->removeNativeEventFilter ( PQABSTRACTNATIVEEVENTFILTER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1) )
    {
#endif
      obj->unregisterEventNotifier ( PQWINEVENTNOTIFIER(1) );
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
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
#endif
      obj->unregisterSocketNotifier ( PQSOCKETNOTIFIER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->unregisterTimer ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      RBOOL( obj->unregisterTimers ( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->wakeUp ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTANCE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQTHREAD(1)||ISNIL(1)) )
  {
#endif
      QAbstractEventDispatcher * ptr = QAbstractEventDispatcher::instance ( OPQTHREAD(1,0) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual void startingUp()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_STARTINGUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->startingUp ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void closingDown()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_CLOSINGDOWN )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->closingDown ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void aboutToBlock()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_ONABOUTTOBLOCK )
{
  if( hb_pcount() == 1 )
  {
    QAbstractEventDispatcher * sender = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "aboutToBlock()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractEventDispatcher::aboutToBlock, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "aboutToBlock()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTEVENTDISPATCHER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "aboutToBlock()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractEventDispatcher * sender = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "aboutToBlock()" );

      QObject::disconnect( Signals2_get_connection( sender, "aboutToBlock()" ) );

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
}

/*
void awake()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_ONAWAKE )
{
  if( hb_pcount() == 1 )
  {
    QAbstractEventDispatcher * sender = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "awake()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractEventDispatcher::awake, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "awake()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTEVENTDISPATCHER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "awake()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractEventDispatcher * sender = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "awake()" );

      QObject::disconnect( Signals2_get_connection( sender, "awake()" ) );

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
}

#pragma ENDDUMP
