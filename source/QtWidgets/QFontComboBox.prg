/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QFontComboBox INHERIT QComboBox

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont

   METHOD onCurrentFontChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QFontComboBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QFontComboBox>
#endif

/*
QFontComboBox( QWidget * parent = nullptr )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QFontComboBox( OPQWIDGET( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFONTCOMBOBOX_DELETE )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFont currentFont() const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_CURRENTFONT )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QFont( obj->currentFont() );
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
QFontComboBox::FontFilters fontFilters() const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_FONTFILTERS )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->fontFilters() );
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
void setFontFilters( QFontComboBox::FontFilters filters )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETFONTFILTERS )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFontFilters( static_cast<QFontComboBox::FontFilters>( hb_parni(1) ) );
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
void setWritingSystem( QFontDatabase::WritingSystem script )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETWRITINGSYSTEM )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWritingSystem( static_cast<QFontDatabase::WritingSystem>( hb_parni(1) ) );
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
QFontDatabase::WritingSystem writingSystem() const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_WRITINGSYSTEM )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->writingSystem() );
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SIZEHINT )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint() );
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
void setCurrentFont( const QFont & font )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETCURRENTFONT )
{
  auto obj = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setCurrentFont( *PQFONT(1) );
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
void currentFontChanged( const QFont & font )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_ONCURRENTFONTCHANGED )
{
  auto sender = qobject_cast<QFontComboBox*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentFontChanged(QFont)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QFontComboBox::currentFontChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (const QFont & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QFONTCOMBOBOX");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QFONT");
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
