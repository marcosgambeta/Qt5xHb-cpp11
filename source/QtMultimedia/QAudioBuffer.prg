/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD byteCount
   METHOD data
   METHOD duration
   METHOD format
   METHOD frameCount
   METHOD isValid
   METHOD sampleCount
   METHOD startTime

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioBuffer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioBuffer>
#endif

HB_FUNC_STATIC( QAUDIOBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QAudioBuffer()
    */
    auto obj = new QAudioBuffer();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQAUDIOBUFFER(1) )
  {
    /*
    QAudioBuffer( const QAudioBuffer & other )
    */
    auto obj = new QAudioBuffer( *PQAUDIOBUFFER(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(2, 3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    QAudioBuffer( const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1 )
    */
    auto obj = new QAudioBuffer( *PQBYTEARRAY(1), *PQAUDIOFORMAT(2), OPQINT64( 3, -1 ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQAUDIOFORMAT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    QAudioBuffer( int numFrames, const QAudioFormat & format, qint64 startTime = -1 )
    */
    auto obj = new QAudioBuffer( PINT(1), *PQAUDIOFORMAT(2), OPQINT64( 3, -1 ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QAudioBuffer()
*/
HB_FUNC_STATIC( QAUDIOBUFFER_DELETE )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int byteCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_BYTECOUNT )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->byteCount() );
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
const void * constData() const
*/
/*
const void* data() const
*/
/*
void * data()
*/
HB_FUNC_STATIC( QAUDIOBUFFER_DATA )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( static_cast< void*>( obj->data() ) );
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
qint64 duration() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_DURATION )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
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
QAudioFormat format() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_FORMAT )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QAudioFormat( obj->format() );
      Qt5xHb::createReturnClass(ptr, "QAUDIOFORMAT", true);
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
int frameCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_FRAMECOUNT )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->frameCount() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_ISVALID )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
int sampleCount() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_SAMPLECOUNT )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sampleCount() );
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
qint64 startTime() const
*/
HB_FUNC_STATIC( QAUDIOBUFFER_STARTTIME )
{
  auto obj = static_cast<QAudioBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->startTime() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIOBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOBUFFER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIOBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOBUFFER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QAUDIOBUFFER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
