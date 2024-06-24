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

CLASS QWebSocketCorsAuthenticator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD origin
   METHOD allowed
   METHOD setAllowed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebSocketCorsAuthenticator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtWebSockets/QWebSocketCorsAuthenticator>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtWebSockets/QWebSocketCorsAuthenticator>
#endif
#endif

#include <QtCore/QLatin1String>
#include <QtCore/QString>

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_NEW)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QWebSocketCorsAuthenticator(const QString & origin)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = new QWebSocketCorsAuthenticator(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1))
  {
    /*
    QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator & other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = new QWebSocketCorsAuthenticator(*PQWEBSOCKETCORSAUTHENTICATOR(1));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QWebSocketCorsAuthenticator*>(Qt5xHb::itemGetPtrStackSelfItem());

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
void swap(QWebSocketCorsAuthenticator & other)
*/
HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_SWAP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QWebSocketCorsAuthenticator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1))
    {
#endif
      obj->swap(*PQWEBSOCKETCORSAUTHENTICATOR(1));
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
QString origin() const
*/
HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_ORIGIN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QWebSocketCorsAuthenticator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->origin());
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
bool allowed() const
*/
HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_ALLOWED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QWebSocketCorsAuthenticator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->allowed());
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
void setAllowed(bool allowed)
*/
HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_SETALLOWED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QWebSocketCorsAuthenticator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAllowed(PBOOL(1));
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

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_NEWFROM)
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

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QWEBSOCKETCORSAUTHENTICATOR_NEWFROM);
}

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QWEBSOCKETCORSAUTHENTICATOR_NEWFROM);
}

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QWEBSOCKETCORSAUTHENTICATOR_SETSELFDESTRUCTION)
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
