/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLINE
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QPOLYGON
REQUEST QPOLYGONF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGION
#endif

CLASS QMatrix

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setMatrix
   METHOD m11
   METHOD m12
   METHOD m21
   METHOD m22
   METHOD dx
   METHOD dy
   METHOD map1
   METHOD map2
   METHOD map
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD isIdentity
   METHOD translate
   METHOD scale
   METHOD shear
   METHOD rotate
   METHOD isInvertible
   METHOD determinant
   METHOD inverted

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMatrix
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMatrix>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QMatrix>
#endif

#include <QPainterPath>

/*
QMatrix(Qt::Initialization)
*/
void QMatrix_new1 ()
{
  QMatrix * o = new QMatrix ( (Qt::Initialization) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMatrix()
*/
void QMatrix_new2 ()
{
  QMatrix * o = new QMatrix ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
*/
void QMatrix_new3 ()
{
  QMatrix * o = new QMatrix ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMatrix(const QMatrix &matrix)
*/
void QMatrix_new4 ()
{
  QMatrix * o = new QMatrix ( *PQMATRIX(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QMatrix(Qt::Initialization)
//[2]QMatrix()
//[3]QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
//[4]QMatrix(const QMatrix &matrix)

HB_FUNC_STATIC( QMATRIX_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QMatrix_new2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMatrix_new3();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QMatrix_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMATRIX_DELETE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QMATRIX_SETMATRIX )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
    {
#endif
      obj->setMatrix ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
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
qreal m11() const
*/
HB_FUNC_STATIC( QMATRIX_M11 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m11 () );
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
qreal m12() const
*/
HB_FUNC_STATIC( QMATRIX_M12 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m12 () );
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
qreal m21() const
*/
HB_FUNC_STATIC( QMATRIX_M21 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m21 () );
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
qreal m22() const
*/
HB_FUNC_STATIC( QMATRIX_M22 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m22 () );
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
qreal dx() const
*/
HB_FUNC_STATIC( QMATRIX_DX )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dx () );
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
qreal dy() const
*/
HB_FUNC_STATIC( QMATRIX_DY )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dy () );
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
void map(int x, int y, int *tx, int *ty) const
*/
HB_FUNC_STATIC( QMATRIX_MAP1 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      int par3;
int par4;
      obj->map ( PINT(1), PINT(2), &par3, &par4 );
      hb_storni( par3, 3 );
hb_storni( par4, 4 );
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
void map(qreal x, qreal y, qreal *tx, qreal *ty) const
*/
HB_FUNC_STATIC( QMATRIX_MAP2 )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      qreal par3;
qreal par4;
      obj->map ( PQREAL(1), PQREAL(2), &par3, &par4 );
      hb_stornd( par3, 3 );
hb_stornd( par4, 4 );
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
QPoint map(const QPoint &p) const
*/
void QMatrix_map3 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPoint * ptr = new QPoint( obj->map ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPointF map(const QPointF&p) const
*/
void QMatrix_map4 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPointF * ptr = new QPointF( obj->map ( *PQPOINTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QLine map(const QLine &l) const
*/
void QMatrix_map5 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QLine * ptr = new QLine( obj->map ( *PQLINE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}

/*
QLineF map(const QLineF &l) const
*/
void QMatrix_map6 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QLineF * ptr = new QLineF( obj->map ( *PQLINEF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QPolygon map(const QPolygon &a) const
*/
void QMatrix_map7 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPolygon * ptr = new QPolygon( obj->map ( *PQPOLYGON(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPolygonF map(const QPolygonF &a) const
*/
void QMatrix_map8 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPolygonF * ptr = new QPolygonF( obj->map ( *PQPOLYGONF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QRegion map(const QRegion &r) const
*/
void QMatrix_map9 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QRegion * ptr = new QRegion( obj->map ( *PQREGION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QPainterPath map(const QPainterPath &p) const
*/
void QMatrix_map10 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPainterPath * ptr = new QPainterPath( obj->map ( *PQPAINTERPATH(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

//[1]void map(int x, int y, int *tx, int *ty) const
//[2]void map(qreal x, qreal y, qreal *tx, qreal *ty) const
//[3]QPoint map(const QPoint &p) const
//[4]QPointF map(const QPointF&p) const
//[5]QLine map(const QLine &l) const
//[6]QLineF map(const QLineF &l) const
//[7]QPolygon map(const QPolygon &a) const
//[8]QPolygonF map(const QPolygonF &a) const
//[9]QRegion map(const QRegion &r) const
//[10]QPainterPath map(const QPainterPath &p) const

HB_FUNC_STATIC( QMATRIX_MAP )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMATRIX_MAP1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMATRIX_MAP2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QMatrix_map3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QMatrix_map4();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QMatrix_map5();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QMatrix_map6();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QMatrix_map7();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QMatrix_map8();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QMatrix_map9();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QMatrix_map10();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect mapRect(const QRect &) const
*/
void QMatrix_mapRect1 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QRect * ptr = new QRect( obj->mapRect ( *PQRECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF mapRect(const QRectF &) const
*/
void QMatrix_mapRect2 ()
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QRectF * ptr = new QRectF( obj->mapRect ( *PQRECTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRect mapRect(const QRect &) const
//[2]QRectF mapRect(const QRectF &) const

HB_FUNC_STATIC( QMATRIX_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon mapToPolygon(const QRect &r) const
*/
HB_FUNC_STATIC( QMATRIX_MAPTOPOLYGON )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->mapToPolygon ( *PQRECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
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
void reset()
*/
HB_FUNC_STATIC( QMATRIX_RESET )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset ();
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
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX_ISIDENTITY )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity () );
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
QMatrix &translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QMATRIX_TRANSLATE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QMatrix * ptr = &obj->translate ( PQREAL(1), PQREAL(2) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", false );
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
QMatrix &scale(qreal sx, qreal sy)
*/
HB_FUNC_STATIC( QMATRIX_SCALE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QMatrix * ptr = &obj->scale ( PQREAL(1), PQREAL(2) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", false );
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
QMatrix &shear(qreal sh, qreal sv)
*/
HB_FUNC_STATIC( QMATRIX_SHEAR )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QMatrix * ptr = &obj->shear ( PQREAL(1), PQREAL(2) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", false );
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
QMatrix &rotate(qreal a)
*/
HB_FUNC_STATIC( QMATRIX_ROTATE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QMatrix * ptr = &obj->rotate ( PQREAL(1) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", false );
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
bool isInvertible() const
*/
HB_FUNC_STATIC( QMATRIX_ISINVERTIBLE )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isInvertible () );
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
qreal determinant() const
*/
HB_FUNC_STATIC( QMATRIX_DETERMINANT )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->determinant () );
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
QMatrix inverted(bool *invertible = nullptr) const
*/
HB_FUNC_STATIC( QMATRIX_INVERTED )
{
  QMatrix * obj = (QMatrix *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      bool par1;
      QMatrix * ptr = new QMatrix( obj->inverted ( &par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", true );
      hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX_NEWFROM )
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

HB_FUNC_STATIC( QMATRIX_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMATRIX_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMATRIX_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMATRIX_SETSELFDESTRUCTION )
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
