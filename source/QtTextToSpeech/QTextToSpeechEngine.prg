/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVOICE
#endif

CLASS QTextToSpeechEngine INHERIT QObject

   METHOD delete
   METHOD availableLocales
   METHOD availableVoices
   METHOD say
   METHOD stop
   METHOD pause
   METHOD resume
   METHOD rate
   METHOD setRate
   METHOD pitch
   METHOD setPitch
   METHOD locale
   METHOD setLocale
   METHOD volume
   METHOD setVolume
   METHOD voice
   METHOD setVoice
   METHOD state

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextToSpeechEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QTextToSpeechEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QTextToSpeechEngine>
#endif
#endif

#include <QtCore/QVector>
#include <QtCore/QLocale>
#include <QtTextToSpeech/QVoice>

/*
explicit QTextToSpeechEngine(QObject *parent = nullptr) (abstract)
*/

/*
~QTextToSpeechEngine()
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QVector<QLocale> availableLocales() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_AVAILABLELOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QLocale> list = obj->availableLocales ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLOCALE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLOCALE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
virtual QVector<QVoice> availableVoices() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_AVAILABLEVOICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QVoice> list = obj->availableVoices ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVOICE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QVoice *) new QVoice ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVOICE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
virtual void say(const QString &text) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SAY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->say ( PQSTRING(1) );
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
virtual void stop() = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
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
virtual void pause() = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_PAUSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pause ();
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
virtual void resume() = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume ();
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
virtual double rate() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_RATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->rate () );
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
virtual bool setRate(double rate) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SETRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setRate ( PDOUBLE(1) ) );
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
virtual double pitch() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_PITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->pitch () );
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
virtual bool setPitch(double pitch) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SETPITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setPitch ( PDOUBLE(1) ) );
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
virtual QLocale locale() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->locale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
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
virtual bool setLocale(const QLocale &locale) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      RBOOL( obj->setLocale ( *PQLOCALE(1) ) );
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
virtual double volume() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_VOLUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->volume () );
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
virtual bool setVolume(double volume) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SETVOLUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setVolume ( PDOUBLE(1) ) );
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
virtual QVoice voice() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_VOICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVoice * ptr = new QVoice( obj->voice () );
      _qt5xhb_createReturnClass ( ptr, "QVOICE", true );
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
virtual bool setVoice(const QVoice &voice) = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_SETVOICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVOICE(1) )
    {
#endif
      RBOOL( obj->setVoice ( *PQVOICE(1) ) );
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
virtual QTextToSpeech::State state() const = 0
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * obj = (QTextToSpeechEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
static QVoice createVoice(const QString &name, QVoice::Gender gender, QVoice::Age age, const QVariant &data) [protected]
*/

/*
static QVariant voiceData(const QVoice &voice) [protected]
*/

/*
void stateChanged( QTextToSpeech::State state )
*/
HB_FUNC_STATIC( QTEXTTOSPEECHENGINE_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechEngine * sender = (QTextToSpeechEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QTextToSpeech::State)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QTextToSpeechEngine::stateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QTextToSpeech::State arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QTEXTTOSPEECHENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
