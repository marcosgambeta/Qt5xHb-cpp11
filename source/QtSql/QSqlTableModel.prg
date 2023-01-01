/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD setEditStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD setFilter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setRecord
   METHOD sort
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD setData
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll
   METHOD record
   METHOD selectRow

   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlTableModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtSql/QSqlTableModel>
#endif

#include <QtSql/QSqlIndex>

/*
QSqlTableModel( QObject * parent = nullptr, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_NEW )
{
  if( ISBETWEEN(0, 2) && ( ISQOBJECT(1) || HB_ISNIL(1) ) && ( ISQSQLDATABASE(2) || HB_ISNIL(2) ) )
  {
    auto obj = new QSqlTableModel( OPQOBJECT( 1, nullptr ), HB_ISNIL(2) ? QSqlDatabase() : *static_cast<QSqlDatabase*>(Qt5xHb::itemGetPtr(2)) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLTABLEMODEL_DELETE )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSqlDatabase database() const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATABASE )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSqlDatabase( obj->database() );
      Qt5xHb::createReturnClass(ptr, "QSQLDATABASE", true);
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
QSqlTableModel::EditStrategy editStrategy() const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_EDITSTRATEGY )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->editStrategy() );
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
virtual void setEditStrategy( QSqlTableModel::EditStrategy strategy )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETEDITSTRATEGY )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setEditStrategy( static_cast<QSqlTableModel::EditStrategy>( hb_parni(1) ) );
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
int fieldIndex( const QString & fieldName ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FIELDINDEX )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->fieldIndex( PQSTRING(1) ) );
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
QString filter() const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FILTER )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->filter() );
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
virtual void setFilter( const QString & filter )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETFILTER )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setFilter( PQSTRING(1) );
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
bool insertRecord( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTRECORD )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSQLRECORD(2) )
    {
#endif
      RBOOL( obj->insertRecord( PINT(1), *PQSQLRECORD(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC( QSQLTABLEMODEL_ISDIRTY )
{
  if( ISNUMPAR(0) )
  {
    /*
    bool isDirty() const
    */
    auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->isDirty() );
    }

  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    /*
    bool isDirty( const QModelIndex & index ) const
    */
    auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->isDirty( *PQMODELINDEX(1) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSqlIndex primaryKey() const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_PRIMARYKEY )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSqlIndex( obj->primaryKey() );
      Qt5xHb::createReturnClass(ptr, "QSQLINDEX", true);
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
virtual void revertRow( int row )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTROW )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->revertRow( PINT(1) );
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
virtual bool select()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SELECT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->select() );
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
bool setRecord( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETRECORD )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQSQLRECORD(2) )
    {
#endif
      RBOOL( obj->setRecord( PINT(1), *PQSQLRECORD(2) ) );
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
void sort( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SORT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->sort( PINT(1), static_cast<Qt::SortOrder>( hb_parni(2) ) );
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
virtual void setSort( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETSORT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setSort( PINT(1), static_cast<Qt::SortOrder>( hb_parni(2) ) );
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
virtual void setTable( const QString & tableName )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETTABLE )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setTable( PQSTRING(1) );
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
QString tableName() const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_TABLENAME )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->tableName() );
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
void clear()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_CLEAR )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATA )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQMODELINDEX(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      auto ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT( 2, Qt::DisplayRole ) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETDATA )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && ISQMODELINDEX(1) && ISQVARIANT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT( 3, Qt::EditRole ) ) );
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
Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FLAGS )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1) ) );
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
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_HEADERDATA )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      auto ptr = new QVariant( obj->headerData( PINT(1), static_cast<Qt::Orientation>( hb_parni(2) ), OPINT( 3, Qt::DisplayRole ) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTROWS )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( ISQMODELINDEX(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->insertRows( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3)) ) );
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
bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVECOLUMNS )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( ISQMODELINDEX(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->removeColumns( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3)) ) );
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
bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVEROWS )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( ISQMODELINDEX(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->removeRows( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3)) ) );
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
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ROWCOUNT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( ISQMODELINDEX(1) || HB_ISNIL(1) ) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(1)) ) );
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
void revert()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->revert();
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
void revertAll()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTALL )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->revertAll();
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
bool submit()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMIT )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->submit() );
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
bool submitAll()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMITALL )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->submitAll() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC( QSQLTABLEMODEL_RECORD )
{
  if( ISNUMPAR(0) )
  {
    /*
    QSqlRecord record() const
    */
    auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QSqlRecord( obj->record() );
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
    }

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QSqlRecord record( int row ) const
    */
    auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QSqlRecord( obj->record( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual bool selectRow( int row )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SELECTROW )
{
  auto obj = qobject_cast<QSqlTableModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->selectRow( PINT(1) ) );
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
void beforeDelete( int row )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ONBEFOREDELETE )
{
  auto sender = (QSqlTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("beforeDelete(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSqlTableModel::beforeDelete, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QSQLTABLEMODEL");
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void beforeInsert( QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ONBEFOREINSERT )
{
  auto sender = (QSqlTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("beforeInsert(QSqlRecord)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSqlTableModel::beforeInsert, 
                                                              [sender, indexOfCodeBlock]
                                                              (QSqlRecord & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QSQLTABLEMODEL");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QSQLRECORD");
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void beforeUpdate( int row, QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ONBEFOREUPDATE )
{
  auto sender = (QSqlTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("beforeUpdate(int,QSqlRecord)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSqlTableModel::beforeUpdate, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, QSqlRecord & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QSQLTABLEMODEL");
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_object( (void *) &arg2, "QSQLRECORD");
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void primeInsert( int row, QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ONPRIMEINSERT )
{
  auto sender = (QSqlTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("primeInsert(int,QSqlRecord)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSqlTableModel::primeInsert, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, QSqlRecord & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QSQLTABLEMODEL");
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_object( (void *) &arg2, "QSQLRECORD");
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

#pragma ENDDUMP
