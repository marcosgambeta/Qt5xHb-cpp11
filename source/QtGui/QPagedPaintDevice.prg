/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGELAYOUT
REQUEST QSIZEF
#endif

CLASS QPagedPaintDevice INHERIT QPaintDevice

   METHOD delete
   METHOD newPage
   METHOD pageSize
   METHOD setPageSize
   METHOD pageSizeMM
   METHOD setPageSizeMM
   METHOD pageLayout
   METHOD setPageLayout
   METHOD setPageOrientation
   METHOD setPageMargins

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPagedPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPagedPaintDevice>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPagedPaintDevice>
#endif

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_DELETE )
{
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto self = hb_stackSelfItem();
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual bool newPage() = 0
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_NEWPAGE )
{
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->newPage());
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
QPagedPaintDevice::PageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZE )
{
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->pageSize());
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
virtual void setPageSize( QPagedPaintDevice::PageSize size )
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPageSize( static_cast<QPagedPaintDevice::PageSize>( hb_parni(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QSizeF pageSizeMM() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZEMM )
{
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSizeF(obj->pageSizeMM());
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

/*
virtual void setPageSizeMM( const QSizeF & size )
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZEMM )
{
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSIZEF(1))
    {
#endif
      obj->setPageSizeMM( *PQSIZEF(1));
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
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPageLayout(obj->pageLayout());
      Qt5xHb::createReturnClass(ptr, "QPAGELAYOUT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setPageLayout( const QPageLayout & pageLayout )
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAGELAYOUT(1))
    {
#endif
      RBOOL(obj->setPageLayout( *PQPAGELAYOUT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setPageOrientation( QPageLayout::Orientation orientation )
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setPageOrientation( static_cast<QPageLayout::Orientation>( hb_parni(1))));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS )
{
  if (ISNUMPAR(1) && ISQMARGINSF(1))
  {
    /*
    bool setPageMargins( const QMarginsF & margins )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setPageMargins( *PQMARGINSF(1)));
    }
#endif

  }
  else if (ISNUMPAR(2) && ISQMARGINSF(1) && HB_ISNUM(2))
  {
    /*
    bool setPageMargins( const QMarginsF & margins, QPageLayout::Unit units )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = static_cast<QPagedPaintDevice*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setPageMargins( *PQMARGINSF(1), static_cast<QPageLayout::Unit>( hb_parni(2))));
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
