/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QMouseEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD button
   METHOD buttons
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD screenPos
   METHOD windowPos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QMouseEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QMouseEvent>
#endif

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && HB_ISNUM(1) && ISQPOINTF(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
  {
    /*
    QMouseEvent( QEvent::Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
    */
    auto obj = new QMouseEvent( static_cast<QEvent::Type>( hb_parni(1) ), *PQPOINTF(2), static_cast<Qt::MouseButton>( hb_parni(3) ), static_cast<Qt::MouseButtons>( hb_parni(4) ), static_cast<Qt::KeyboardModifiers>( hb_parni(5) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(6) && HB_ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
  {
    /*
    QMouseEvent( QEvent::Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
    */
    auto obj = new QMouseEvent( static_cast<QEvent::Type>( hb_parni(1) ), *PQPOINTF(2), *PQPOINTF(3), static_cast<Qt::MouseButton>( hb_parni(4) ), static_cast<Qt::MouseButtons>( hb_parni(5) ), static_cast<Qt::KeyboardModifiers>( hb_parni(6) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(7) && HB_ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) )
  {
    /*
    QMouseEvent( QEvent::Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
    */
    auto obj = new QMouseEvent( static_cast<QEvent::Type>( hb_parni(1) ), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), static_cast<Qt::MouseButton>( hb_parni(5) ), static_cast<Qt::MouseButtons>( hb_parni(6) ), static_cast<Qt::KeyboardModifiers>( hb_parni(7) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMOUSEEVENT_DELETE )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::MouseButton button() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTON )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->button() );
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
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_BUTTONS )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->buttons() );
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
int globalX() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALX )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalX() );
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
int globalY() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_GLOBALY )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalY() );
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
const QPointF & localPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_LOCALPOS )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->localPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
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
const QPointF & screenPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_SCREENPOS )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->screenPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
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
const QPointF & windowPos() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_WINDOWPOS )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->windowPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
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
int x() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_X )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
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
int y() const
*/
HB_FUNC_STATIC( QMOUSEEVENT_Y )
{
  auto obj = static_cast<QMouseEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
