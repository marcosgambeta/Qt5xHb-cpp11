//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD setCurrentColor
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedColor
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD setCustomColor
   METHOD customCount
   METHOD getColor
   METHOD standardColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QColorDialog>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QColorDialog>
#endif

HB_FUNC_STATIC(QCOLORDIALOG_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QColorDialog(QWidget * parent = nullptr)
    */
    auto obj = new QColorDialog(OPQWIDGET(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QColorDialog(const QColor & initial, QWidget * parent = nullptr)
    */
    auto obj = new QColorDialog(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(1)) : QColor(hb_parc(1)),
                                OPQWIDGET(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QCOLORDIALOG_DELETE)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

/*
QColor currentColor() const
*/
HB_FUNC_STATIC(QCOLORDIALOG_CURRENTCOLOR)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QColor(obj->currentColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setCurrentColor(const QColor & color)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETCURRENTCOLOR)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setCurrentColor(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(1)) : QColor(hb_parc(1)));
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

HB_FUNC_STATIC(QCOLORDIALOG_OPEN)
{
  if (ISNUMPAR(0))
  {
#ifdef Q_NO_USING_KEYWORD
    /*
    void open()
    */
    auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->open();
    }

    hb_itemReturn(hb_stackSelfItem());

#endif
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2))
  {
    /*
    void open(QObject * receiver, const char * member)
    */
    auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->open(PQOBJECT(1), PCONSTCHAR(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QColorDialog::ColorDialogOptions options() const
*/
HB_FUNC_STATIC(QCOLORDIALOG_OPTIONS)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->options());
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
void setOptions(QColorDialog::ColorDialogOptions options)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETOPTIONS)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOptions(static_cast<QColorDialog::ColorDialogOptions>(hb_parni(1)));
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
QColor selectedColor() const
*/
HB_FUNC_STATIC(QCOLORDIALOG_SELECTEDCOLOR)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QColor(obj->selectedColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setOption(QColorDialog::ColorDialogOption option, bool on = true)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETOPTION)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setOption(static_cast<QColorDialog::ColorDialogOption>(hb_parni(1)), OPBOOL(2, true));
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
bool testOption(QColorDialog::ColorDialogOption option) const
*/
HB_FUNC_STATIC(QCOLORDIALOG_TESTOPTION)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->testOption(static_cast<QColorDialog::ColorDialogOption>(hb_parni(1))));
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
void setVisible(bool visible)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETVISIBLE)
{
  auto obj = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisible(PBOOL(1));
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
static QColor customColor(int index)
*/
HB_FUNC_STATIC(QCOLORDIALOG_CUSTOMCOLOR)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    auto ptr = new QColor(QColorDialog::customColor(PINT(1)));
    Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setCustomColor(int index, QColor color)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETCUSTOMCOLOR)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQCOLOR(2))
  {
#endif
    QColorDialog::setCustomColor(PINT(1), *PQCOLOR(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static int customCount()
*/
HB_FUNC_STATIC(QCOLORDIALOG_CUSTOMCOUNT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QColorDialog::customCount());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QColor getColor(const QColor & initial = Qt::white, QWidget * parent = nullptr, const QString & title =
QString(), QColorDialog::ColorDialogOptions options = 0)
*/
HB_FUNC_STATIC(QCOLORDIALOG_GETCOLOR)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 4) && (ISQCOLOR(1) || HB_ISNIL(1)) && (ISQWIDGET(2) || HB_ISNIL(2)) &&
      (HB_ISCHAR(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
#endif
    auto ptr =
        new QColor(QColorDialog::getColor(HB_ISNIL(1) ? Qt::white : *static_cast<QColor *>(Qt5xHb::itemGetPtr(1)),
                                          OPQWIDGET(2, nullptr), OPQSTRING(3, QString()),
                                          HB_ISNIL(4) ? static_cast<QColorDialog::ColorDialogOptions>(0)
                                                      : static_cast<QColorDialog::ColorDialogOptions>(hb_parni(4))));
    Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QColor standardColor(int index)
*/
HB_FUNC_STATIC(QCOLORDIALOG_STANDARDCOLOR)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    auto ptr = new QColor(QColorDialog::standardColor(PINT(1)));
    Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setStandardColor(int index, QColor color)
*/
HB_FUNC_STATIC(QCOLORDIALOG_SETSTANDARDCOLOR)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQCOLOR(2))
  {
#endif
    QColorDialog::setStandardColor(PINT(1), *PQCOLOR(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
void colorSelected(const QColor & color)
*/
HB_FUNC_STATIC(QCOLORDIALOG_ONCOLORSELECTED)
{
  auto sender = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("colorSelected(QColor)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QColorDialog::colorSelected, [sender, indexOfCodeBlock](const QColor &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QCOLORDIALOG");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QCOLOR");
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
}

/*
void currentColorChanged(const QColor & color)
*/
HB_FUNC_STATIC(QCOLORDIALOG_ONCURRENTCOLORCHANGED)
{
  auto sender = qobject_cast<QColorDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("currentColorChanged(QColor)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QColorDialog::currentColorChanged,
                                           [sender, indexOfCodeBlock](const QColor &arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "QCOLORDIALOG");
                                               auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QCOLOR");
                                               hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
