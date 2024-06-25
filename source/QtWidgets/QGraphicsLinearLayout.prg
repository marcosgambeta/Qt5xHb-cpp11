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
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsLinearLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsLinearLayout>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsLinearLayout>
#endif

HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQGRAPHICSLAYOUTITEM(1) || HB_ISNIL(1)))
  {
    /*
    QGraphicsLinearLayout(QGraphicsLayoutItem * parent = nullptr)
    */
    auto obj =
        new QGraphicsLinearLayout(HB_ISNIL(1) ? nullptr : static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtr(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2) || HB_ISNIL(2)))
  {
    /*
    QGraphicsLinearLayout(Qt::Orientation orientation, QGraphicsLayoutItem * parent = nullptr)
    */
    auto obj =
        new QGraphicsLinearLayout(static_cast<Qt::Orientation>(hb_parni(1)),
                                  HB_ISNIL(2) ? nullptr : static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtr(2)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_DELETE)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addItem(QGraphicsLayoutItem * item)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ADDITEM)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1))
    {
#endif
      obj->addItem(PQGRAPHICSLAYOUTITEM(1));
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
void addStretch(int stretch = 1)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ADDSTRETCH)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      obj->addStretch(OPINT(1, 1));
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
Qt::Alignment alignment(QGraphicsLayoutItem * item) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ALIGNMENT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1))
    {
#endif
      RENUM(obj->alignment(PQGRAPHICSLAYOUTITEM(1)));
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
void insertItem(int index, QGraphicsLayoutItem * item)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_INSERTITEM)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQGRAPHICSLAYOUTITEM(2))
    {
#endif
      obj->insertItem(PINT(1), PQGRAPHICSLAYOUTITEM(2));
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
void insertStretch(int index, int stretch = 1)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_INSERTSTRETCH)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->insertStretch(PINT(1), OPINT(2, 1));
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
qreal itemSpacing(int index) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ITEMSPACING)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->itemSpacing(PINT(1)));
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ORIENTATION)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
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
void removeItem(QGraphicsLayoutItem * item)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_REMOVEITEM)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1))
    {
#endif
      obj->removeItem(PQGRAPHICSLAYOUTITEM(1));
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
void setAlignment(QGraphicsLayoutItem * item, Qt::Alignment alignment)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETALIGNMENT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2))
    {
#endif
      obj->setAlignment(PQGRAPHICSLAYOUTITEM(1), static_cast<Qt::Alignment>(hb_parni(2)));
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
void setItemSpacing(int index, qreal spacing)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETITEMSPACING)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setItemSpacing(PINT(1), PQREAL(2));
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
void setOrientation(Qt::Orientation orientation)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETORIENTATION)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOrientation(static_cast<Qt::Orientation>(hb_parni(1)));
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
void setSpacing(qreal spacing)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETSPACING)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSpacing(PQREAL(1));
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
void setStretchFactor(QGraphicsLayoutItem * item, int stretch)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETSTRETCHFACTOR)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2))
    {
#endif
      obj->setStretchFactor(PQGRAPHICSLAYOUTITEM(1), PINT(2));
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
qreal spacing() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SPACING)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->spacing());
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
int stretchFactor(QGraphicsLayoutItem * item) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_STRETCHFACTOR)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1))
    {
#endif
      RINT(obj->stretchFactor(PQGRAPHICSLAYOUTITEM(1)));
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
virtual int count() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_COUNT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
virtual void invalidate()
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_INVALIDATE)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->invalidate();
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
virtual QGraphicsLayoutItem * itemAt(int index) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_ITEMAT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = obj->itemAt(PINT(1));
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUTITEM", false);
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
virtual void removeAt(int index)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_REMOVEAT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->removeAt(PINT(1));
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
virtual void setGeometry(const QRectF & rect)
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SETGEOMETRY)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRECTF(1))
    {
#endif
      obj->setGeometry(*PQRECTF(1));
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
virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF & constraint = QSizeF()) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEARLAYOUT_SIZEHINT)
{
  auto obj = static_cast<QGraphicsLinearLayout *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQSIZEF(2) || HB_ISNIL(2)))
    {
#endif
      auto ptr = new QSizeF(obj->sizeHint(static_cast<Qt::SizeHint>(hb_parni(1)),
                                          HB_ISNIL(2) ? QSizeF() : *static_cast<QSizeF *>(Qt5xHb::itemGetPtr(2))));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
