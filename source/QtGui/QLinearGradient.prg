/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop
   METHOD setStart
   METHOD start

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLinearGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QLinearGradient>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QLinearGradient>
#endif

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QLinearGradient()
    */
    auto obj = new QLinearGradient();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    /*
    QLinearGradient( const QPointF & start, const QPointF & finalStop )
    */
    auto obj = new QLinearGradient( *PQPOINTF(1), *PQPOINTF(2) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    /*
    QLinearGradient( qreal x1, qreal y1, qreal x2, qreal y2 )
    */
    auto obj = new QLinearGradient( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QLINEARGRADIENT_DELETE )
{
  auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPointF finalStop() const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_FINALSTOP )
{
  auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->finalStop() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void setFinalStop( const QPointF & stop )
    */
    auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setFinalStop( *PQPOINTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setFinalStop( qreal x, qreal y )
    */
    auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setFinalStop( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void setStart( const QPointF & start )
    */
    auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setStart( *PQPOINTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setStart( qreal x, qreal y )
    */
    auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->setStart( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPointF start() const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_START )
{
  auto obj = static_cast<QLinearGradient*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->start() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
