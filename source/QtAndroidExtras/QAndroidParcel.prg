//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDBINDER
REQUEST QANDROIDJNIOBJECT
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QAndroidParcel

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD writeData
   METHOD writeVariant
   METHOD writeBinder
   METHOD writeFileDescriptor
   METHOD readData
   METHOD readVariant
   METHOD readBinder
   METHOD readFileDescriptor
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidParcel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidParcel>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidParcel>
#endif
#endif

HB_FUNC_STATIC(QANDROIDPARCEL_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QAndroidParcel()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidParcel();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1))
  {
    /*
    QAndroidParcel(const QAndroidJniObject & parcel)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidParcel(*PQANDROIDJNIOBJECT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QAndroidParcel()
*/
HB_FUNC_STATIC(QANDROIDPARCEL_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

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
void writeData(const QByteArray & data) const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_WRITEDATA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->writeData(*PQBYTEARRAY(1));
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
void writeVariant(const QVariant & value) const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_WRITEVARIANT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVARIANT(1))
    {
#endif
      obj->writeVariant(*PQVARIANT(1));
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
void writeBinder(const QAndroidBinder & binder) const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_WRITEBINDER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQANDROIDBINDER(1))
    {
#endif
      obj->writeBinder(*PQANDROIDBINDER(1));
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
void writeFileDescriptor(int fd) const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_WRITEFILEDESCRIPTOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->writeFileDescriptor(PINT(1));
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
QByteArray readData() const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_READDATA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QByteArray(obj->readData());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QVariant readVariant() const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_READVARIANT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVariant(obj->readVariant());
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
QAndroidBinder readBinder() const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_READBINDER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QAndroidBinder(obj->readBinder());
      Qt5xHb::createReturnClass(ptr, "QANDROIDBINDER", true);
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
int readFileDescriptor() const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_READFILEDESCRIPTOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->readFileDescriptor());
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
QAndroidJniObject handle() const
*/
HB_FUNC_STATIC(QANDROIDPARCEL_HANDLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QAndroidJniObject(obj->handle());
      Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
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

HB_FUNC_STATIC(QANDROIDPARCEL_NEWFROM)
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

HB_FUNC_STATIC(QANDROIDPARCEL_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QANDROIDPARCEL_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDPARCEL_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QANDROIDPARCEL_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDPARCEL_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QANDROIDPARCEL_SETSELFDESTRUCTION)
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
