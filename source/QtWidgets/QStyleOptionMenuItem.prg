/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QICON
REQUEST QRECT
#endif

CLASS QStyleOptionMenuItem INHERIT QStyleOption

   METHOD new
   METHOD menuItemType
   METHOD setMenuItemType
   METHOD checkType
   METHOD setCheckType
   METHOD checked
   METHOD setChecked
   METHOD menuHasCheckableItems
   METHOD setMenuHasCheckableItems
   METHOD menuRect
   METHOD setMenuRect
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD maxIconWidth
   METHOD setMaxIconWidth
   METHOD tabWidth
   METHOD setTabWidth
   METHOD font
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionMenuItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionMenuItem>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionMenuItem>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionMenuItem()
    */
    auto obj = new QStyleOptionMenuItem();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONMENUITEM(1))
  {
    /*
    QStyleOptionMenuItem( const QStyleOptionMenuItem & other )
    */
    auto obj = new QStyleOptionMenuItem( *PQSTYLEOPTIONMENUITEM(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
MenuItemType menuItemType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUITEMTYPE )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->menuItemType);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUITEMTYPE )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->menuItemType = static_cast<QStyleOptionMenuItem::MenuItemType>( hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
CheckType checkType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKTYPE )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->checkType);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKTYPE )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->checkType = static_cast<QStyleOptionMenuItem::CheckType>( hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool checked
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKED )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->checked);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKED )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->checked = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool menuHasCheckableItems
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUHASCHECKABLEITEMS )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->menuHasCheckableItems);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUHASCHECKABLEITEMS )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->menuHasCheckableItems = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect menuRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENURECT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QRect(obj->menuRect);
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENURECT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQRECT(1))
    {
      obj->menuRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TEXT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->text);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTEXT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_ICON )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QIcon(obj->icon);
      Qt5xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETICON )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQICON(1))
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int maxIconWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MAXICONWIDTH )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->maxIconWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMAXICONWIDTH )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->maxIconWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int tabWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TABWIDTH )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->tabWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTABWIDTH )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->tabWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_FONT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QFont(obj->font);
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETFONT )
{
  auto obj = static_cast<QStyleOptionMenuItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQFONT(1))
    {
      obj->font = *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
