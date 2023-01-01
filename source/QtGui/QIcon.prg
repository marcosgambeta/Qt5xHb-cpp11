/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD cacheKey
   METHOD isNull
   METHOD name
   METHOD paint
   METHOD pixmap
   METHOD fromTheme
   METHOD hasThemeIcon
   METHOD setThemeName
   METHOD setThemeSearchPaths
   METHOD themeName
   METHOD themeSearchPaths
   METHOD fallbackThemeName
   METHOD setFallbackThemeName
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QIcon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QIcon>
#endif

#include <QtCore/QVariant>

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QIcon()
    */
    auto obj = new QIcon();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    /*
    QIcon( const QPixmap & pixmap )
    */
    auto obj = new QIcon( *PQPIXMAP(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    /*
    QIcon( const QIcon & other )
    */
    auto obj = new QIcon( HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon( hb_parc(1) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QIcon( const QString & fileName )
    */
    auto obj = new QIcon( PQSTRING(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_DELETE )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
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
QSize actualSize( const QSize & size, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
*/
HB_FUNC_STATIC( QICON_ACTUALSIZE )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && ISQSIZE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      auto ptr = new QSize( obj->actualSize( *PQSIZE(1), HB_ISNIL(2) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(3) ) ) );
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
void addFile( const QString & fileName, const QSize & size = QSize(), QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
*/
HB_FUNC_STATIC( QICON_ADDFILE )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 4) && HB_ISCHAR(1) && ( ISQSIZE(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      obj->addFile( PQSTRING(1), HB_ISNIL(2) ? QSize() : *static_cast<QSize*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(4) ) );
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
void addPixmap( const QPixmap & pixmap, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
*/
HB_FUNC_STATIC( QICON_ADDPIXMAP )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && ISQPIXMAP(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      obj->addPixmap( *PQPIXMAP(1), HB_ISNIL(2) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(3) ) );
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
QList<QSize> availableSizes( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( HB_ISNUM(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      const QList<QSize> list = obj->availableSizes( HB_ISNIL(1) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(1) ), HB_ISNIL(2) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(2) ) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QSIZE");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QSize(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSIZE", HB_ERR_ARGS_BASEPARAMS);
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
qint64 cacheKey() const
*/
HB_FUNC_STATIC( QICON_CACHEKEY )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheKey() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QICON_ISNULL )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
HB_FUNC_STATIC( QICON_NAME )
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2, 5) && ISQPAINTER(1) && ISQRECT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
    /*
    void paint( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->paint( PQPAINTER(1), *PQRECT(2), HB_ISNIL(3) ? static_cast<Qt::Alignment >( Qt::AlignCenter ) : static_cast<Qt::Alignment >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(4) ), HB_ISNIL(5) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(5) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISBETWEEN(5, 8) && ISQPAINTER(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) && ( HB_ISNUM(7) || HB_ISNIL(7) ) && ( HB_ISNUM(8) || HB_ISNIL(8) ) )
  {
    /*
    void paint( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->paint( PQPAINTER(1), PINT(2), PINT(3), PINT(4), PINT(5), HB_ISNIL(6) ? static_cast<Qt::Alignment >( Qt::AlignCenter ) : static_cast<Qt::Alignment >( hb_parni(6) ), HB_ISNIL(7) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(7) ), HB_ISNIL(8) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(8) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1, 3) && ISQSIZE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    QPixmap pixmap( const QSize & size, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPixmap( obj->pixmap( *PQSIZE(1), HB_ISNIL(2) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(3) ) ) );
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }

  }
  else if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    QPixmap pixmap( int w, int h, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPixmap( obj->pixmap( PINT(1), PINT(2), HB_ISNIL(3) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(4) ) ) );
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }

  }
  else if( ISBETWEEN(1, 3) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    QPixmap pixmap( int extent, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPixmap( obj->pixmap( PINT(1), HB_ISNIL(2) ? static_cast<QIcon::Mode >( QIcon::Normal ) : static_cast<QIcon::Mode >( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QIcon::State >( QIcon::Off ) : static_cast<QIcon::State >( hb_parni(3) ) ) );
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QIcon fromTheme( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC_STATIC( QICON_FROMTHEME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQICON(2) || HB_ISNIL(2) ) )
  {
#endif
    auto ptr = new QIcon( QIcon::fromTheme( PQSTRING(1), HB_ISNIL(2) ? QIcon() : *static_cast<QIcon*>(Qt5xHb::itemGetPtr(2)) ) );
    Qt5xHb::createReturnClass(ptr, "QICON", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool hasThemeIcon( const QString & name )
*/
HB_FUNC_STATIC( QICON_HASTHEMEICON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QIcon::hasThemeIcon( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setThemeName( const QString & name )
*/
HB_FUNC_STATIC( QICON_SETTHEMENAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QIcon::setThemeName( PQSTRING(1) );
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
static void setThemeSearchPaths( const QStringList & paths )
*/
HB_FUNC_STATIC( QICON_SETTHEMESEARCHPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
#endif
    QIcon::setThemeSearchPaths( PQSTRINGLIST(1) );
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
static QString themeName()
*/
HB_FUNC_STATIC( QICON_THEMENAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QIcon::themeName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList themeSearchPaths()
*/
HB_FUNC_STATIC( QICON_THEMESEARCHPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QIcon::themeSearchPaths() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString fallbackThemeName()
*/
HB_FUNC_STATIC( QICON_FALLBACKTHEMENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QIcon::fallbackThemeName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setFallbackThemeName( const QString & name )
*/
HB_FUNC_STATIC( QICON_SETFALLBACKTHEMENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QIcon::setFallbackThemeName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVariant toVariant()
*/
void QIcon_toVariant1()
{
  auto obj = static_cast<QIcon*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QIcon>( *obj );
    Qt5xHb::createReturnClass( variant, "QVARIANT", true);
  }
}

/*
static QVariant toVariant( const QIcon & )
*/
void QIcon_toVariant2()
{
  QIcon * icon = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QIcon>( *icon );
  Qt5xHb::createReturnClass( variant, "QVARIANT", true);
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QIcon & )

HB_FUNC_STATIC( QICON_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QIcon_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    QIcon_toVariant2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QIcon fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QICON_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIcon * icon = new QIcon( variant->value<QIcon>() );
    Qt5xHb::createReturnClass( icon, "QICON", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QICON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QICON_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
