/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QSTYLE
#endif

CLASS QProxyStyle INHERIT QCommonStyle

   METHOD new
   METHOD delete
   METHOD baseStyle
   METHOD setBaseStyle
   METHOD drawPrimitive
   METHOD drawControl
   METHOD drawComplexControl
   METHOD drawItemText
   METHOD drawItemPixmap
   METHOD sizeFromContents
   METHOD subElementRect
   METHOD subControlRect
   METHOD itemTextRect
   METHOD itemPixmapRect
   METHOD hitTestComplexControl
   METHOD styleHint
   METHOD pixelMetric
   METHOD layoutSpacing
   METHOD standardIcon
   METHOD standardPixmap
   METHOD generatedIconPixmap
   METHOD standardPalette
   METHOD polish
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QProxyStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QProxyStyle>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QProxyStyle>
#endif

HB_FUNC_STATIC( QPROXYSTYLE_NEW )
{
  if (ISBETWEEN(0, 1) && (HB_ISOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QProxyStyle( QStyle * style = nullptr )
    */
    auto obj = new QProxyStyle( OPQSTYLE( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QProxyStyle( const QString & key )
    */
    auto obj = new QProxyStyle(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPROXYSTYLE_DELETE )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QStyle * baseStyle() const
*/
HB_FUNC_STATIC( QPROXYSTYLE_BASESTYLE )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->baseStyle();
      Qt5xHb::createReturnQObjectClass(ptr, "QSTYLE");
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
void setBaseStyle( QStyle * style )
*/
HB_FUNC_STATIC( QPROXYSTYLE_SETBASESTYLE )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSTYLE(1))
    {
#endif
      obj->setBaseStyle(PQSTYLE(1));
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
void drawPrimitive( QStyle::PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWPRIMITIVE )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawPrimitive( static_cast<QStyle::PrimitiveElement>( hb_parni(1)), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET( 4, nullptr));
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
void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWCONTROL )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawControl( static_cast<QStyle::ControlElement>( hb_parni(1)), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET( 4, nullptr));
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
void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWCOMPLEXCONTROL )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawComplexControl( static_cast<QStyle::ComplexControl>( hb_parni(1)), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), OPQWIDGET( 4, nullptr));
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
void drawItemText( QPainter * painter, const QRect & rect, int flags, const QPalette & pal, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWITEMTEXT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(6, 7) && ISQPAINTER(1) && ISQRECT(2) && HB_ISNUM(3) && ISQPALETTE(4) && HB_ISLOG(5) && HB_ISCHAR(6) && (HB_ISNUM(7) || HB_ISNIL(7)))
    {
#endif
      obj->drawItemText(PQPAINTER(1), *PQRECT(2), PINT(3), *PQPALETTE(4), PBOOL(5), PQSTRING(6), HB_ISNIL(7) ? static_cast<QPalette::ColorRole >( QPalette::NoRole ) : static_cast<QPalette::ColorRole >( hb_parni(7)));
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
virtual void drawItemPixmap( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWITEMPIXMAP )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQPAINTER(1) && ISQRECT(2) && HB_ISNUM(3) && ISQPIXMAP(4))
    {
#endif
      obj->drawItemPixmap(PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4));
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
QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SIZEFROMCONTENTS )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && ISQWIDGET(4))
    {
#endif
      auto ptr = new QSize(obj->sizeFromContents( static_cast<QStyle::ContentsType>( hb_parni(1)), PQSTYLEOPTION(2), *PQSIZE(3), PQWIDGET(4)));
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
QRect subElementRect( QStyle::SubElement element, const QStyleOption * option, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SUBELEMENTRECT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQWIDGET(3))
    {
#endif
      auto ptr = new QRect(obj->subElementRect( static_cast<QStyle::SubElement>( hb_parni(1)), PQSTYLEOPTION(2), PQWIDGET(3)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QRect subControlRect( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, QStyle::SubControl sc, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SUBCONTROLRECT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && HB_ISNUM(3) && ISQWIDGET(4))
    {
#endif
      auto ptr = new QRect(obj->subControlRect( static_cast<QStyle::ComplexControl>( hb_parni(1)), PQSTYLEOPTIONCOMPLEX(2), static_cast<QStyle::SubControl>( hb_parni(3)), PQWIDGET(4)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QRect itemTextRect( const QFontMetrics & fm, const QRect & r, int flags, bool enabled, const QString & text ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_ITEMTEXTRECT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(5) && ISQFONTMETRICS(1) && ISQRECT(2) && HB_ISNUM(3) && HB_ISLOG(4) && HB_ISCHAR(5))
    {
#endif
      auto ptr = new QRect(obj->itemTextRect( *PQFONTMETRICS(1), *PQRECT(2), PINT(3), PBOOL(4), PQSTRING(5)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QRect itemPixmapRect( const QRect & r, int flags, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_ITEMPIXMAPRECT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQRECT(1) && HB_ISNUM(2) && ISQPIXMAP(3))
    {
#endif
      auto ptr = new QRect(obj->itemPixmapRect( *PQRECT(1), PINT(2), *PQPIXMAP(3)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, const QPoint & pos, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_HITTESTCOMPLEXCONTROL )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      RENUM(obj->hitTestComplexControl( static_cast<QStyle::ComplexControl>( hb_parni(1)), PQSTYLEOPTIONCOMPLEX(2), *PQPOINT(3), OPQWIDGET( 4, nullptr )));
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
int styleHint( QStyle::StyleHint hint, const QStyleOption * option = nullptr, const QWidget * widget = nullptr, QStyleHintReturn * returnData = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STYLEHINT )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)) && (ISQSTYLEHINTRETURN(4) || HB_ISNIL(4)))
    {
#endif
      RINT(obj->styleHint( static_cast<QStyle::StyleHint>( hb_parni(1)), HB_ISNIL(2) ? nullptr : static_cast<QStyleOption*>(Qt5xHb::itemGetPtr(2)), OPQWIDGET( 3, nullptr ), HB_ISNIL(4) ? nullptr : static_cast<QStyleHintReturn*>(Qt5xHb::itemGetPtr(4))));
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
int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = nullptr, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_PIXELMETRIC )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      RINT(obj->pixelMetric( static_cast<QStyle::PixelMetric>( hb_parni(1)), HB_ISNIL(2) ? nullptr : static_cast<QStyleOption*>(Qt5xHb::itemGetPtr(2)), OPQWIDGET( 3, nullptr )));
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
int layoutSpacing( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = nullptr, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_LAYOUTSPACING )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && (ISQSTYLEOPTION(4) || HB_ISNIL(4)) && (ISQWIDGET(5) || HB_ISNIL(5)))
    {
#endif
      RINT(obj->layoutSpacing( static_cast<QSizePolicy::ControlType>( hb_parni(1)), static_cast<QSizePolicy::ControlType>( hb_parni(2)), static_cast<Qt::Orientation>( hb_parni(3)), HB_ISNIL(4) ? nullptr : static_cast<QStyleOption*>(Qt5xHb::itemGetPtr(4)), OPQWIDGET( 5, nullptr )));
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
QIcon standardIcon( QStyle::StandardPixmap standardIcon, const QStyleOption * option = nullptr, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDICON )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      auto ptr = new QIcon(obj->standardIcon( static_cast<QStyle::StandardPixmap>( hb_parni(1)), HB_ISNIL(2) ? nullptr : static_cast<QStyleOption*>(Qt5xHb::itemGetPtr(2)), OPQWIDGET( 3, nullptr )));
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
QPixmap standardPixmap( QStyle::StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = nullptr ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDPIXMAP )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      auto ptr = new QPixmap(obj->standardPixmap( static_cast<QStyle::StandardPixmap>( hb_parni(1)), PQSTYLEOPTION(2), OPQWIDGET( 3, nullptr )));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
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
QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_GENERATEDICONPIXMAP )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3))
    {
#endif
      auto ptr = new QPixmap(obj->generatedIconPixmap( static_cast<QIcon::Mode>( hb_parni(1)), *PQPIXMAP(2), PQSTYLEOPTION(3)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
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
QPalette standardPalette() const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDPALETTE )
{
  auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPalette(obj->standardPalette());
      Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPROXYSTYLE_POLISH )
{
  if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    void polish( QWidget * widget )
    */
    auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->polish(PQWIDGET(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && ISQPALETTE(1))
  {
    /*
    void polish( QPalette & pal )
    */
    auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->polish( *PQPALETTE(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && ISQAPPLICATION(1))
  {
    /*
    void polish( QApplication * app )
    */
    auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->polish(PQAPPLICATION(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPROXYSTYLE_UNPOLISH )
{
  if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    void unpolish( QWidget * widget )
    */
    auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->unpolish(PQWIDGET(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && ISQAPPLICATION(1))
  {
    /*
    void unpolish( QApplication * app )
    */
    auto obj = qobject_cast<QProxyStyle*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->unpolish(PQAPPLICATION(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
