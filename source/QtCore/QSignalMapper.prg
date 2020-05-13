/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping
   METHOD map

   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSignalMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QSignalMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QSignalMapper>
#endif

#include <QtWidgets/QWidget>

/*
QSignalMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QSignalMapper( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIGNALMAPPER_DELETE )
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
void setMapping(QObject *sender, int id)
*/
void QSignalMapper_setMapping1()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setMapping( PQOBJECT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, const QString &text)
*/
void QSignalMapper_setMapping2()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setMapping( PQOBJECT(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QWidget *widget)
*/
void QSignalMapper_setMapping3()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setMapping( PQOBJECT(1), PQWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QObject *object)
*/
void QSignalMapper_setMapping4()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setMapping( PQOBJECT(1), PQOBJECT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setMapping(QObject *sender, int id)
[2]void setMapping(QObject *sender, const QString &text)
[3]void setMapping(QObject *sender, QWidget *widget)
[4]void setMapping(QObject *sender, QObject *object)
*/

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QSignalMapper_setMapping1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QSignalMapper_setMapping2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    QSignalMapper_setMapping3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    QSignalMapper_setMapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeMappings(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_REMOVEMAPPINGS )
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->removeMappings( PQOBJECT(1) );
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
QObject *mapping(int id) const
*/
void QSignalMapper_mapping1()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QObject * ptr = obj->mapping( PINT(1) );
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(const QString &text) const
*/
void QSignalMapper_mapping2()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QObject * ptr = obj->mapping( PQSTRING(1) );
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QWidget *widget) const
*/
void QSignalMapper_mapping3()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QObject * ptr = obj->mapping( PQWIDGET(1) );
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QObject *object) const
*/
void QSignalMapper_mapping4()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QObject * ptr = obj->mapping( PQOBJECT(1) );
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
  }
}

/*
[1]QObject *mapping(int id) const
[2]QObject *mapping(const QString &text) const
[3]QObject *mapping(QWidget *widget) const
[4]QObject *mapping(QObject *object) const
*/

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSignalMapper_mapping1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSignalMapper_mapping2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QSignalMapper_mapping3();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_mapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void map()
*/
void QSignalMapper_map1()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->map();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void map(QObject *sender)
*/
void QSignalMapper_map2()
{
  auto obj = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->map( PQOBJECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void map()
[2]void map(QObject *sender)
*/

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    QSignalMapper_map1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_map2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void mapped( int arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED1 )
{
  auto sender = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mapped(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<int>::of(&QSignalMapper::mapped), 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mapped( const QString & arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED2 )
{
  auto sender = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mapped(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<const QString &>::of(&QSignalMapper::mapped), 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mapped( QWidget * arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED3 )
{
  auto sender = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mapped(QWidget*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QWidget *>::of(&QSignalMapper::mapped), 
                                                              [sender, indexOfCodeBlock]
                                                              (QWidget * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QWIDGET" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void mapped( QObject * arg )
*/
HB_FUNC_STATIC( QSIGNALMAPPER_ONMAPPED4 )
{
  auto sender = (QSignalMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("mapped(QObject*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QObject *>::of(&QSignalMapper::mapped), 
                                                              [sender, indexOfCodeBlock]
                                                              (QObject * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QSIGNALMAPPER" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QOBJECT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
