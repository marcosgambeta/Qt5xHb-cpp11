//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QSIZEF
REQUEST QURL
REQUEST QVARIANT
REQUEST QWEBHISTORY
REQUEST QWEBPAGE
REQUEST QWEBSETTINGS
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD title
   METHOD icon
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD url
   METHOD setUrl
   METHOD isModified
   METHOD resizesToContents
   METHOD setResizesToContents
   METHOD isTiledBackingStoreFrozen
   METHOD setTiledBackingStoreFrozen
   METHOD renderHints
   METHOD setRenderHints
   METHOD findText
   METHOD history
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD settings
   METHOD triggerPageAction
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop
   METHOD setGeometry
   METHOD updateGeometry
   METHOD paint
   METHOD itemChange
   METHOD event
   METHOD sizeHint
   METHOD inputMethodQuery
   METHOD setRenderHint

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebKitWidgets/QGraphicsWebView>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWebKitWidgets/QGraphicsWebView>
#endif

#include <QtWidgets/QAction>

    /*
    QGraphicsWebView(QGraphicsItem * parent = nullptr)
    */
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQGRAPHICSITEM(1) || HB_ISNIL(1)))
  {
    auto obj = new QGraphicsWebView(HB_ISNIL(1) ? nullptr : static_cast<QGraphicsItem *>(Qt5xHb::itemGetPtr(1)));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QGraphicsWebView()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_DELETE)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QString title() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_TITLE)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
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
QIcon icon() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ICON)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QIcon(obj->icon());
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
qreal zoomFactor() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ZOOMFACTOR)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->zoomFactor());
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
void setZoomFactor(qreal)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETZOOMFACTOR)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZoomFactor(PQREAL(1));
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
QUrl url() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_URL)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QUrl(obj->url());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
void setUrl(const QUrl &)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETURL)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setUrl(*PQURL(1));
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
bool isModified() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ISMODIFIED)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isModified());
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
bool resizesToContents() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_RESIZESTOCONTENTS)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->resizesToContents());
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
void setResizesToContents(bool enabled)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setResizesToContents(PBOOL(1));
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
bool isTiledBackingStoreFrozen() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTiledBackingStoreFrozen());
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
void setTiledBackingStoreFrozen(bool frozen)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setTiledBackingStoreFrozen(PBOOL(1));
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
QPainter::RenderHints renderHints() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_RENDERHINTS)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->renderHints());
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
void setRenderHints(QPainter::RenderHints)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETRENDERHINTS)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRenderHints(static_cast<QPainter::RenderHints>(hb_parni(1)));
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
bool findText(const QString & subString, QWebPage::FindFlags options = 0)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_FINDTEXT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->findText(PQSTRING(1), HB_ISNIL(2) ? static_cast<QWebPage::FindFlags>(0)
                                                   : static_cast<QWebPage::FindFlags>(hb_parni(2))));
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
QWebHistory * history() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_HISTORY)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->history();
      Qt5xHb::createReturnClass(ptr, "QWEBHISTORY", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_LOAD)
{
  if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    void load(const QUrl & url)
    */
    auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->load(*PQURL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 3) && ISQNETWORKREQUEST(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && ISOPTQBYTEARRAY(3))
  {
    /*
    void load(const QNetworkRequest & request, QNetworkAccessManager::Operation operation =
    QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray())
    */
    auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->load(*PQNETWORKREQUEST(1),
                HB_ISNIL(2) ? static_cast<QNetworkAccessManager::Operation>(QNetworkAccessManager::GetOperation)
                            : static_cast<QNetworkAccessManager::Operation>(hb_parni(2)),
                HB_ISNIL(3) ? QByteArray() : *static_cast<QByteArray *>(Qt5xHb::itemGetPtr(3)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QWebPage * page() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_PAGE)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->page();
      Qt5xHb::createReturnQObjectClass(ptr, "QWEBPAGE");
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
QAction * pageAction(QWebPage::WebAction action) const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_PAGEACTION)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = obj->pageAction(static_cast<QWebPage::WebAction>(hb_parni(1)));
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
void setContent(const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl())
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETCONTENT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && ISQBYTEARRAY(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (ISQURL(3) || HB_ISNIL(3)))
    {
#endif
      obj->setContent(*PQBYTEARRAY(1), OPQSTRING(2, QString()),
                      HB_ISNIL(3) ? QUrl() : *static_cast<QUrl *>(Qt5xHb::itemGetPtr(3)));
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
void setHtml(const QString & html, const QUrl & baseUrl = QUrl())
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETHTML)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQURL(2) || HB_ISNIL(2)))
    {
#endif
      obj->setHtml(PQSTRING(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl *>(Qt5xHb::itemGetPtr(2)));
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
void setPage(QWebPage * page)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETPAGE)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWEBPAGE(1))
    {
#endif
      obj->setPage(PQWEBPAGE(1));
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
QWebSettings * settings() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETTINGS)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->settings();
      Qt5xHb::createReturnClass(ptr, "QWEBSETTINGS", false);
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
void triggerPageAction(QWebPage::WebAction action, bool checked = false)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_TRIGGERPAGEACTION)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->triggerPageAction(static_cast<QWebPage::WebAction>(hb_parni(1)), OPBOOL(2, false));
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
void back()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_BACK)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->back();
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
void forward()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_FORWARD)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->forward();
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
void reload()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_RELOAD)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reload();
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
void stop()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_STOP)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
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
virtual void setGeometry(const QRectF & rect)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETGEOMETRY)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRECTF(1))
    {
#endif
      obj->setGeometry(*PQRECTF(1));
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
virtual void updateGeometry()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_UPDATEGEOMETRY)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->updateGeometry();
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
virtual void paint(QPainter *, const QStyleOptionGraphicsItem * options, QWidget * widget = nullptr)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_PAINT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      obj->paint(PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3, nullptr));
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
virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant & value)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ITEMCHANGE)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      auto ptr =
          new QVariant(obj->itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(hb_parni(1)), *PQVARIANT(2)));
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
virtual bool event(QEvent *)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_EVENT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQEVENT(1))
    {
#endif
      RBOOL(obj->event(PQEVENT(1)));
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
virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF & constraint) const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SIZEHINT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSIZEF(2))
    {
#endif
      auto ptr = new QSizeF(obj->sizeHint(static_cast<Qt::SizeHint>(hb_parni(1)), *PQSIZEF(2)));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_INPUTMETHODQUERY)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->inputMethodQuery(static_cast<Qt::InputMethodQuery>(hb_parni(1))));
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
void setRenderHint(QPainter::RenderHint, bool enabled = true)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETRENDERHINT)
{
  auto obj = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setRenderHint(static_cast<QPainter::RenderHint>(hb_parni(1)), OPBOOL(2, true));
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
void iconChanged()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONICONCHANGED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("iconChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QGraphicsWebView::iconChanged, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
  }

  hb_retl(result);
}

