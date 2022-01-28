/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCameraViewfinderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD resolution
   METHOD setResolution
   METHOD minimumFrameRate
   METHOD setMinimumFrameRate
   METHOD maximumFrameRate
   METHOD setMaximumFrameRate
   METHOD pixelFormat
   METHOD setPixelFormat
   METHOD pixelAspectRatio
   METHOD setPixelAspectRatio

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraViewfinderSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QCameraViewfinderSettings>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QCameraViewfinderSettings>
#endif
#endif

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    /*
    QCameraViewfinderSettings()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = new QCameraViewfinderSettings();
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR( 1 ) && ISQCAMERAVIEWFINDERSETTINGS( 1 ) )
  {
    /*
    QCameraViewfinderSettings( const QCameraViewfinderSettings & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = new QCameraViewfinderSettings( *PQCAMERAVIEWFINDERSETTINGS( 1 ) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCameraViewfinderSettings()
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
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
void swap( QCameraViewfinderSettings & other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQCAMERAVIEWFINDERSETTINGS( 1 ) )
    {
#endif
      obj->swap( *PQCAMERAVIEWFINDERSETTINGS( 1 ) );
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

/*
bool isNull() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isNull() );
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
QSize resolution() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_RESOLUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QSize( obj->resolution() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR( 1 ) && ISQSIZE( 1 ) )
  {
    /*
    void setResolution( const QSize & )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      obj->setResolution( *PQSIZE( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
#endif

  }
  else if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    void setResolution( int width, int height )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      obj->setResolution( PINT( 1 ), PINT( 2 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
#endif

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal minimumFrameRate() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_MINIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->minimumFrameRate() );
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
void setMinimumFrameRate( qreal rate )
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETMINIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setMinimumFrameRate( PQREAL( 1 ) );
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

/*
qreal maximumFrameRate() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_MAXIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->maximumFrameRate() );
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
void setMaximumFrameRate( qreal rate )
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETMAXIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setMaximumFrameRate( PQREAL( 1 ) );
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

/*
QVideoFrame::PixelFormat pixelFormat() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_PIXELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->pixelFormat() );
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
void setPixelFormat( QVideoFrame::PixelFormat format )
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETPIXELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setPixelFormat( static_cast<QVideoFrame::PixelFormat>( hb_parni( 1 ) ) );
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

/*
QSize pixelAspectRatio() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_PIXELASPECTRATIO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QSize( obj->pixelAspectRatio() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR( 1 ) && ISQSIZE( 1 ) )
  {
    /*
    void setPixelAspectRatio( const QSize & ratio )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      obj->setPixelAspectRatio( *PQSIZE( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
#endif

  }
  else if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    void setPixelAspectRatio( int horizontal, int vertical )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
    auto obj = static_cast< QCameraViewfinderSettings * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      obj->setPixelAspectRatio( PINT( 1 ), PINT( 2 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
#endif

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
