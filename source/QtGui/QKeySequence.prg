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

CLASS QKeySequence

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD matches
   METHOD toString
   METHOD fromString
   METHOD keyBindings
   METHOD mnemonic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QKeySequence
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QKeySequence>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QKeySequence>
#endif

#include <QtCore/QList>

HB_FUNC_STATIC(QKEYSEQUENCE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QKeySequence()
    */
    auto obj = new QKeySequence();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QKeySequence(const QString & key)
    */
    auto obj = new QKeySequence(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    /*
    QKeySequence(const QString & key, QKeySequence::SequenceFormat format)
    */
    auto obj = new QKeySequence(PQSTRING(1), static_cast<QKeySequence::SequenceFormat>(hb_parni(2)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QKeySequence(int k1, int k2 = 0, int k3 = 0, int k4 = 0)
    */
    auto obj = new QKeySequence(PINT(1), OPINT(2, 0), OPINT(3, 0), OPINT(4, 0));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQKEYSEQUENCE(1))
  {
    /*
    QKeySequence(const QKeySequence & keysequence)
    */
    auto obj = new QKeySequence(*PQKEYSEQUENCE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QKeySequence(QKeySequence::StandardKey key)
    */
    auto obj = new QKeySequence(static_cast<QKeySequence::StandardKey>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QKEYSEQUENCE_DELETE)
{
  auto obj = static_cast<QKeySequence *>(Qt5xHb::itemGetPtrStackSelfItem());

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
uint count() const
*/
HB_FUNC_STATIC(QKEYSEQUENCE_COUNT)
{
  auto obj = static_cast<QKeySequence *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RUINT(obj->count());
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
bool isEmpty() const
*/
HB_FUNC_STATIC(QKEYSEQUENCE_ISEMPTY)
{
  auto obj = static_cast<QKeySequence *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
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
QKeySequence::SequenceMatch matches(const QKeySequence & seq) const
*/
HB_FUNC_STATIC(QKEYSEQUENCE_MATCHES)
{
  auto obj = static_cast<QKeySequence *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQKEYSEQUENCE(1))
    {
#endif
      RENUM(obj->matches(*PQKEYSEQUENCE(1)));
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
QString toString(QKeySequence::SequenceFormat format = QKeySequence::PortableText) const
*/
HB_FUNC_STATIC(QKEYSEQUENCE_TOSTRING)
{
  auto obj = static_cast<QKeySequence *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RQSTRING(obj->toString(HB_ISNIL(1) ? static_cast<QKeySequence::SequenceFormat>(QKeySequence::PortableText)
                                         : static_cast<QKeySequence::SequenceFormat>(hb_parni(1))));
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
static QKeySequence fromString(const QString & str, QKeySequence::SequenceFormat format = QKeySequence::PortableText)
*/
HB_FUNC_STATIC(QKEYSEQUENCE_FROMSTRING)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    auto ptr = new QKeySequence(QKeySequence::fromString(
        PQSTRING(1), HB_ISNIL(2) ? static_cast<QKeySequence::SequenceFormat>(QKeySequence::PortableText)
                                 : static_cast<QKeySequence::SequenceFormat>(hb_parni(2))));
    Qt5xHb::createReturnClass(ptr, "QKEYSEQUENCE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QList<QKeySequence> keyBindings(QKeySequence::StandardKey key)
*/
HB_FUNC_STATIC(QKEYSEQUENCE_KEYBINDINGS)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    auto list = QKeySequence::keyBindings(static_cast<QKeySequence::StandardKey>(hb_parni(1)));
    auto pDynSym = hb_dynsymFindName("QKEYSEQUENCE");
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
        auto pItem = hb_itemPutPtr(nullptr, new QKeySequence(item));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QKEYSEQUENCE", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QKeySequence mnemonic(const QString & text)
*/
HB_FUNC_STATIC(QKEYSEQUENCE_MNEMONIC)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    auto ptr = new QKeySequence(QKeySequence::mnemonic(PQSTRING(1)));
    Qt5xHb::createReturnClass(ptr, "QKEYSEQUENCE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QKEYSEQUENCE_NEWFROM)
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

HB_FUNC_STATIC(QKEYSEQUENCE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QKEYSEQUENCE_NEWFROM);
}

HB_FUNC_STATIC(QKEYSEQUENCE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QKEYSEQUENCE_NEWFROM);
}

HB_FUNC_STATIC(QKEYSEQUENCE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QKEYSEQUENCE_SETSELFDESTRUCTION)
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
