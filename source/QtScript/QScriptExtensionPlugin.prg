/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScript/QScriptExtensionPlugin>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtScript/QScriptExtensionPlugin>
#endif

#include <QtScript/QScriptValue>

HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_DELETE )
{
  auto obj = qobject_cast<QScriptExtensionPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QScriptValue setupPackage( const QString & key, QScriptEngine * engine ) const
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_SETUPPACKAGE )
{
  auto obj = qobject_cast<QScriptExtensionPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQSCRIPTENGINE(2) )
    {
#endif
      auto ptr = new QScriptValue( obj->setupPackage( PQSTRING(1), PQSCRIPTENGINE(2) ) );
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
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
virtual void initialize( const QString & key, QScriptEngine * engine ) = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_INITIALIZE )
{
  auto obj = qobject_cast<QScriptExtensionPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQSCRIPTENGINE(2) )
    {
#endif
      obj->initialize( PQSTRING(1), PQSCRIPTENGINE(2) );
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
virtual QStringList keys() const = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_KEYS )
{
  auto obj = qobject_cast<QScriptExtensionPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->keys() );
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
