//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QVARIANT
#endif

CLASS QBluetoothTransferRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD setAttribute
   METHOD address

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothTransferRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothTransferRequest>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothTransferRequest>
#endif
#endif

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQBLUETOOTHADDRESS(1) || HB_ISNIL(1)))
  {
    /*
    QBluetoothTransferRequest(const QBluetoothAddress & address = QBluetoothAddress())
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothTransferRequest(HB_ISNIL(1) ? QBluetoothAddress()
                                                         : *static_cast<QBluetoothAddress *>(Qt5xHb::itemGetPtr(1)));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1))
  {
    /*
    QBluetoothTransferRequest(const QBluetoothTransferRequest & other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothTransferRequest(*PQBLUETOOTHTRANSFERREQUEST(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothTransferRequest *>(Qt5xHb::itemGetPtrStackSelfItem());

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
QVariant attribute(QBluetoothTransferRequest::Attribute code, const QVariant & defaultValue = QVariant()) const
*/
HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_ATTRIBUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothTransferRequest *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQVARIANT(2) || HB_ISNIL(2)))
    {
#endif
      auto ptr =
          new QVariant(obj->attribute(static_cast<QBluetoothTransferRequest::Attribute>(hb_parni(1)),
                                      HB_ISNIL(2) ? QVariant() : *static_cast<QVariant *>(Qt5xHb::itemGetPtr(2))));
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
void setAttribute(QBluetoothTransferRequest::Attribute code, const QVariant & value)
*/
HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_SETATTRIBUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothTransferRequest *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      obj->setAttribute(static_cast<QBluetoothTransferRequest::Attribute>(hb_parni(1)), *PQVARIANT(2));
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
QBluetoothAddress address() const
*/
HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_ADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothTransferRequest *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBluetoothAddress(obj->address());
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
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

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_NEWFROM)
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

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QBLUETOOTHTRANSFERREQUEST_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QBLUETOOTHTRANSFERREQUEST_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QBLUETOOTHTRANSFERREQUEST_SETSELFDESTRUCTION)
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
