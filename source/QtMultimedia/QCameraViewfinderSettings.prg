/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS QCameraViewfinderSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QCameraViewfinderSettings>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QCameraViewfinderSettings>
#endif
#endif

/*
QCameraViewfinderSettings()
*/
void QCameraViewfinderSettings_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * o = new QCameraViewfinderSettings ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QCameraViewfinderSettings(const QCameraViewfinderSettings& other)
*/
void QCameraViewfinderSettings_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * o = new QCameraViewfinderSettings ( *PQCAMERAVIEWFINDERSETTINGS(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QCameraViewfinderSettings()
//[2]QCameraViewfinderSettings(const QCameraViewfinderSettings& other)

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCameraViewfinderSettings_new1();
  }
  else if( ISNUMPAR(1) && ISQCAMERAVIEWFINDERSETTINGS(1) )
  {
    QCameraViewfinderSettings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCameraViewfinderSettings()
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void swap(QCameraViewfinderSettings &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCAMERAVIEWFINDERSETTINGS(1) )
    {
#endif
      obj->swap ( *PQCAMERAVIEWFINDERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->resolution () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setResolution(const QSize &)
*/
void QCameraViewfinderSettings_setResolution1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setResolution ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setResolution(int width, int height)
*/
void QCameraViewfinderSettings_setResolution2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setResolution ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QCameraViewfinderSettings_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCameraViewfinderSettings_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal minimumFrameRate() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_MINIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->minimumFrameRate () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setMinimumFrameRate(qreal rate)
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETMINIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinimumFrameRate ( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maximumFrameRate () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setMaximumFrameRate(qreal rate)
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETMAXIMUMFRAMERATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaximumFrameRate ( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pixelFormat () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPixelFormat(QVideoFrame::PixelFormat format)
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETPIXELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPixelFormat ( (QVideoFrame::PixelFormat) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->pixelAspectRatio () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPixelAspectRatio(const QSize &ratio)
*/
void QCameraViewfinderSettings_setPixelAspectRatio1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setPixelAspectRatio ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPixelAspectRatio(int horizontal, int vertical)
*/
void QCameraViewfinderSettings_setPixelAspectRatio2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraViewfinderSettings * obj = (QCameraViewfinderSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setPixelAspectRatio ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void setPixelAspectRatio(const QSize &ratio)
//[2]void setPixelAspectRatio(int horizontal, int vertical)

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QCameraViewfinderSettings_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCameraViewfinderSettings_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
