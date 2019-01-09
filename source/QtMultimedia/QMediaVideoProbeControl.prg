/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaVideoProbeControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaVideoProbeControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QMediaVideoProbeControl>
#endif

#include <QVideoFrame>

/*
explicit QMediaVideoProbeControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QMediaVideoProbeControl()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_DELETE )
{
  QMediaVideoProbeControl * obj = (QMediaVideoProbeControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
void flush()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONFLUSH )
{
  if( hb_pcount() == 1 )
  {
    QMediaVideoProbeControl * sender = (QMediaVideoProbeControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "flush()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaVideoProbeControl::flush, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "flush()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMEDIAVIDEOPROBECONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "flush()", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QMediaVideoProbeControl * sender = (QMediaVideoProbeControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "flush()" );

      QObject::disconnect( Signals2_get_connection( sender, "flush()" ) );

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
}

/*
void videoFrameProbed( const QVideoFrame & frame )
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONVIDEOFRAMEPROBED )
{
  if( hb_pcount() == 1 )
  {
    QMediaVideoProbeControl * sender = (QMediaVideoProbeControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "videoFrameProbed(QVideoFrame)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMediaVideoProbeControl::videoFrameProbed, 
                                                              [sender]
                                                              (const QVideoFrame & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "videoFrameProbed(QVideoFrame)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMEDIAVIDEOPROBECONTROL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QVIDEOFRAME" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "videoFrameProbed(QVideoFrame)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    QMediaVideoProbeControl * sender = (QMediaVideoProbeControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "videoFrameProbed(QVideoFrame)" );

      QObject::disconnect( Signals2_get_connection( sender, "videoFrameProbed(QVideoFrame)" ) );

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
}

#pragma ENDDUMP
