/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QLibrary INHERIT QObject

   METHOD new
   METHOD delete
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve
   METHOD isLibrary

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLibrary
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QLibrary>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QLibrary>
#endif

/*
QLibrary(QObject *parent = nullptr)
*/
void QLibrary_new1()
{
  auto obj = new QLibrary( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QLibrary(const QString& fileName, QObject *parent = nullptr)
*/
void QLibrary_new2()
{
  auto obj = new QLibrary( PQSTRING(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = nullptr)
*/
void QLibrary_new3()
{
  auto obj = new QLibrary( PQSTRING(1), PINT(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = nullptr)
*/
void QLibrary_new4()
{
  auto obj = new QLibrary( PQSTRING(1), PQSTRING(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QLibrary(QObject *parent = nullptr)
[2]QLibrary(const QString& fileName, QObject *parent = nullptr)
[3]QLibrary(const QString& fileName, int verNum, QObject *parent = nullptr)
[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QLibrary_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QLibrary_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLIBRARY_DELETE )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
bool load()
*/
HB_FUNC_STATIC( QLIBRARY_LOAD )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->load() );
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
bool unload()
*/
HB_FUNC_STATIC( QLIBRARY_UNLOAD )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->unload() );
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
bool isLoaded() const
*/
HB_FUNC_STATIC( QLIBRARY_ISLOADED )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLoaded() );
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
void setFileName(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAME )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setFileName( PQSTRING(1) );
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
QString fileName() const
*/
HB_FUNC_STATIC( QLIBRARY_FILENAME )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
void QLibrary_setFileNameAndVersion1()
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setFileNameAndVersion( PQSTRING(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
void QLibrary_setFileNameAndVersion2()
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setFileNameAndVersion( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setFileNameAndVersion(const QString &fileName, int verNum)
[2]void setFileNameAndVersion(const QString &fileName, const QString &version)
*/

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QLibrary_setFileNameAndVersion1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_setFileNameAndVersion2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLIBRARY_ERRORSTRING )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
void setLoadHints(LoadHints hints)
*/
HB_FUNC_STATIC( QLIBRARY_SETLOADHINTS )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLoadHints( (QLibrary::LoadHints) hb_parni(1) );
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
LoadHints loadHints() const
*/
HB_FUNC_STATIC( QLIBRARY_LOADHINTS )
{
  auto obj = (QLibrary *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->loadHints() );
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
QFunctionPointer resolve(const char *symbol)
*/

/*
static QFunctionPointer resolve(const QString &fileName, const char *symbol) // TODO: corrigir implementacao do metodo
*/

/*
static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol) // TODO: corrigir implementacao do metodo
*/

/*
static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol) // TODO: corrigir implementacao do metodo
*/

/*
[1]QFunctionPointer resolve(const char *symbol)
[2]static QFunctionPointer resolve(const QString &fileName, const char *symbol)
[3]static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
[4]static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)
*/

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

/*
static bool isLibrary(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_ISLIBRARY )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    RBOOL( QLibrary::isLibrary( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
