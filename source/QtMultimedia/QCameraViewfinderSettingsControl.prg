/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraViewfinderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraViewfinderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraViewfinderSettingsControl>
#endif

/*
~QCameraViewfinderSettingsControl()
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_DELETE )
{
  auto obj = qobject_cast<QCameraViewfinderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual bool isViewfinderParameterSupported( QCameraViewfinderSettingsControl::ViewfinderParameter parameter ) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_ISVIEWFINDERPARAMETERSUPPORTED )
{
  auto obj = qobject_cast<QCameraViewfinderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isViewfinderParameterSupported( static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>( hb_parni(1) ) ) );
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
virtual void setViewfinderParameter( QCameraViewfinderSettingsControl::ViewfinderParameter parameter, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_SETVIEWFINDERPARAMETER )
{
  auto obj = qobject_cast<QCameraViewfinderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setViewfinderParameter( static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>( hb_parni(1) ), *PQVARIANT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QVariant viewfinderParameter( QCameraViewfinderSettingsControl::ViewfinderParameter parameter ) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_VIEWFINDERPARAMETER )
{
  auto obj = qobject_cast<QCameraViewfinderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->viewfinderParameter( static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>( hb_parni(1) ) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
