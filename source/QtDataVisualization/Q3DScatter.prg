/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTER3DSERIES
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DScatter INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DScatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DScatter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <Q3DScatter>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DScatter(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DSCATTER_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    Q3DScatter * o = new Q3DScatter ( ISNIL(1)? Q_NULLPTR : (QSurfaceFormat *) _qt5xhb_itemGetPtr(1), OPQWINDOW(2,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DScatter()
*/
HB_FUNC_STATIC( Q3DSCATTER_DELETE )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QValue3DAxis *axisX() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISX )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisX ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAxisX(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISX )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisX ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QValue3DAxis *axisY() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISY )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisY ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAxisY(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISY )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisY ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QValue3DAxis *axisZ() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISZ )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisZ ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAxisZ(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISZ )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisZ ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScatter3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DSCATTER_SELECTEDSERIES )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScatter3DSeries * ptr = obj->selectedSeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCATTER3DSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void addSeries(QScatter3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSCATTER_ADDSERIES )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCATTER3DSERIES(1) )
    {
#endif
      obj->addSeries ( PQSCATTER3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeSeries(QScatter3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSCATTER_REMOVESERIES )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCATTER3DSERIES(1) )
    {
#endif
      obj->removeSeries ( PQSCATTER3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QScatter3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DSCATTER_SERIESLIST )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QScatter3DSeries *> list = obj->seriesList ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSCATTER3DSERIES" );
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
          hb_itemPutPtr( pItem, (QScatter3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSCATTER3DSERIES", HB_ERR_ARGS_BASEPARAMS );
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
}

/*
void addAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_ADDAXIS )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->addAxis ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_RELEASEAXIS )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->releaseAxis ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QValue3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXES )
{
  Q3DScatter * obj = (Q3DScatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QValue3DAxis *> list = obj->axes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVALUE3DAXIS" );
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
          hb_itemPutPtr( pItem, (QValue3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS );
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
}

using namespace QtDataVisualization;

/*
void axisXChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSCATTER_ONAXISXCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "axisXChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DScatter::axisXChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisXChanged(QValue3DAxis*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSCATTER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisXChanged(QValue3DAxis*)", connection );

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
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "axisXChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisXChanged(QValue3DAxis*)" ) );

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
void axisYChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSCATTER_ONAXISYCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "axisYChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DScatter::axisYChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisYChanged(QValue3DAxis*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSCATTER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisYChanged(QValue3DAxis*)", connection );

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
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "axisYChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisYChanged(QValue3DAxis*)" ) );

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
void axisZChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSCATTER_ONAXISZCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "axisZChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DScatter::axisZChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisZChanged(QValue3DAxis*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSCATTER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisZChanged(QValue3DAxis*)", connection );

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
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "axisZChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisZChanged(QValue3DAxis*)" ) );

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
void selectedSeriesChanged( QScatter3DSeries * series )
*/
HB_FUNC_STATIC( Q3DSCATTER_ONSELECTEDSERIESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "selectedSeriesChanged(QScatter3DSeries*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DScatter::selectedSeriesChanged, 
                                                              [sender]
                                                              (QScatter3DSeries * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectedSeriesChanged(QScatter3DSeries*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSCATTER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QSCATTER3DSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "selectedSeriesChanged(QScatter3DSeries*)", connection );

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
    Q3DScatter * sender = (Q3DScatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "selectedSeriesChanged(QScatter3DSeries*)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectedSeriesChanged(QScatter3DSeries*)" ) );

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
