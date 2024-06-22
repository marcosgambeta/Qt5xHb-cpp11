/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODINGMANAGER
REQUEST QGEOROUTINGMANAGER
REQUEST QPLACEMANAGER
#endif

CLASS QGeoServiceProvider INHERIT QObject

   METHOD delete
   METHOD availableServiceProviders
   METHOD routingFeatures
   METHOD geocodingFeatures
   METHOD mappingFeatures
   METHOD placesFeatures
   METHOD geocodingManager
   METHOD routingManager
   METHOD placeManager
   METHOD error
   METHOD errorString
   METHOD setLocale
   METHOD setAllowExperimental

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoServiceProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoServiceProvider>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoServiceProvider>
#endif
#endif

#include <QtLocation/QGeoCodingManager>
#include <QtLocation/QGeoRoutingManager>
#include <QtLocation/QPlaceManager>

HB_FUNC_STATIC( QGEOSERVICEPROVIDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
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
static QStringList availableServiceProviders()
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_AVAILABLESERVICEPROVIDERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRINGLIST( QGeoServiceProvider::availableServiceProviders());
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
QGeoServiceProvider::RoutingFeatures routingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->routingFeatures());
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
QGeoServiceProvider::GeocodingFeatures geocodingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->geocodingFeatures());
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
QGeoServiceProvider::MappingFeatures mappingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_MAPPINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->mappingFeatures());
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
QGeoServiceProvider::PlacesFeatures placesFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACESFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->placesFeatures());
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
QGeoCodingManager * geocodingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->geocodingManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODINGMANAGER");
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
QGeoMappingManager *mappingManager() const
*/
/*
QGeoRoutingManager * routingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->routingManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOROUTINGMANAGER");
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
QPlaceManager * placeManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACEMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->placeManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QPLACEMANAGER");
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
QGeoServiceProvider::Error error() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
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
QString errorString() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->errorString());
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
void setLocale( const QLocale & locale )
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLOCALE(1))
    {
#endif
      obj->setLocale( *PQLOCALE(1));
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
void setAllowExperimental( bool allow )
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETALLOWEXPERIMENTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoServiceProvider*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAllowExperimental(PBOOL(1));
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

#pragma ENDDUMP
