/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIESERIES
REQUEST QPIESLICE
#endif

CLASS QPieLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete
   METHOD type
   METHOD series
   METHOD slice

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPieLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieLegendMarker>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieLegendMarker>
#endif
#endif

using namespace QtCharts;

/*
explicit QPieLegendMarker(QPieSeries *series, QPieSlice *slice, QLegend *legend, QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(3,4) && ISQPIESERIES(1) && ISQPIESLICE(2) && ISQLEGEND(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QPieLegendMarker * o = new QPieLegendMarker ( PQPIESERIES(1), PQPIESLICE(2), PQLEGEND(3), OPQOBJECT(4,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QPieLegendMarker(QPieLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QPieLegendMarker()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual LegendMarkerType type()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
virtual QPieSeries* series()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPieSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESERIES" );
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
QPieSlice* slice()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_SLICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPieSlice * ptr = obj->slice ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESLICE" );
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

#pragma ENDDUMP
