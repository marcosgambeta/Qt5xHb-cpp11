/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QDIR
REQUEST QFILEICONPROVIDER
REQUEST QFILEINFO
REQUEST QICON
REQUEST QMIMEDATA
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QFileSystemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD fileIcon
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD filter
   METHOD setFilter
   METHOD iconProvider
   METHOD setIconProvider
   METHOD index
   METHOD isDir
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD lastModified
   METHOD mkdir
   METHOD myComputer
   METHOD nameFilterDisables
   METHOD setNameFilterDisables
   METHOD nameFilters
   METHOD setNameFilters
   METHOD permissions
   METHOD remove
   METHOD resolveSymlinks
   METHOD setResolveSymlinks
   METHOD rmdir
   METHOD rootDirectory
   METHOD rootPath
   METHOD setRootPath
   METHOD size
   METHOD type
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD setData
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD rowCount
   METHOD sort
   METHOD supportedDropActions

   METHOD onDirectoryLoaded
   METHOD onFileRenamed
   METHOD onRootPathChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileSystemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QFileSystemModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QFileSystemModel>
#endif

#include <QtCore/QDateTime>
#include <QtCore/QMimeData>

/*
QFileSystemModel( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QFileSystemModel( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILESYSTEMMODEL_DELETE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QIcon fileIcon( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEICON )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QIcon( obj->fileIcon( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
QFileInfo fileInfo( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEINFO )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QFileInfo( obj->fileInfo( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QFILEINFO", true);
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
QString fileName( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILENAME )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->fileName( *PQMODELINDEX(1) ) );
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
QString filePath( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEPATH )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->filePath( *PQMODELINDEX(1) ) );
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
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILTER )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->filter() );
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
void setFilter( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETFILTER )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFilter( static_cast<QDir::Filters>( hb_parni(1) ) );
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
QFileIconProvider * iconProvider() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ICONPROVIDER )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFileIconProvider * ptr = obj->iconProvider();
      Qt5xHb::createReturnClass(ptr, "QFILEICONPROVIDER", false);
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
void setIconProvider( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETICONPROVIDER )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFILEICONPROVIDER(1) )
    {
#endif
      obj->setIconProvider( PQFILEICONPROVIDER(1) );
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

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    QModelIndex index( const QString & path, int column = 0 ) const
    */
    auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QModelIndex( obj->index( PQSTRING(1), OPINT( 2, 0 ) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }

  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( ISQMODELINDEX(3) || HB_ISNIL(3) ) )
  {
    /*
    QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
    */
    auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(3)) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isDir( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISDIR )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->isDir( *PQMODELINDEX(1) ) );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISREADONLY )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
void setReadOnly( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETREADONLY )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setReadOnly( PBOOL(1) );
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
QDateTime lastModified( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_LASTMODIFIED )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QDateTime( obj->lastModified( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
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
QModelIndex mkdir( const QModelIndex & parent, const QString & name )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MKDIR )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && HB_ISCHAR(2) )
    {
#endif
      auto ptr = new QModelIndex( obj->mkdir( *PQMODELINDEX(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QVariant myComputer( int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MYCOMPUTER )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      auto ptr = new QVariant( obj->myComputer( OPINT( 1, Qt::DisplayRole ) ) );
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
bool nameFilterDisables() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERDISABLES )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->nameFilterDisables() );
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
void setNameFilterDisables( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERDISABLES )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setNameFilterDisables( PBOOL(1) );
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
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->nameFilters() );
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
void setNameFilters( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setNameFilters( PQSTRINGLIST(1) );
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
QFile::Permissions permissions( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PERMISSIONS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->permissions( *PQMODELINDEX(1) ) );
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
bool remove( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_REMOVE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->remove( *PQMODELINDEX(1) ) );
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
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RESOLVESYMLINKS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->resolveSymlinks() );
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
void setResolveSymlinks( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETRESOLVESYMLINKS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setResolveSymlinks( PBOOL(1) );
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
bool rmdir( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RMDIR )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->rmdir( *PQMODELINDEX(1) ) );
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
QDir rootDirectory() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTDIRECTORY )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDir( obj->rootDirectory() );
      Qt5xHb::createReturnClass(ptr, "QDIR", true);
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
QString rootPath() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTPATH )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rootPath() );
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
QModelIndex setRootPath( const QString & newPath )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETROOTPATH )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->setRootPath( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
qint64 size( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SIZE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQINT64( obj->size( *PQMODELINDEX(1) ) );
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
QString type( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_TYPE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->type( *PQMODELINDEX(1) ) );
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
bool canFetchMore( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_CANFETCHMORE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->canFetchMore( *PQMODELINDEX(1) ) );
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
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_COLUMNCOUNT )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( ISQMODELINDEX(1) || HB_ISNIL(1) ) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(1)) ) );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_DATA )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool setData( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETDATA )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_DROPMIMEDATA )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData( PQMIMEDATA(1), static_cast<Qt::DropAction>( hb_parni(2) ), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
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
void fetchMore( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FETCHMORE )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      obj->fetchMore( *PQMODELINDEX(1) );
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
Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FLAGS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool hasChildren( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_HASCHILDREN )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( ISQMODELINDEX(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->hasChildren( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>(Qt5xHb::itemGetPtr(1)) ) );
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
HB_FUNC_STATIC( QFILESYSTEMMODEL_HEADERDATA )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QMimeData * mimeData( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMEDATA )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QModelIndexList par1;
      PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QModelIndex*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0) ) );
      }
      QMimeData * ptr = obj->mimeData( par1 );
      Qt5xHb::createReturnQObjectClass(ptr, "QMIMEDATA");
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
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMETYPES )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->mimeTypes() );
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
QModelIndex parent( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PARENT )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROWCOUNT )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SORT )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->sort( PINT(1), HB_ISNIL(2) ? static_cast<Qt::SortOrder >( Qt::AscendingOrder ) : static_cast<Qt::SortOrder >( hb_parni(2) ) );
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
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SUPPORTEDDROPACTIONS )
{
  auto obj = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedDropActions() );
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
void directoryLoaded( const QString & path )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ONDIRECTORYLOADED )
{
  auto sender = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("directoryLoaded(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QFileSystemModel::directoryLoaded,
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QFILESYSTEMMODEL");
            PHB_ITEM pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void fileRenamed( const QString & path, const QString & oldName, const QString & newName )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ONFILERENAMED )
{
  auto sender = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("fileRenamed(QString,QString,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QFileSystemModel::fileRenamed,
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1, const QString & arg2, const QString & arg3) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QFILESYSTEMMODEL");
            PHB_ITEM pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
            PHB_ITEM pArg2 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg2));
            PHB_ITEM pArg3 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg3));
            hb_vmEvalBlockV(cb, 4, pSender, pArg1, pArg2, pArg3);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
            hb_itemRelease(pArg3);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void rootPathChanged( const QString & newPath )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ONROOTPATHCHANGED )
{
  auto sender = qobject_cast<QFileSystemModel*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rootPathChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QFileSystemModel::rootPathChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QFILESYSTEMMODEL");
            PHB_ITEM pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
