/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QStyleOptionComboBox INHERIT QStyleOptionComplex

   METHOD new
   METHOD editable
   METHOD setEditable
   METHOD popupRect
   METHOD setPopupRect
   METHOD frame
   METHOD setFrame
   METHOD currentText
   METHOD setCurrentText
   METHOD currentIcon
   METHOD setCurrentIcon
   METHOD iconSize
   METHOD seticonSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionComboBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionComboBox>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionComboBox()
    */
    auto obj = new QStyleOptionComboBox();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONCOMBOBOX(1) )
  {
    /*
    QStyleOptionComboBox( const QStyleOptionComboBox & other )
    */
    auto obj = new QStyleOptionComboBox( *PQSTYLEOPTIONCOMBOBOX(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool editable
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_EDITABLE )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->editable );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETEDITABLE )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->editable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect popupRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_POPUPRECT )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QRect( obj->popupRect );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETPOPUPRECT )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->popupRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool frame
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_FRAME )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->frame );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETFRAME )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->frame = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString currentText
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_CURRENTTEXT )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->currentText );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETCURRENTTEXT )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
      obj->currentText = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon currentIcon
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_CURRENTICON )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QIcon( obj->currentIcon );
      Qt5xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETCURRENTICON )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->currentIcon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_ICONSIZE )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->iconSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETICONSIZE )
{
  auto obj = static_cast<QStyleOptionComboBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
