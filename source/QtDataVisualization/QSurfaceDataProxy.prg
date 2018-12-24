/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QSURFACEDATAITEM
#endif

CLASS QSurfaceDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD columnCount
   METHOD series
   METHOD itemAt
   METHOD setItem
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnCountChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QSurfaceDataProxy>
#endif

#include <QSurface3DSeries>

using namespace QtDataVisualization;

/*
explicit QSurfaceDataProxy(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSurfaceDataProxy * o = new QSurfaceDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
explicit QSurfaceDataProxy(QSurfaceDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QSurfaceDataProxy()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_DELETE )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

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
int rowCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ROWCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount () );
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
int columnCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_COLUMNCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount () );
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
QSurface3DSeries *series() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_SERIES )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSURFACE3DSERIES" );
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
const QSurfaceDataArray *array() const
*/

/*
const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
*/
void QSurfaceDataProxy_itemAt1 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QSurfaceDataItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEDATAITEM", false );
  }
}

/*
const QSurfaceDataItem *itemAt(const QPoint &position) const
*/
void QSurfaceDataProxy_itemAt2 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QSurfaceDataItem * ptr = obj->itemAt ( *PQPOINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEDATAITEM", false );
  }
}

//[1]const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
//[2]const QSurfaceDataItem *itemAt(const QPoint &position) const

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSurfaceDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QSurfaceDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resetArray(QSurfaceDataArray *newArray)
*/

/*
void setRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void setRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem1 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( PINT(1), PINT(2), *PQSURFACEDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem(const QPoint &position, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem2 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( *PQPOINT(1), *PQSURFACEDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
//[2]void setItem(const QPoint &position, const QSurfaceDataItem &item)

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    QSurfaceDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    QSurfaceDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int addRow(QSurfaceDataRow *row)
*/

/*
int addRows(const QSurfaceDataArray &rows)
*/

/*
void insertRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void insertRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void removeRows(int rowIndex, int removeCount)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_REMOVEROWS )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeRows ( PINT(1), PINT(2) );
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

using namespace QtDataVisualization;

/*
void arrayReset()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONARRAYRESET )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "arrayReset()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::arrayReset, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "arrayReset()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "arrayReset()", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "arrayReset()" );

      QObject::disconnect( Signals2_get_connection( sender, "arrayReset()" ) );

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
void columnCountChanged( int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONCOLUMNCOUNTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "columnCountChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::columnCountChanged, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "columnCountChanged(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "columnCountChanged(int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "columnCountChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "columnCountChanged(int)" ) );

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
void itemChanged( int rowIndex, int columnIndex )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONITEMCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "itemChanged(int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::itemChanged, [sender](int arg1, int arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "itemChanged(int,int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "itemChanged(int,int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "itemChanged(int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "itemChanged(int,int)" ) );

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
void rowCountChanged( int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWCOUNTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowCountChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::rowCountChanged, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowCountChanged(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "rowCountChanged(int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowCountChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowCountChanged(int)" ) );

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
void rowsAdded( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSADDED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowsAdded(int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::rowsAdded, [sender](int arg1, int arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowsAdded(int,int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "rowsAdded(int,int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowsAdded(int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowsAdded(int,int)" ) );

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
void rowsChanged( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowsChanged(int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::rowsChanged, [sender](int arg1, int arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowsChanged(int,int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "rowsChanged(int,int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowsChanged(int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowsChanged(int,int)" ) );

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
void rowsInserted( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSINSERTED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowsInserted(int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::rowsInserted, [sender](int arg1, int arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowsInserted(int,int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "rowsInserted(int,int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowsInserted(int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowsInserted(int,int)" ) );

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
void rowsRemoved( int startIndex, int count )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSREMOVED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowsRemoved(int,int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::rowsRemoved, [sender](int arg1, int arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowsRemoved(int,int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "rowsRemoved(int,int)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowsRemoved(int,int)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowsRemoved(int,int)" ) );

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
void seriesChanged( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ONSERIESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "seriesChanged(QSurface3DSeries*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QSurfaceDataProxy::seriesChanged, [sender](QSurface3DSeries* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "seriesChanged(QSurface3DSeries*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QSURFACE3DSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "seriesChanged(QSurface3DSeries*)", connection );

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
    QSurfaceDataProxy * sender = (QSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "seriesChanged(QSurface3DSeries*)" );

      QObject::disconnect( Signals2_get_connection( sender, "seriesChanged(QSurface3DSeries*)" ) );

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
