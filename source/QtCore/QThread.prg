/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QThread INHERIT QObject

   METHOD new
   METHOD delete
   METHOD eventDispatcher
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setEventDispatcher
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD msleep
   METHOD sleep
   METHOD usleep
   METHOD yieldCurrentThread

   METHOD onFinished
   METHOD onStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QThread
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QThread>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QThread>
#endif

#include <QAbstractEventDispatcher>

/*
QThread(QObject * parent = nullptr)
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QThread * o = new QThread ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTHREAD_DELETE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
QAbstractEventDispatcher * eventDispatcher() const
*/
HB_FUNC_STATIC( QTHREAD_EVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractEventDispatcher * ptr = obj->eventDispatcher ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
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
void exit(int returnCode = 0)
*/
HB_FUNC_STATIC( QTHREAD_EXIT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->exit ( OPINT(1,0) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QTHREAD_ISFINISHED )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished () );
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
bool isRunning() const
*/
HB_FUNC_STATIC( QTHREAD_ISRUNNING )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning () );
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
Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->priority () );
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
void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
*/
HB_FUNC_STATIC( QTHREAD_SETEVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTEVENTDISPATCHER(1) )
    {
#endif
      obj->setEventDispatcher ( PQABSTRACTEVENTDISPATCHER(1) );
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
void setPriority(Priority priority)
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPriority ( (QThread::Priority) hb_parni(1) );
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
void setStackSize(uint stackSize)
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStackSize ( PUINT(1) );
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
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->stackSize () );
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
virtual bool event(QEvent * event)
*/
HB_FUNC_STATIC( QTHREAD_EVENT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event ( PQEVENT(1) ) );
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
void quit()
*/
HB_FUNC_STATIC( QTHREAD_QUIT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->quit ();
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
void start(Priority priority = InheritPriority)
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->start ( ISNIL(1)? (QThread::Priority) QThread::InheritPriority : (QThread::Priority) hb_parni(1) );
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
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->terminate ();
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
static QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QThread * ptr = QThread::currentThread ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QTHREAD" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RINT( QThread::idealThreadCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void msleep(unsigned long msecs)
*/
HB_FUNC_STATIC( QTHREAD_MSLEEP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QThread::msleep ( PUNSIGNEDLONG(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void sleep(unsigned long secs)
*/
HB_FUNC_STATIC( QTHREAD_SLEEP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QThread::sleep ( PUNSIGNEDLONG(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void usleep(unsigned long usecs)
*/
HB_FUNC_STATIC( QTHREAD_USLEEP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QThread::usleep ( PUNSIGNEDLONG(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QThread::yieldCurrentThread ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void finished()
*/
HB_FUNC_STATIC( QTHREAD_ONFINISHED )
{
  QThread * sender = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "finished()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QThread::finished, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "finished()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QTHREAD" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "finished()", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "finished()" );

      QObject::disconnect( Signals2_get_connection( sender, "finished()" ) );

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
void started()
*/
HB_FUNC_STATIC( QTHREAD_ONSTARTED )
{
  QThread * sender = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "started()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QThread::started, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "started()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QTHREAD" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "started()", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "started()" );

      QObject::disconnect( Signals2_get_connection( sender, "started()" ) );

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
