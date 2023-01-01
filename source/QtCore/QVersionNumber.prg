/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVersionNumber

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNormalized
   METHOD isNull
   METHOD isPrefixOf
   METHOD majorVersion
   METHOD microVersion
   METHOD minorVersion
   METHOD normalized
   METHOD segmentAt
   METHOD segmentCount
   METHOD segments
   METHOD toString
   METHOD commonPrefix
   METHOD compare
   METHOD fromString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVersionNumber
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtCore/QVersionNumber>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtCore/QVersionNumber>
#endif
#endif

HB_FUNC( QVERSIONNUMBER_NEW )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    QVersionNumber( int maj, int min, int mic )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
    auto obj = new QVersionNumber( PINT(1), PINT(2), PINT(3) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QVersionNumber( int maj, int min )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
    auto obj = new QVersionNumber( PINT(1), PINT(2) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QVersionNumber( int maj )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
    auto obj = new QVersionNumber( PINT(1) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(0) )
  {
    /*
    QVersionNumber()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
    auto obj = new QVersionNumber();
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QVERSIONNUMBER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isNormalized() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_ISNORMALIZED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNormalized() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isPrefixOf( const QVersionNumber & other ) const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_ISPREFIXOF )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVERSIONNUMBER(1) )
    {
#endif
      RBOOL( obj->isPrefixOf( *PQVERSIONNUMBER(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int majorVersion() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_MAJORVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->majorVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int microVersion() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_MICROVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->microVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int minorVersion() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_MINORVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minorVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QVersionNumber normalized() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_NORMALIZED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVersionNumber( obj->normalized() );
      Qt5xHb::createReturnClass(ptr, "QVERSIONNUMBER", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int segmentAt( int index ) const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_SEGMENTAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->segmentAt( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int segmentCount() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_SEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->segmentCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QVector<int> segments() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_SEGMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QVector<int> list = obj->segments();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( const auto & item : list )
      {
        PHB_ITEM pItem = hb_itemPutNI(nullptr, item);
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease( pArray );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QVERSIONNUMBER_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = static_cast<QVersionNumber*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
static QVersionNumber commonPrefix( const QVersionNumber & v1, const QVersionNumber & v2 )
*/
HB_FUNC_STATIC( QVERSIONNUMBER_COMMONPREFIX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQVERSIONNUMBER(1) && ISQVERSIONNUMBER(2) )
  {
#endif
    auto ptr = new QVersionNumber( QVersionNumber::commonPrefix( *PQVERSIONNUMBER(1), *PQVERSIONNUMBER(2) ) );
    Qt5xHb::createReturnClass(ptr, "QVERSIONNUMBER", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static int compare( const QVersionNumber & v1, const QVersionNumber & v2 )
*/
HB_FUNC_STATIC( QVERSIONNUMBER_COMPARE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQVERSIONNUMBER(1) && ISQVERSIONNUMBER(2) )
  {
#endif
    RINT( QVersionNumber::compare( *PQVERSIONNUMBER(1), *PQVERSIONNUMBER(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QVersionNumber fromString( const QString & string, int * suffixIndex = nullptr )
*/
HB_FUNC_STATIC( QVERSIONNUMBER_FROMSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
#endif
    int par2;
    auto ptr = new QVersionNumber( QVersionNumber::fromString( PQSTRING(1), &par2 ) );
    Qt5xHb::createReturnClass(ptr, "QVERSIONNUMBER", true);
    hb_storni( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QVERSIONNUMBER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QVERSIONNUMBER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVERSIONNUMBER_NEWFROM );
}

HB_FUNC_STATIC( QVERSIONNUMBER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVERSIONNUMBER_NEWFROM );
}

HB_FUNC_STATIC( QVERSIONNUMBER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QVERSIONNUMBER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
