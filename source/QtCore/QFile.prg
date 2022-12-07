/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QFileDevice

   METHOD new
   METHOD delete
   METHOD copy
   METHOD error
   METHOD exists
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link
   METHOD open
   METHOD permissions
   METHOD remove
   METHOD rename
   METHOD resize
   METHOD setFileName
   METHOD setPermissions
   METHOD symLinkTarget
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size
   METHOD decodeName
   METHOD encodeName
   METHOD readLink
   METHOD moveToTrash

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QFile>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QFile>
#endif

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QFile()
    */
    auto obj = new QFile();
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QFile( const QString & name )
    */
    auto obj = new QFile( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    QFile( QObject * parent )
    */
    auto obj = new QFile( PQOBJECT(1) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2) )
  {
    /*
    QFile( const QString & name, QObject * parent )
    */
    auto obj = new QFile( PQSTRING(1), PQOBJECT(2) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_DELETE )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool copy( const QString & newName )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->copy( PQSTRING(1) ) );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    static bool copy( const QString & fileName, const QString & newName )
    */

    RBOOL( QFile::copy( PQSTRING(1), PQSTRING(2) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QFileDevice::FileError error() const
*/
HB_FUNC_STATIC( QFILE_ERROR )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    /*
    bool exists() const
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->exists() );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static bool exists( const QString & fileName )
    */

    RBOOL( QFile::exists( PQSTRING(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString fileName() const
*/
HB_FUNC_STATIC( QFILE_FILENAME )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileName() );
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
bool flush()
*/
HB_FUNC_STATIC( QFILE_FLUSH )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush() );
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
int handle() const
*/
HB_FUNC_STATIC( QFILE_HANDLE )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->handle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool link( const QString & linkName )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->link( PQSTRING(1) ) );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    static bool link( const QString & fileName, const QString & linkName )
    */

    RBOOL( QFile::link( PQSTRING(1), PQSTRING(2) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    bool open( QFile::OpenMode flags )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->open( static_cast<QFile::OpenMode>( hb_parni(1) ) ) );
    }

  }
  else if( ISBETWEEN(2, 3) && HB_ISPOINTER(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    bool open( FILE * f, QFile::OpenMode ioFlags, QFile::FileHandleFlags handleFlags = QFile::DontCloseHandle )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->open( static_cast< FILE*>( hb_parptr(1) ), static_cast<QFile::OpenMode>( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QFile::FileHandleFlags >( QFile::DontCloseHandle ) : static_cast<QFile::FileHandleFlags >( hb_parni(3) ) ) );
    }

  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    bool open( int fd, QFile::OpenMode ioFlags, QFile::FileHandleFlags handleFlags = QFile::DontCloseHandle )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->open( PINT(1), static_cast<QFile::OpenMode>( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QFile::FileHandleFlags >( QFile::DontCloseHandle ) : static_cast<QFile::FileHandleFlags >( hb_parni(3) ) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    /*
    QFile::Permissions permissions() const
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RENUM( obj->permissions() );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    static QFile::Permissions permissions( const QString & fileName )
    */

    RENUM( QFile::permissions( PQSTRING(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    /*
    bool remove()
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->remove() );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static bool remove( const QString & fileName )
    */

    RBOOL( QFile::remove( PQSTRING(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool rename( const QString & newName )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->rename( PQSTRING(1) ) );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    static bool rename( const QString & oldName, const QString & newName )
    */

    RBOOL( QFile::rename( PQSTRING(1), PQSTRING(2) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    bool resize( qint64 sz )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->resize( PQINT64(1) ) );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    static bool resize( const QString & fileName, qint64 sz )
    */

    RBOOL( QFile::resize( PQSTRING(1), PQINT64(2) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setFileName( const QString & name )
*/
HB_FUNC_STATIC( QFILE_SETFILENAME )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setFileName( PQSTRING(1) );
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

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    bool setPermissions( QFile::Permissions permissions )
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->setPermissions( static_cast<QFile::Permissions>( hb_parni(1) ) ) );
    }

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    static bool setPermissions( const QString & fileName, QFile::Permissions permissions )
    */

    RBOOL( QFile::setPermissions( PQSTRING(1), static_cast<QFile::Permissions>( hb_parni(2) ) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    /*
    QString symLinkTarget() const
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RQSTRING( obj->symLinkTarget() );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QString symLinkTarget( const QString & fileName )
    */

    RQSTRING( QFile::symLinkTarget( PQSTRING(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool unmap( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->unmap( ( uchar * ) hb_parc(1) ) );
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
void unsetError()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unsetError();
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
virtual bool atEnd() const
*/
HB_FUNC_STATIC( QFILE_ATEND )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd() );
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
virtual void close()
*/
HB_FUNC_STATIC( QFILE_CLOSE )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
virtual bool isSequential() const
*/
HB_FUNC_STATIC( QFILE_ISSEQUENTIAL )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
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
virtual qint64 pos() const
*/
HB_FUNC_STATIC( QFILE_POS )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pos() );
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
virtual bool seek( qint64 pos )
*/
HB_FUNC_STATIC( QFILE_SEEK )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->seek( PQINT64(1) ) );
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
qint64 size() const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->size() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QString decodeName( const QByteArray & localFileName )
    */

    RQSTRING( QFile::decodeName( *PQBYTEARRAY(1) ) );

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QString decodeName( const char * localFileName )
    */

    RQSTRING( QFile::decodeName( PCONSTCHAR(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QByteArray encodeName( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_ENCODENAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    auto ptr = new QByteArray( QFile::encodeName( PQSTRING(1) ) );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QFILE_READLINK )
{
  if( ISNUMPAR(0) )
  {
    /*
    QString readLink() const
    */
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RQSTRING( obj->readLink() );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QString readLink( const QString & fileName )
    */

    RQSTRING( QFile::readLink( PQSTRING(1) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILE_MOVETOTRASH )
{
  if( ISNUMPAR(0) )
  {
    /*
    bool moveToTrash()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,15,0))
    auto obj = qobject_cast<QFile*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->moveToTrash() );
    }
#endif

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQCHAR(2) || HB_ISNIL(2) ) )
  {
    /*
    static bool moveToTrash( const QString & fileName, QString * pathInTrash = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,15,0))

    RBOOL( QFile::moveToTrash( PQSTRING(1), nullptr ) );
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