/*
void linkClicked(const QUrl & url)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLINKCLICKED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("linkClicked(QUrl)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGraphicsWebView::linkClicked, [sender, indexOfCodeBlock](const QUrl &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QURL");
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
  }

  hb_retl(result);
}

/*
void loadFinished(bool ok)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADFINISHED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("loadFinished(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGraphicsWebView::loadFinished, [sender, indexOfCodeBlock](bool arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = hb_itemPutL(nullptr, arg1);
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
  }

  hb_retl(result);
}

/*
void loadProgress(int progress)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADPROGRESS)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("loadProgress(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGraphicsWebView::loadProgress, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
  }

  hb_retl(result);
}

/*
void loadStarted()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADSTARTED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("loadStarted()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QGraphicsWebView::loadStarted, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
  }

  hb_retl(result);
}

/*
void statusBarMessage(const QString & text)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONSTATUSBARMESSAGE)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("statusBarMessage(QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QGraphicsWebView::statusBarMessage, [sender, indexOfCodeBlock](const QString &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
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
  }

  hb_retl(result);
}

/*
void titleChanged(const QString & title)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONTITLECHANGED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("titleChanged(QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGraphicsWebView::titleChanged, [sender, indexOfCodeBlock](const QString &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
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
  }

  hb_retl(result);
}

/*
void urlChanged(const QUrl & url)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONURLCHANGED)
{
  auto sender = qobject_cast<QGraphicsWebView *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("urlChanged(QUrl)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGraphicsWebView::urlChanged, [sender, indexOfCodeBlock](const QUrl &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGRAPHICSWEBVIEW");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QURL");
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
  }

  hb_retl(result);
}

#pragma ENDDUMP
