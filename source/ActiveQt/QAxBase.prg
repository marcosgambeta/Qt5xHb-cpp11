/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXOBJECT
REQUEST QVARIANT
#endif

CLASS QAxBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs
   METHOD classContext
   METHOD setClassContext

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include <ActiveQt/QAxObject>
#include <QtCore/QStringList>

HB_FUNC_STATIC( QAXBASE_DELETE )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant asVariant() const
*/
HB_FUNC_STATIC( QAXBASE_ASVARIANT )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QVariant( obj->asVariant() );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC( QAXBASE_CLEAR )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString control() const
*/
HB_FUNC_STATIC( QAXBASE_CONTROL )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->control() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void disableClassInfo()
*/
HB_FUNC_STATIC( QAXBASE_DISABLECLASSINFO )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->disableClassInfo();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableEventSink()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEEVENTSINK )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->disableEventSink();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableMetaObject()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEMETAOBJECT )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->disableMetaObject();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN( 1, 9 ) && HB_ISCHAR( 1 ) && ( ISQVARIANT( 2 ) || HB_ISNIL( 2 ) ) && ( ISQVARIANT( 3 ) || HB_ISNIL( 3 ) ) && ( ISQVARIANT( 4 ) || HB_ISNIL( 4 ) ) && ( ISQVARIANT( 5 ) || HB_ISNIL( 5 ) ) && ( ISQVARIANT( 6 ) || HB_ISNIL( 6 ) ) && ( ISQVARIANT( 7 ) || HB_ISNIL( 7 ) ) && ( ISQVARIANT( 8 ) || HB_ISNIL( 8 ) ) && ( ISQVARIANT( 9 ) || HB_ISNIL( 9 ) ) )
  {
    /*
    QVariant dynamicCall( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->dynamicCall( PCONSTCHAR( 1 ), HB_ISNIL( 2 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 2 ) ), HB_ISNIL( 3 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 3 ) ), HB_ISNIL( 4 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 4 ) ), HB_ISNIL( 5 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 5 ) ), HB_ISNIL( 6 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 6 ) ), HB_ISNIL( 7 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 7 ) ), HB_ISNIL( 8 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 8 ) ), HB_ISNIL( 9 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 9 ) ) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
    }

  }
  else if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISARRAY( 2 ) )
  {
    /*
    QVariant dynamicCall( const char * function, QList<QVariant> & vars )
    */
    auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->dynamicCall( PCONSTCHAR( 1 ), PQVARIANTLIST( 2 ) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
    }

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation()
*/
HB_FUNC_STATIC( QAXBASE_GENERATEDOCUMENTATION )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->generateDocumentation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QAXBASE_ISNULL )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool propertyWritable( const char * prop ) const
*/
HB_FUNC_STATIC( QAXBASE_PROPERTYWRITABLE )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      RBOOL( obj->propertyWritable( PCONSTCHAR( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN( 1, 9 ) && HB_ISCHAR( 1 ) && ( ISQVARIANT( 2 ) || HB_ISNIL( 2 ) ) && ( ISQVARIANT( 3 ) || HB_ISNIL( 3 ) ) && ( ISQVARIANT( 4 ) || HB_ISNIL( 4 ) ) && ( ISQVARIANT( 5 ) || HB_ISNIL( 5 ) ) && ( ISQVARIANT( 6 ) || HB_ISNIL( 6 ) ) && ( ISQVARIANT( 7 ) || HB_ISNIL( 7 ) ) && ( ISQVARIANT( 8 ) || HB_ISNIL( 8 ) ) && ( ISQVARIANT( 9 ) || HB_ISNIL( 9 ) ) )
  {
    /*
    QAxObject * querySubObject( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      QAxObject * ptr = obj->querySubObject( PCONSTCHAR( 1 ), HB_ISNIL( 2 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 2 ) ), HB_ISNIL( 3 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 3 ) ), HB_ISNIL( 4 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 4 ) ), HB_ISNIL( 5 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 5 ) ), HB_ISNIL( 6 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 6 ) ), HB_ISNIL( 7 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 7 ) ), HB_ISNIL( 8 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 8 ) ), HB_ISNIL( 9 ) ? QVariant() : *static_cast< QVariant * >( Qt5xHb::itemGetPtr( 9 ) ) );
      Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
    }

  }
  else if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISARRAY( 2 ) )
  {
    /*
    QAxObject * querySubObject( const char * name, QList<QVariant> & vars )
    */
    auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      QAxObject * ptr = obj->querySubObject( PCONSTCHAR( 1 ), PQVARIANTLIST( 2 ) );
      Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
    }

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl( const QString & )
*/
HB_FUNC_STATIC( QAXBASE_SETCONTROL )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      RBOOL( obj->setControl( PQSTRING( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setPropertyWritable( const char * prop, bool ok )
*/
HB_FUNC_STATIC( QAXBASE_SETPROPERTYWRITABLE )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISLOG( 2 ) )
    {
#endif
      obj->setPropertyWritable( PCONSTCHAR( 1 ), PBOOL( 2 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList verbs() const
*/
HB_FUNC_STATIC( QAXBASE_VERBS )
{
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRINGLIST( obj->verbs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
unsigned long classContext() const
*/
HB_FUNC_STATIC( QAXBASE_CLASSCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RUNSIGNEDLONG( obj->classContext() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setClassContext( unsigned long classContext )
*/
HB_FUNC_STATIC( QAXBASE_SETCLASSCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = static_cast< QAxBase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setClassContext( PUNSIGNEDLONG( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QAXBASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QAXBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QAXBASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
