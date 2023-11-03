/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   METHOD new
   METHOD delete
   METHOD accept
   METHOD answerRect
   METHOD ignore

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDragMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDragMoveEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QDragMoveEvent>
#endif

/*
QDragMoveEvent( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type = QEvent::DragMove )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  if( ISBETWEEN(5, 6) && ISQPOINT(1) && HB_ISNUM(2) && ISQMIMEDATA(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    auto obj = new QDragMoveEvent( *PQPOINT(1), static_cast<Qt::DropActions>( hb_parni(2) ), PQMIMEDATA(3), static_cast<Qt::MouseButtons>( hb_parni(4) ), static_cast<Qt::KeyboardModifiers>( hb_parni(5) ), HB_ISNIL(6) ? static_cast<QEvent::Type >( QEvent::DragMove ) : static_cast<QEvent::Type >( hb_parni(6) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_DELETE )
{
  auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void accept( const QRect & rectangle )
    */
    auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->accept( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(0) )
  {
    /*
    void accept()
    */
    auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->accept();
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect answerRect() const
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ANSWERRECT )
{
  auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->answerRect() );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void ignore( const QRect & rectangle )
    */
    auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->ignore( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(0) )
  {
    /*
    void ignore()
    */
    auto obj = static_cast<QDragMoveEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->ignore();
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
