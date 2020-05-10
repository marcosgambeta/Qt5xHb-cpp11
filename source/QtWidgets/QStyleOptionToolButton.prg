/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QICON
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QStyleOptionToolButton INHERIT QStyleOptionComplex

   METHOD new
   METHOD features
   METHOD setFeatures
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize
   METHOD text
   METHOD setText
   METHOD arrowType
   METHOD setArrowType
   METHOD toolButtonStyle
   METHOD setToolButtonStyle
   METHOD pos
   METHOD setPos
   METHOD font
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionToolButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals5.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolButton>
#endif

/*
QStyleOptionToolButton()
*/
void QStyleOptionToolButton_new1()
{
  auto obj = new QStyleOptionToolButton();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionToolButton(const QStyleOptionToolButton &other)
*/
void QStyleOptionToolButton_new2()
{
  auto obj = new QStyleOptionToolButton( *PQSTYLEOPTIONTOOLBUTTON(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionToolButton(int version) [protected]
*/

/*
[1]QStyleOptionToolButton()
[2]QStyleOptionToolButton(const QStyleOptionToolButton &other)
[3]QStyleOptionToolButton(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolButton_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBUTTON(1) )
  {
    QStyleOptionToolButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ToolButtonFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_FEATURES )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETFEATURES )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features= (QStyleOptionToolButton::ToolButtonFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ICON )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETICON )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ICONSIZE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->iconSize );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETICONSIZE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_TEXT )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETTEXT )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ArrowType arrowType
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ARROWTYPE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->arrowType );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETARROWTYPE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->arrowType= (Qt::ArrowType) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolButtonStyle toolButtonStyle
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_TOOLBUTTONSTYLE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->toolButtonStyle );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETTOOLBUTTONSTYLE )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->toolButtonStyle= (Qt::ToolButtonStyle) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint pos
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_POS )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QPoint( obj->pos );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETPOS )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->pos= *PQPOINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_FONT )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QFont( obj->font );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETFONT )
{
  auto obj = (QStyleOptionToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
