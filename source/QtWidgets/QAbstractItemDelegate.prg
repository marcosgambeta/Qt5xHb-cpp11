/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QAbstractItemDelegate INHERIT QObject

   METHOD delete
   METHOD createEditor
   METHOD editorEvent
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   METHOD helpEvent
   METHOD destroyEditor
   METHOD elidedText
   METHOD paintingRoles

   METHOD onCloseEditor
   METHOD onCommitData
   METHOD onSizeHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QAbstractItemDelegate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QAbstractItemDelegate>
#endif

HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DELETE )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual QWidget * createEditor( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_CREATEEDITOR )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      QWidget * ptr = obj->createEditor( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
virtual bool editorEvent( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_EDITOREVENT )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQEVENT(1) && ISQABSTRACTITEMMODEL(2) && ISQSTYLEOPTIONVIEWITEM(3) && ISQMODELINDEX(4) )
    {
#endif
      RBOOL( obj->editorEvent( PQEVENT(1), PQABSTRACTITEMMODEL(2), *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
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
virtual void paint( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINT )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->paint( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
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
virtual void setEditorData( QWidget * editor, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETEDITORDATA )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQWIDGET(1) && ISQMODELINDEX(2) )
    {
#endif
      obj->setEditorData( PQWIDGET(1), *PQMODELINDEX(2) );
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
virtual void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETMODELDATA )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQABSTRACTITEMMODEL(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->setModelData( PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3) );
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
virtual QSize sizeHint( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SIZEHINT )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQSTYLEOPTIONVIEWITEM(1) && ISQMODELINDEX(2) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint( *PQSTYLEOPTIONVIEWITEM(1), *PQMODELINDEX(2) ) );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
virtual void updateEditorGeometry( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->updateEditorGeometry( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
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
virtual bool helpEvent( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_HELPEVENT )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQHELPEVENT(1) && ISQABSTRACTITEMVIEW(2) && ISQSTYLEOPTIONVIEWITEM(3) && ISQMODELINDEX(4) )
    {
#endif
      RBOOL( obj->helpEvent( PQHELPEVENT(1), PQABSTRACTITEMVIEW(2), *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
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
virtual void destroyEditor( QWidget * editor, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DESTROYEDITOR )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQWIDGET(1) && ISQMODELINDEX(2) )
    {
#endif
      obj->destroyEditor( PQWIDGET(1), *PQMODELINDEX(2) );
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
static QString elidedText( const QFontMetrics & fontMetrics, int width, Qt::TextElideMode mode, const QString &text )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ELIDEDTEXT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(4) && ISQFONTMETRICS(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISCHAR(4) )
  {
#endif
    RQSTRING( QAbstractItemDelegate::elidedText( *PQFONTMETRICS(1), PINT(2), static_cast<Qt::TextElideMode>( hb_parni(3) ), PQSTRING(4) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
virtual QVector<int> paintingRoles() const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINTINGROLES )
{
  auto obj = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QVector<int> list = obj->paintingRoles();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( const auto & item : list )
      {
        PHB_ITEM pItem = hb_itemPutNI(nullptr, item);
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
void closeEditor( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ONCLOSEEDITOR )
{
  auto sender = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractItemDelegate::closeEditor,
                                                              [sender, indexOfCodeBlock]
                                                              (QWidget * arg1, QAbstractItemDelegate::EndEditHint arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTITEMDELEGATE");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QWIDGET");
            PHB_ITEM pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
            hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void commitData( QWidget * editor )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ONCOMMITDATA )
{
  auto sender = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("commitData(QWidget*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractItemDelegate::commitData,
                                                              [sender, indexOfCodeBlock]
                                                              (QWidget * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTITEMDELEGATE");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QWIDGET");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void sizeHintChanged( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ONSIZEHINTCHANGED )
{
  auto sender = qobject_cast<QAbstractItemDelegate*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("sizeHintChanged(QModelIndex)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractItemDelegate::sizeHintChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QModelIndex & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTITEMDELEGATE");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QMODELINDEX");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
