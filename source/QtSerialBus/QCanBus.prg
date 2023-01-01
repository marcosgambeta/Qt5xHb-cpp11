/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANBUSDEVICE
REQUEST QCANBUSDEVICEINFO
#endif

CLASS QCanBus INHERIT QObject

   METHOD instance
   METHOD plugins
   METHOD availableDevices
   METHOD createDevice

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCanBus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBus>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBus>
#endif
#endif

/*
static QCanBus * instance()
*/
HB_FUNC_STATIC( QCANBUS_INSTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QCanBus * ptr = QCanBus::instance();
    Qt5xHb::createReturnQObjectClass(ptr, "QCANBUS");
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
QStringList plugins() const
*/
HB_FUNC_STATIC( QCANBUS_PLUGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QCanBus*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->plugins() );
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
QList<QCanBusDeviceInfo> availableDevices( const QString & plugin, QString * errorMessage = nullptr ) const
*/
HB_FUNC_STATIC( QCANBUS_AVAILABLEDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = qobject_cast<QCanBus*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      const QList<QCanBusDeviceInfo> list = obj->availableDevices( PQSTRING(1), nullptr );
      PHB_DYNS pDynSym = hb_dynsymFindName("QCANBUSDEVICEINFO");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QCanBusDeviceInfo(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QCANBUSDEVICEINFO", HB_ERR_ARGS_BASEPARAMS);
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

/*
QCanBusDevice * createDevice( const QString & plugin, const QString & interfaceName, QString * errorMessage = nullptr ) const
*/
HB_FUNC_STATIC( QCANBUS_CREATEDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QCanBus*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
    {
#endif
      QCanBusDevice * ptr = obj->createDevice( PQSTRING(1), PQSTRING(2), nullptr );
      Qt5xHb::createReturnQObjectClass(ptr, "QCANBUSDEVICE");
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
