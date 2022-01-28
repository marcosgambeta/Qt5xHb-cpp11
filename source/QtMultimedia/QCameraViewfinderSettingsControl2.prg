/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCAMERAVIEWFINDERSETTINGS
#endif

CLASS QCameraViewfinderSettingsControl2 INHERIT QMediaControl

   METHOD delete
   METHOD supportedViewfinderSettings
   METHOD viewfinderSettings
   METHOD setViewfinderSettings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraViewfinderSettingsControl2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QCameraViewfinderSettingsControl2>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QCameraViewfinderSettingsControl2>
#endif
#endif

/*
virtual ~QCameraViewfinderSettingsControl2()
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL2_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = qobject_cast< QCameraViewfinderSettingsControl2 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QList<QCameraViewfinderSettings> supportedViewfinderSettings() const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL2_SUPPORTEDVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = qobject_cast< QCameraViewfinderSettingsControl2 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QList<QCameraViewfinderSettings> list = obj->supportedViewfinderSettings();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAVIEWFINDERSETTINGS" );
      PHB_ITEM pArray = hb_itemArrayNew( 0 );
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( nullptr );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( nullptr );
          hb_itemPutPtr( pItem, static_cast< QCameraViewfinderSettings * >( new QCameraViewfinderSettings( list[ i ] ) ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( nullptr );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QCAMERAVIEWFINDERSETTINGS", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QCameraViewfinderSettings viewfinderSettings() const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL2_VIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = qobject_cast< QCameraViewfinderSettingsControl2 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QCameraViewfinderSettings( obj->viewfinderSettings() );
      Qt5xHb::createReturnClass( ptr, "QCAMERAVIEWFINDERSETTINGS", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual void setViewfinderSettings( const QCameraViewfinderSettings & settings ) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL2_SETVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = qobject_cast< QCameraViewfinderSettingsControl2 * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQCAMERAVIEWFINDERSETTINGS( 1 ) )
    {
#endif
      obj->setViewfinderSettings( *PQCAMERAVIEWFINDERSETTINGS( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
