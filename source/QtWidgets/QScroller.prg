/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QPOINTF
REQUEST QSCROLLERPROPERTIES
#endif

CLASS QScroller INHERIT QObject

   METHOD finalPosition
   METHOD handleInput
   METHOD pixelPerMeter
   METHOD scrollerProperties
   METHOD setSnapPositionsX
   METHOD setSnapPositionsY
   METHOD state
   METHOD stop
   METHOD target
   METHOD velocity
   METHOD ensureVisible
   METHOD resendPrepareEvent
   METHOD scrollTo
   METHOD setScrollerProperties
   METHOD activeScrollers
   METHOD grabGesture
   METHOD grabbedGesture
   METHOD hasScroller
   METHOD scroller
   METHOD ungrabGesture

   METHOD onScrollerPropertiesChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScroller
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

/*
QPointF finalPosition() const
*/
HB_FUNC_STATIC( QSCROLLER_FINALPOSITION )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->finalPosition() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
bool handleInput( QScroller::Input input, const QPointF & position, qint64 timestamp = 0 )
*/
HB_FUNC_STATIC( QSCROLLER_HANDLEINPUT )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQPOINTF(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->handleInput( static_cast<QScroller::Input>( hb_parni(1) ), *PQPOINTF(2), OPQINT64( 3, 0 ) ) );
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
QPointF pixelPerMeter() const
*/
HB_FUNC_STATIC( QSCROLLER_PIXELPERMETER )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->pixelPerMeter() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QScrollerProperties scrollerProperties() const
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLERPROPERTIES )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScrollerProperties( obj->scrollerProperties() );
      Qt5xHb::createReturnClass(ptr, "QSCROLLERPROPERTIES", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void setSnapPositionsX( const QList<qreal> & positions )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QList<qreal> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      qreal temp1;
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        temp1 = hb_arrayGetND(aList1, i1+1);
        par1 << temp1;
      }
      obj->setSnapPositionsX( par1 );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setSnapPositionsX( qreal first, qreal interval )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setSnapPositionsX( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void setSnapPositionsY( const QList<qreal> & positions )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QList<qreal> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      qreal temp1;
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        temp1 = hb_arrayGetND(aList1, i1+1);
        par1 << temp1;
      }
      obj->setSnapPositionsY( par1 );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setSnapPositionsY( qreal first, qreal interval )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setSnapPositionsY( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScroller::State state() const
*/
HB_FUNC_STATIC( QSCROLLER_STATE )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
void stop()
*/
HB_FUNC_STATIC( QSCROLLER_STOP )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
QObject * target() const
*/
HB_FUNC_STATIC( QSCROLLER_TARGET )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->target();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
QPointF velocity() const
*/
HB_FUNC_STATIC( QSCROLLER_VELOCITY )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->velocity() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void ensureVisible( const QRectF & rect, qreal xmargin, qreal ymargin )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->ensureVisible( *PQRECTF(1), PQREAL(2), PQREAL(3) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(4) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    /*
    void ensureVisible( const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->ensureVisible( *PQRECTF(1), PQREAL(2), PQREAL(3), PINT(4) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void resendPrepareEvent()
*/
HB_FUNC_STATIC( QSCROLLER_RESENDPREPAREEVENT )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resendPrepareEvent();
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

HB_FUNC_STATIC( QSCROLLER_SCROLLTO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void scrollTo( const QPointF & pos )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->scrollTo( *PQPOINTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2) )
  {
    /*
    void scrollTo( const QPointF & pos, int scrollTime )
    */
    auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->scrollTo( *PQPOINTF(1), PINT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setScrollerProperties( const QScrollerProperties & prop )
*/
HB_FUNC_STATIC( QSCROLLER_SETSCROLLERPROPERTIES )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1) )
    {
#endif
      obj->setScrollerProperties( *PQSCROLLERPROPERTIES(1) );
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
static QList<QScroller *> activeScrollers()
*/
HB_FUNC_STATIC( QSCROLLER_ACTIVESCROLLERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    const QList<QScroller *> list = QScroller::activeScrollers();
    auto pDynSym = hb_dynsymFindName("QSCROLLER");
    auto pArray = hb_itemArrayNew(0);
    if( pDynSym != nullptr )
    {
      for( auto item : list )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, item);
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSCROLLER", HB_ERR_ARGS_BASEPARAMS);
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

/*
static Qt::GestureType grabGesture( QObject * target, QScroller::ScrollerGestureType scrollGestureType = QScroller::TouchGesture )
*/
HB_FUNC_STATIC( QSCROLLER_GRABGESTURE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && ISQOBJECT(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
#endif
    RENUM( QScroller::grabGesture( PQOBJECT(1), HB_ISNIL(2) ? static_cast<QScroller::ScrollerGestureType >( QScroller::TouchGesture ) : static_cast<QScroller::ScrollerGestureType >( hb_parni(2) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static Qt::GestureType grabbedGesture( QObject * target )
*/
HB_FUNC_STATIC( QSCROLLER_GRABBEDGESTURE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    RENUM( QScroller::grabbedGesture( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool hasScroller( QObject * target )
*/
HB_FUNC_STATIC( QSCROLLER_HASSCROLLER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    RBOOL( QScroller::hasScroller( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QScroller * scroller( QObject * target )
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    QScroller * ptr = QScroller::scroller( PQOBJECT(1) );
    Qt5xHb::createReturnQObjectClass(ptr, "QSCROLLER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
void ungrabGesture( QObject * target )
*/
HB_FUNC_STATIC( QSCROLLER_UNGRABGESTURE )
{
  auto obj = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->ungrabGesture( PQOBJECT(1) );
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
void scrollerPropertiesChanged( const QScrollerProperties & newProperties )
*/
HB_FUNC_STATIC( QSCROLLER_ONSCROLLERPROPERTIESCHANGED )
{
  auto sender = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("scrollerPropertiesChanged(QScrollerProperties)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QScroller::scrollerPropertiesChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QScrollerProperties & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCROLLER");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QSCROLLERPROPERTIES");
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

/*
void stateChanged( QScroller::State newState )
*/
HB_FUNC_STATIC( QSCROLLER_ONSTATECHANGED )
{
  auto sender = qobject_cast<QScroller*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QScroller::State)");
    auto indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QScroller::stateChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (QScroller::State arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCROLLER");
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
}

#pragma ENDDUMP
