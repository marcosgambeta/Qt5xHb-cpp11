/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlApplicationEngine INHERIT QQmlEngine

   METHOD new
   METHOD delete
   METHOD rootObjects
   METHOD load
   METHOD loadData

   METHOD onObjectCreated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlApplicationEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtQml/QQmlApplicationEngine>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtQml/QQmlApplicationEngine>
#endif
#endif

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QQmlApplicationEngine( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = new QQmlApplicationEngine( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(1, 2) && ISQURL(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QQmlApplicationEngine( const QUrl & url, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = new QQmlApplicationEngine( *PQURL(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QQmlApplicationEngine( const QString & filePath, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = new QQmlApplicationEngine( PQSTRING(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
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
QList<QObject *> rootObjects()
*/
HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_ROOTOBJECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QObject *> list = obj->rootObjects();
      PHB_DYNS pDynSym = hb_dynsymFindName("QOBJECT");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QOBJECT", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    void load( const QUrl & url )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->load( *PQURL(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    void load( const QString & filePath )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
    auto obj = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->load( PQSTRING(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void loadData( const QByteArray & data, const QUrl & url = QUrl() )
*/
HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOADDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && ( ISQURL(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->loadData( *PQBYTEARRAY(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>(Qt5xHb::itemGetPtr(2)) );
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
void objectCreated( QObject * obj, const QUrl & url )
*/
HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_ONOBJECTCREATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto sender = qobject_cast<QQmlApplicationEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("objectCreated(QObject*,QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QQmlApplicationEngine::objectCreated,
                                                              [sender, indexOfCodeBlock]
                                                              (QObject * arg1, const QUrl & arg2) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QQMLAPPLICATIONENGINE");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QOBJECT");
            auto pArg2 = Qt5xHb::Signals_return_object( (void *) &arg2, "QURL");
            hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
