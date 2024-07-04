//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVERSIONNUMBER
#endif

CLASS QCompressedHelpInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD namespaceName
   METHOD component
   METHOD version
   METHOD fromCompressedHelpFile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCompressedHelpInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
#include <QtHelp/QCompressedHelpInfo>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
#include <QtHelp/QCompressedHelpInfo>
#endif
#endif

#include <QtCore/QVersionNumber>

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QCompressedHelpInfo()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
    auto obj = new QCompressedHelpInfo();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQCOMPRESSEDHELPINFO(1))
  {
    /*
    QCompressedHelpInfo(const QCompressedHelpInfo & other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
    auto obj = new QCompressedHelpInfo(*PQCOMPRESSEDHELPINFO(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QCompressedHelpInfo()
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = static_cast<QCompressedHelpInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

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
void swap(QCompressedHelpInfo & other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_SWAP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = static_cast<QCompressedHelpInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQCOMPRESSEDHELPINFO(1))
    {
#endif
      obj->swap(*PQCOMPRESSEDHELPINFO(1));
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
QString namespaceName() const
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_NAMESPACENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = static_cast<QCompressedHelpInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->namespaceName());
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
QString component() const
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_COMPONENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = static_cast<QCompressedHelpInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->component());
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
QVersionNumber version() const
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_VERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = static_cast<QCompressedHelpInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVersionNumber(obj->version());
      Qt5xHb::createReturnClass(ptr, "QVERSIONNUMBER", true);
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
static QCompressedHelpInfo fromCompressedHelpFile(const QString & documentationFileName)
*/
HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_FROMCOMPRESSEDHELPFILE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    auto ptr = new QCompressedHelpInfo(QCompressedHelpInfo::fromCompressedHelpFile(PQSTRING(1)));
    Qt5xHb::createReturnClass(ptr, "QCOMPRESSEDHELPINFO", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_NEWFROM)
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

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QCOMPRESSEDHELPINFO_NEWFROM);
}

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QCOMPRESSEDHELPINFO_NEWFROM);
}

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QCOMPRESSEDHELPINFO_SETSELFDESTRUCTION)
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
