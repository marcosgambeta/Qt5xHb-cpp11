//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QAndroidIntent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD putExtra
   METHOD extraBytes
   METHOD extraVariant
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidIntent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidIntent>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidIntent>
#endif
#endif

HB_FUNC_STATIC(QANDROIDINTENT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QAndroidIntent()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidIntent();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1))
  {
    /*
    QAndroidIntent(const QAndroidJniObject & intent)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidIntent(*PQANDROIDJNIOBJECT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QAndroidIntent(const QString & action)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidIntent(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(2) && ISQANDROIDJNIOBJECT(1) && HB_ISCHAR(2))
  {
    /*
    QAndroidIntent(const QAndroidJniObject & packageContext, const char * className)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidIntent(*PQANDROIDJNIOBJECT(1), PCONSTCHAR(2));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QAndroidIntent()
*/
HB_FUNC_STATIC(QANDROIDINTENT_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

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
void putExtra(const QString & key, const QByteArray & data)
*/
HB_FUNC_STATIC(QANDROIDINTENT_PUTEXTRA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQBYTEARRAY(2))
    {
#endif
      obj->putExtra(PQSTRING(1), *PQBYTEARRAY(2));
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
QByteArray extraBytes(const QString & key)
*/
HB_FUNC_STATIC(QANDROIDINTENT_EXTRABYTES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QByteArray(obj->extraBytes(PQSTRING(1)));
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
void putExtra(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC(QANDROIDINTENT_PUTEXTRA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2))
    {
#endif
      obj->putExtra(PQSTRING(1), *PQVARIANT(2));
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
QVariant extraVariant(const QString & key)
*/
HB_FUNC_STATIC(QANDROIDINTENT_EXTRAVARIANT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QVariant(obj->extraVariant(PQSTRING(1)));
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
QAndroidJniObject handle() const
*/
HB_FUNC_STATIC(QANDROIDINTENT_HANDLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidIntent *>(Qt5xHb::itemGetPtrStackSelfItem());

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

#pragma ENDDUMP
