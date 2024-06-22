/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionFrame INHERIT QStyleOption

   METHOD new
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth
   METHOD features
   METHOD setFeatures
   METHOD frameShape
   METHOD setFrameShape

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionFrame>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionFrame>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionFrame()
    */
    auto obj = new QStyleOptionFrame();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONFRAME(1))
  {
    /*
    QStyleOptionFrame( const QStyleOptionFrame & other )
    */
    auto obj = new QStyleOptionFrame( *PQSTYLEOPTIONFRAME(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_LINEWIDTH )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->lineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_MIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->midLineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETMIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
FrameFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FEATURES )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->features);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFEATURES )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->features = static_cast<QStyleOptionFrame::FrameFeatures>( hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFrame::Shape frameShape
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_FRAMESHAPE )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->frameShape);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETFRAMESHAPE )
{
  auto obj = static_cast<QStyleOptionFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->frameShape = static_cast<QFrame::Shape>( hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
