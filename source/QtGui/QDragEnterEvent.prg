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

CLASS QDragEnterEvent INHERIT QDragMoveEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDragEnterEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDragEnterEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QDragEnterEvent>
#endif

/*
QDragEnterEvent( const QPoint & point, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QDRAGENTEREVENT_NEW )
{
  if( ISNUMPAR(5) && ISQPOINT(1) && HB_ISNUM(2) && ISQMIMEDATA(3) && HB_ISNUM(4) && HB_ISNUM(5) )
  {
    auto obj = new QDragEnterEvent( *PQPOINT(1), static_cast<Qt::DropActions>( hb_parni(2) ), PQMIMEDATA(3), static_cast<Qt::MouseButtons>( hb_parni(4) ), static_cast<Qt::KeyboardModifiers>( hb_parni(5) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDRAGENTEREVENT_DELETE )
{
  auto obj = static_cast<QDragEnterEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
