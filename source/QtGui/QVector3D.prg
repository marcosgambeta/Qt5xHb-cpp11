/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR4D
#endif

CLASS QVector3D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD x
   METHOD y
   METHOD z
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD distanceToPoint
   METHOD distanceToPlane
   METHOD distanceToLine
   METHOD toVector2D
   METHOD toVector4D
   METHOD toPoint
   METHOD toPointF
   METHOD dotProduct
   METHOD crossProduct
   METHOD normal

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVector3D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QVector3D>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QVector3D>
#endif

#include <QtGui/QVector2D>
#include <QtGui/QVector4D>

/*
QVector3D()
*/
void QVector3D_new1()
{
  auto obj = new QVector3D();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(float xpos, float ypos, float zpos)
*/
void QVector3D_new2()
{
  auto obj = new QVector3D( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(const QPoint& point)
*/
void QVector3D_new3()
{
  auto obj = new QVector3D( *PQPOINT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(const QPointF& point)
*/
void QVector3D_new4()
{
  auto obj = new QVector3D( *PQPOINTF(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(const QVector2D& vector)
*/
void QVector3D_new5()
{
  auto obj = new QVector3D( *PQVECTOR2D(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(const QVector2D& vector, float zpos)
*/
void QVector3D_new6()
{
  auto obj = new QVector3D( *PQVECTOR2D(1), PFLOAT(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QVector3D(const QVector4D& vector)
*/
void QVector3D_new7()
{
  auto obj = new QVector3D( *PQVECTOR4D(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QVector3D()
[2]QVector3D(float xpos, float ypos, float zpos)
[3]QVector3D(const QPoint& point)
[4]QVector3D(const QPointF& point)
[5]QVector3D(const QVector2D& vector)
[6]QVector3D(const QVector2D& vector, float zpos)
[7]QVector3D(const QVector4D& vector)
*/

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector3D_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector3D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector3D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector3D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector3D_new5();
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    QVector3D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector3D_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR3D_DELETE )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isNull() const
*/
HB_FUNC_STATIC( QVECTOR3D_ISNULL )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
float x() const
*/
HB_FUNC_STATIC( QVECTOR3D_X )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->x() );
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
float y() const
*/
HB_FUNC_STATIC( QVECTOR3D_Y )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->y() );
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
float z() const
*/
HB_FUNC_STATIC( QVECTOR3D_Z )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->z() );
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
void setX(float x)
*/
HB_FUNC_STATIC( QVECTOR3D_SETX )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setX( PFLOAT(1) );
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
void setY(float y)
*/
HB_FUNC_STATIC( QVECTOR3D_SETY )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setY( PFLOAT(1) );
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
void setZ(float z)
*/
HB_FUNC_STATIC( QVECTOR3D_SETZ )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZ( PFLOAT(1) );
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
float length() const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTH )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->length() );
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
float lengthSquared() const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTHSQUARED )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->lengthSquared() );
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
QVector3D normalized() const
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZED )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector3D( obj->normalized() );
      Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
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
void normalize()
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZE )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->normalize();
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
float distanceToPoint(const QVector3D& point) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPOINT )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      RFLOAT( obj->distanceToPoint( *PQVECTOR3D(1) ) );
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
float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
*/
void QVector3D_distanceToPlane1()
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RFLOAT( obj->distanceToPlane( *PQVECTOR3D(1), *PQVECTOR3D(2) ) );
  }
}

/*
float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const
*/
void QVector3D_distanceToPlane2()
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RFLOAT( obj->distanceToPlane( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) ) );
  }
}

/*
[1]float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
[2]float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const
*/

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_distanceToPlane1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_distanceToPlane2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
float distanceToLine(const QVector3D& point, const QVector3D& direction) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOLINE )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
    {
#endif
      RFLOAT( obj->distanceToLine( *PQVECTOR3D(1), *PQVECTOR3D(2) ) );
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
QVector2D toVector2D() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR2D )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector2D( obj->toVector2D() );
      Qt5xHb::createReturnClass( ptr, "QVECTOR2D", true );
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
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR4D )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector4D( obj->toVector4D() );
      Qt5xHb::createReturnClass( ptr, "QVECTOR4D", true );
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
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINT )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->toPoint() );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
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
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINTF )
{
  auto obj = (QVector3D *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->toPointF() );
      Qt5xHb::createReturnClass( ptr, "QPOINTF", true );
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
static float dotProduct(const QVector3D& v1, const QVector3D& v2)
*/
HB_FUNC_STATIC( QVECTOR3D_DOTPRODUCT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
#endif
    RFLOAT( QVector3D::dotProduct( *PQVECTOR3D(1), *PQVECTOR3D(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QVector3D crossProduct(const QVector3D& v1, const QVector3D& v2)
*/
HB_FUNC_STATIC( QVECTOR3D_CROSSPRODUCT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
#endif
    auto ptr = new QVector3D( QVector3D::crossProduct( *PQVECTOR3D(1), *PQVECTOR3D(2) ) );
    Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
*/
void QVector3D_normal1()
{
  auto ptr = new QVector3D( QVector3D::normal( *PQVECTOR3D(1), *PQVECTOR3D(2) ) );
  Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
}

/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)
*/
void QVector3D_normal2()
{
  auto ptr = new QVector3D( QVector3D::normal( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) ) );
  Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
}

/*
[1]static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
[2]static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)
*/

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_normal1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_normal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR3D_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QVECTOR3D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR3D_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
