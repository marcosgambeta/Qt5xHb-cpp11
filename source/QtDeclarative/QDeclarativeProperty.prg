/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QMETAPROPERTY
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD reset
   METHOD type
   METHOD read
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QDeclarativeProperty>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtDeclarative/QDeclarativeProperty>
#endif

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDeclarativeProperty()
    */
    auto obj = new QDeclarativeProperty();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    /*
    QDeclarativeProperty( const QDeclarativeProperty & other )
    */
    HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
    {
      if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
      {
        auto obj = new QDeclarativeProperty( *PQDECLARATIVEPROPERTY(1) );
        Qt5xHb::returnNewObject(obj, true);
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
    }

  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    QDeclarativeProperty( QObject * obj )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, QDeclarativeContext * ctxt )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1), PQDECLARATIVECONTEXT(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, QDeclarativeEngine * engine )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1), PQDECLARATIVEENGINE(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name, QDeclarativeEngine * engine )
    */
    auto obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, const char * slot ) const
    */
    auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PCONSTCHAR(2) ) );
    }

  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, int method ) const
    */
    auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PINT(2) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_HASNOTIFYSIGNAL )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNotifySignal() );
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
int index() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_INDEX )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->index() );
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
bool isDesignable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISDESIGNABLE )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDesignable() );
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
bool isProperty() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISPROPERTY )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProperty() );
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
bool isResettable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISRESETTABLE )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isResettable() );
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
bool isSignalProperty() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISSIGNALPROPERTY )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSignalProperty() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISVALID )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
bool isWritable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISWRITABLE )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
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
QMetaMethod method() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_METHOD )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMetaMethod( obj->method() );
      Qt5xHb::createReturnClass(ptr, "QMETAMETHOD", true);
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
QString name() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NAME )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
bool needsNotifySignal() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEEDSNOTIFYSIGNAL )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->needsNotifySignal() );
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
QObject * object() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_OBJECT )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
QMetaProperty property() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTY )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMetaProperty( obj->property() );
      Qt5xHb::createReturnClass(ptr, "QMETAPROPERTY", true);
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
int propertyType() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPE )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyType() );
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
QDeclarativeProperty::PropertyTypeCategory propertyTypeCategory() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPECATEGORY )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->propertyTypeCategory() );
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
const char * propertyTypeName() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPENAME )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( static_cast< const char*>( obj->propertyTypeName() ) );
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
bool reset() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_RESET )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reset() );
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
QDeclarativeProperty::Type type() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_TYPE )
{
  auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    /*
    QVariant read() const
    */
    auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->read() );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    static QVariant read( QObject * object, const QString & name )
    */

    auto ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);

  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QDeclarativeContext * ctxt )
    */

    auto ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);

  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QDeclarativeEngine * engine )
    */

    auto ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    /*
    bool write( const QVariant & value ) const
    */
    auto obj = static_cast<QDeclarativeProperty*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->write( *PQVARIANT(1) ) );
    }

  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3) ) );

  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVECONTEXT(4) ) );

  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVEENGINE(4) ) );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
