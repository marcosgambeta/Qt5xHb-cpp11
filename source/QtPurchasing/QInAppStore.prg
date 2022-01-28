/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QINAPPPRODUCT
#endif

CLASS QInAppStore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD restorePurchases
   METHOD registerProduct
   METHOD registeredProduct
   METHOD setPlatformProperty

   METHOD onProductRegistered
   METHOD onProductUnknown
   METHOD onTransactionReady

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QInAppStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtPurchasing/QInAppStore>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtPurchasing/QInAppStore>
#endif

#include <QtPurchasing/QInAppTransaction>

/*
QInAppStore( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QINAPPSTORE_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    auto obj = new QInAppStore( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QInAppStore()
*/
HB_FUNC_STATIC( QINAPPSTORE_DELETE )
{
  auto obj = qobject_cast< QInAppStore * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
Q_INVOKABLE void restorePurchases()
*/
HB_FUNC_STATIC( QINAPPSTORE_RESTOREPURCHASES )
{
  auto obj = qobject_cast< QInAppStore * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->restorePurchases();
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
Q_INVOKABLE void registerProduct( QInAppProduct::ProductType productType, const QString & identifier )
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTERPRODUCT )
{
  auto obj = qobject_cast< QInAppStore * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->registerProduct( static_cast<QInAppProduct::ProductType>( hb_parni( 1 ) ), PQSTRING( 2 ) );
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
Q_INVOKABLE QInAppProduct * registeredProduct( const QString & identifier ) const
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTEREDPRODUCT )
{
  auto obj = qobject_cast< QInAppStore * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      QInAppProduct * ptr = obj->registeredProduct( PQSTRING( 1 ) );
      Qt5xHb::createReturnQObjectClass( ptr, "QINAPPPRODUCT" );
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
Q_INVOKABLE void setPlatformProperty( const QString & propertyName, const QString & value )
*/
HB_FUNC_STATIC( QINAPPSTORE_SETPLATFORMPROPERTY )
{
  auto obj = qobject_cast< QInAppStore * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->setPlatformProperty( PQSTRING( 1 ), PQSTRING( 2 ) );
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
void productRegistered( QInAppProduct * product )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTREGISTERED )
{
  auto sender = (QInAppStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("productRegistered(QInAppProduct*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::productRegistered, 
                                                              [sender, indexOfCodeBlock]
                                                              (QInAppProduct * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QINAPPPRODUCT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void productUnknown( QInAppProduct::ProductType productType, const QString & identifier )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTUNKNOWN )
{
  auto sender = (QInAppStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("productUnknown(QInAppProduct::ProductType,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::productUnknown, 
                                                              [sender, indexOfCodeBlock]
                                                              (QInAppProduct::ProductType arg1, const QString & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void transactionReady( QInAppTransaction * transaction )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONTRANSACTIONREADY )
{
  auto sender = (QInAppStore *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("transactionReady(QInAppTransaction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::transactionReady, 
                                                              [sender, indexOfCodeBlock]
                                                              (QInAppTransaction * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QINAPPTRANSACTION" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
