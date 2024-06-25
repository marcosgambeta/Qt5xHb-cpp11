/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QStyleOptionHeader INHERIT QStyleOption

   METHOD new
   METHOD section
   METHOD setSection
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD icon
   METHOD setIcon
   METHOD iconAlignment
   METHOD setIconAlignment
   METHOD position
   METHOD setPosition
   METHOD selectedPosition
   METHOD setSelectedPosition
   METHOD sortIndicator
   METHOD setSortIndicator
   METHOD orientation
   METHOD setOrientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionHeader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionHeader>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionHeader>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionHeader()
    */
    auto obj = new QStyleOptionHeader();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONHEADER(1))
  {
    /*
    QStyleOptionHeader(const QStyleOptionHeader & other)
    */
    auto obj = new QStyleOptionHeader(*PQSTYLEOPTIONHEADER(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int section
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SECTION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->section);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETSECTION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->section = PINT(1);
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
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_TEXT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETTEXT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

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
Qt::Alignment textAlignment
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_TEXTALIGNMENT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->textAlignment);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETTEXTALIGNMENT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->textAlignment = static_cast<Qt::Alignment>(hb_parni(1));
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
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_ICON)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETICON)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

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
Qt::Alignment iconAlignment
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_ICONALIGNMENT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->iconAlignment);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETICONALIGNMENT)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->iconAlignment = static_cast<Qt::Alignment>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
SectionPosition position
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_POSITION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->position);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETPOSITION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->position = static_cast<QStyleOptionHeader::SectionPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SELECTEDPOSITION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->selectedPosition);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETSELECTEDPOSITION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->selectedPosition = static_cast<QStyleOptionHeader::SelectedPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
SortIndicator sortIndicator
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SORTINDICATOR)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->sortIndicator);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETSORTINDICATOR)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->sortIndicator = static_cast<QStyleOptionHeader::SortIndicator>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC(QSTYLEOPTIONHEADER_ORIENTATION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->orientation);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONHEADER_SETORIENTATION)
{
  auto obj = static_cast<QStyleOptionHeader *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->orientation = static_cast<Qt::Orientation>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
