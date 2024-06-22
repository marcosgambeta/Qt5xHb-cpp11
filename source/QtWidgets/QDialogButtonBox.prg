/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
#endif

CLASS QDialogButtonBox INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD centerButtons
   METHOD clear
   METHOD orientation
   METHOD removeButton
   METHOD setCenterButtons
   METHOD setOrientation
   METHOD setStandardButtons
   METHOD standardButton
   METHOD standardButtons

   METHOD onAccepted
   METHOD onClicked
   METHOD onHelpRequested
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDialogButtonBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDialogButtonBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QDialogButtonBox>
#endif

#include <QtWidgets/QPushButton>

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QDialogButtonBox( QWidget * parent = nullptr )
    */
    auto obj = new QDialogButtonBox( OPQWIDGET( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QDialogButtonBox( Qt::Orientation orientation, QWidget * parent = nullptr )
    */
    auto obj = new QDialogButtonBox( static_cast<Qt::Orientation>( hb_parni(1)), OPQWIDGET( 2, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)))
  {
    /*
    QDialogButtonBox( QDialogButtonBox::StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = nullptr )
    */
    auto obj = new QDialogButtonBox( static_cast<QDialogButtonBox::StandardButtons>( hb_parni(1)), HB_ISNIL(2) ? static_cast<Qt::Orientation >( Qt::Horizontal ) : static_cast<Qt::Orientation >( hb_parni(2)), OPQWIDGET( 3, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_DELETE )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if (ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && HB_ISNUM(2))
  {
    /*
    void addButton( QAbstractButton * button, QDialogButtonBox::ButtonRole role )
    */
    auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->addButton(PQABSTRACTBUTTON(1), static_cast<QDialogButtonBox::ButtonRole>( hb_parni(2)));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    /*
    QPushButton * addButton( const QString & text, QDialogButtonBox::ButtonRole role )
    */
    auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->addButton(PQSTRING(1), static_cast<QDialogButtonBox::ButtonRole>( hb_parni(2)));
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
    }

  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QPushButton * addButton( QDialogButtonBox::StandardButton button )
    */
    auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->addButton( static_cast<QDialogButtonBox::StandardButton>( hb_parni(1)));
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPushButton * button( QDialogButtonBox::StandardButton which ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTON )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = obj->button( static_cast<QDialogButtonBox::StandardButton>( hb_parni(1)));
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
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
QDialogButtonBox::ButtonRole buttonRole( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTONROLE )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
    {
#endif
      RENUM(obj->buttonRole(PQABSTRACTBUTTON(1)));
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
bool centerButtons() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CENTERBUTTONS )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->centerButtons());
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
void clear()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CLEAR )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ORIENTATION )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
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
void removeButton( QAbstractButton * button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_REMOVEBUTTON )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
    {
#endif
      obj->removeButton(PQABSTRACTBUTTON(1));
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
void setCenterButtons( bool center )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETCENTERBUTTONS )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setCenterButtons(PBOOL(1));
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
void setOrientation( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETORIENTATION )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOrientation( static_cast<Qt::Orientation>( hb_parni(1)));
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
void setStandardButtons( QDialogButtonBox::StandardButtons buttons )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETSTANDARDBUTTONS )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStandardButtons( static_cast<QDialogButtonBox::StandardButtons>( hb_parni(1)));
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
QDialogButtonBox::StandardButton standardButton( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTON )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
    {
#endif
      RENUM(obj->standardButton(PQABSTRACTBUTTON(1)));
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
QDialogButtonBox::StandardButtons standardButtons() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTONS )
{
  auto obj = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->standardButtons());
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
void accepted()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONACCEPTED )
{
  auto sender = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("accepted()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QDialogButtonBox::accepted,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDIALOGBUTTONBOX");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void clicked( QAbstractButton * button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONCLICKED )
{
  auto sender = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("clicked(QAbstractButton*)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QDialogButtonBox::clicked,
                                           [sender, indexOfCodeBlock]
                                           (QAbstractButton * arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDIALOGBUTTONBOX");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QABSTRACTBUTTON");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void helpRequested()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONHELPREQUESTED )
{
  auto sender = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("helpRequested()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QDialogButtonBox::helpRequested,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDIALOGBUTTONBOX");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void rejected()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONREJECTED )
{
  auto sender = qobject_cast<QDialogButtonBox*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("rejected()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QDialogButtonBox::rejected,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDIALOGBUTTONBOX");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
