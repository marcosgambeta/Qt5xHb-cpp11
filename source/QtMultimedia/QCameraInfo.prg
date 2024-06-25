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
#endif

CLASS QCameraInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD deviceName
   METHOD description
   METHOD position
   METHOD orientation
   METHOD defaultCamera
   METHOD availableCameras

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

HB_FUNC_STATIC(QCAMERAINFO_NEW)
{
  if (ISBETWEEN(0, 1) && ISQBYTEARRAY(1))
  {
    /*
    QCameraInfo(const QByteArray & name = QByteArray())
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QCameraInfo(HB_ISNIL(1) ? QByteArray() : *static_cast<QByteArray *>(Qt5xHb::itemGetPtr(1)));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQCAMERA(1))
  {
    /*
    QCameraInfo(const QCamera & camera)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QCameraInfo(*PQCAMERA(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQCAMERAINFO(1))
  {
    /*
    QCameraInfo(const QCameraInfo & other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QCameraInfo(*PQCAMERAINFO(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QCameraInfo()
*/
HB_FUNC_STATIC(QCAMERAINFO_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QCAMERAINFO_ISNULL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
QString deviceName() const
*/
HB_FUNC_STATIC(QCAMERAINFO_DEVICENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->deviceName());
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
QString description() const
*/
HB_FUNC_STATIC(QCAMERAINFO_DESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->description());
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
QCamera::Position position() const
*/
HB_FUNC_STATIC(QCAMERAINFO_POSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->position());
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
int orientation() const
*/
HB_FUNC_STATIC(QCAMERAINFO_ORIENTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QCameraInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->orientation());
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
static QCameraInfo defaultCamera()
*/
HB_FUNC_STATIC(QCAMERAINFO_DEFAULTCAMERA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto ptr = new QCameraInfo(QCameraInfo::defaultCamera());
    Qt5xHb::createReturnClass(ptr, "QCAMERAINFO", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QList<QCameraInfo> availableCameras(QCamera::Position position = QCamera::UnspecifiedPosition)
*/
HB_FUNC_STATIC(QCAMERAINFO_AVAILABLECAMERAS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
#endif
    auto list = QCameraInfo::availableCameras(HB_ISNIL(1) ? static_cast<QCamera::Position>(QCamera::UnspecifiedPosition)
                                                          : static_cast<QCamera::Position>(hb_parni(1)));
    auto pDynSym = hb_dynsymFindName("QCAMERAINFO");
    auto pArray = hb_itemArrayNew(0);
    if (pDynSym != nullptr)
    {
      for (const auto &item : list)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, new QCameraInfo(item));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        auto pDestroy = hb_itemPutL(nullptr, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QCAMERAINFO", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC(QCAMERAINFO_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QCAMERAINFO_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QCAMERAINFO_NEWFROM);
}

HB_FUNC_STATIC(QCAMERAINFO_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QCAMERAINFO_NEWFROM);
}

HB_FUNC_STATIC(QCAMERAINFO_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QCAMERAINFO_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
