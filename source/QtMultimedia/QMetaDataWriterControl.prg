/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMetaDataWriterControl INHERIT QMediaControl

   METHOD delete
   METHOD isWritable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD setMetaData
   METHOD availableMetaData

   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onWritableChanged
   METHOD onMetaDataAvailableChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMetaDataWriterControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMetaDataWriterControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMetaDataWriterControl>
#endif

/*
~QMetaDataWriterControl()
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_DELETE )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

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

/*
virtual bool isWritable() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ISWRITABLE )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual bool isMetaDataAvailable() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ISMETADATAAVAILABLE )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMetaDataAvailable() );
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
virtual QVariant metaData( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_METADATA )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QVariant( obj->metaData( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void setMetaData( const QString & key, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_SETMETADATA )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      obj->setMetaData( PQSTRING(1), *PQVARIANT(2) );
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
virtual QStringList availableMetaData() const = 0
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_AVAILABLEMETADATA )
{
  auto obj = qobject_cast<QMetaDataWriterControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableMetaData() );
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
void metaDataChanged()
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ONMETADATACHANGED1 )
{
  auto sender = (QMetaDataWriterControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("metaDataChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<>::of(&QMetaDataWriterControl::metaDataChanged), 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMETADATAWRITERCONTROL");
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void metaDataChanged( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ONMETADATACHANGED2 )
{
  auto sender = (QMetaDataWriterControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("metaDataChanged(QString,QVariant)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<const QString &,const QVariant &>::of(&QMetaDataWriterControl::metaDataChanged), 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1, const QVariant & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMETADATAWRITERCONTROL");
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_object( (void *) &arg2, "QVARIANT");
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void writableChanged( bool writable )
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ONWRITABLECHANGED )
{
  auto sender = (QMetaDataWriterControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("writableChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMetaDataWriterControl::writableChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMETADATAWRITERCONTROL");
            PHB_ITEM pArg1 = hb_itemPutL( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

/*
void metaDataAvailableChanged( bool available )
*/
HB_FUNC_STATIC( QMETADATAWRITERCONTROL_ONMETADATAAVAILABLECHANGED )
{
  auto sender = (QMetaDataWriterControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("metaDataAvailableChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMetaDataWriterControl::metaDataAvailableChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMETADATAWRITERCONTROL");
            PHB_ITEM pArg1 = hb_itemPutL( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);

        hb_retl(true);
      }
      else
      {
        hb_retl(false);
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);

      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));

      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

#pragma ENDDUMP
