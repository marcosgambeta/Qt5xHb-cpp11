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

CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTreeWidgetItemIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QTreeWidgetItemIterator>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QTreeWidgetItemIterator>
#endif

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if (ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1))
  {
    /*
    QTreeWidgetItemIterator( const QTreeWidgetItemIterator & it )
    */
    auto obj = new QTreeWidgetItemIterator( *PQTREEWIDGETITEMITERATOR(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISBETWEEN(1, 2) && ISQTREEWIDGET(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QTreeWidgetItemIterator( QTreeWidget * widget, QTreeWidgetItemIterator::IteratorFlags flags = QTreeWidgetItemIterator::All )
    */
    auto obj = new QTreeWidgetItemIterator(PQTREEWIDGET(1), HB_ISNIL(2) ? static_cast<QTreeWidgetItemIterator::IteratorFlags >( QTreeWidgetItemIterator::All ) : static_cast<QTreeWidgetItemIterator::IteratorFlags >( hb_parni(2)));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISBETWEEN(1, 2) && ISQTREEWIDGETITEM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QTreeWidgetItemIterator( QTreeWidgetItem * item, QTreeWidgetItemIterator::IteratorFlags flags = QTreeWidgetItemIterator::All )
    */
    auto obj = new QTreeWidgetItemIterator(PQTREEWIDGETITEM(1), HB_ISNIL(2) ? static_cast<QTreeWidgetItemIterator::IteratorFlags >( QTreeWidgetItemIterator::All ) : static_cast<QTreeWidgetItemIterator::IteratorFlags >( hb_parni(2)));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_DELETE )
{
  auto obj = static_cast<QTreeWidgetItemIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROM )
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

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QTREEWIDGETITEMITERATOR_NEWFROM);
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QTREEWIDGETITEMITERATOR_NEWFROM);
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SETSELFDESTRUCTION )
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
