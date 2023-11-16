/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
#endif

CLASS QTextCodec

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD canEncode
   METHOD toUnicode
   METHOD fromUnicode
   METHOD makeDecoder
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForHtml
   METHOD codecForUtfText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextCodec
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTextCodec>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QTextCodec>
#endif

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    /*
    bool canEncode( QChar ) const
    */
    auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->canEncode( *PQCHAR(1) ) );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool canEncode( const QString & ) const
    */
    auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->canEncode( PQSTRING(1) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QString toUnicode( const QByteArray & ) const
    */
    auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RQSTRING( obj->toUnicode( *PQBYTEARRAY(1) ) );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString toUnicode( const char * chars ) const
    */
    auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RQSTRING( obj->toUnicode( PCONSTCHAR(1) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray fromUnicode( const QString & uc ) const
*/
HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QByteArray( obj->fromUnicode( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QTextDecoder * makeDecoder( QTextCodec::ConversionFlags flags = QTextCodec::DefaultConversion ) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      QTextDecoder * ptr = obj->makeDecoder( HB_ISNIL(1) ? static_cast<QTextCodec::ConversionFlags >( QTextCodec::DefaultConversion ) : static_cast<QTextCodec::ConversionFlags >( hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QTEXTDECODER", false);
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
QTextEncoder * makeEncoder( QTextCodec::ConversionFlags flags = QTextCodec::DefaultConversion ) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      QTextEncoder * ptr = obj->makeEncoder( HB_ISNIL(1) ? static_cast<QTextCodec::ConversionFlags >( QTextCodec::DefaultConversion ) : static_cast<QTextCodec::ConversionFlags >( hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QTEXTENCODER", false);
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
virtual QByteArray name() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_NAME )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->name() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
virtual QList<QByteArray> aliases() const
*/
HB_FUNC_STATIC( QTEXTCODEC_ALIASES )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QByteArray> list = obj->aliases();
      auto pDynSym = hb_dynsymFindName("QBYTEARRAY");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym != nullptr )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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
virtual int mibEnum() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_MIBENUM )
{
  auto obj = static_cast<QTextCodec*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->mibEnum() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QTextCodec * codecForName( const QByteArray & name )
    */

    QTextCodec * ptr = QTextCodec::codecForName( *PQBYTEARRAY(1) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QTextCodec * codecForName( const char * name )
    */

    QTextCodec * ptr = QTextCodec::codecForName( PCONSTCHAR(1) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QTextCodec * codecForMib( int mib )
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORMIB )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QTextCodec * ptr = QTextCodec::codecForMib( PINT(1) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QList<QByteArray> availableCodecs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLECODECS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    const QList<QByteArray> list = QTextCodec::availableCodecs();
    auto pDynSym = hb_dynsymFindName("QBYTEARRAY");
    auto pArray = hb_itemArrayNew(0);
    if( pDynSym != nullptr )
    {
      for( const auto & item : list )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        auto pDestroy = hb_itemPutL(nullptr, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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

/*
static QList<int> availableMibs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLEMIBS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<int> list = QTextCodec::availableMibs();
    Qt5xHb::convert_qlist_int_to_array( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QTextCodec * codecForLocale()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORLOCALE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QTextCodec * ptr = QTextCodec::codecForLocale();
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setCodecForLocale( QTextCodec * c )
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORLOCALE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
#endif
    QTextCodec::setCodecForLocale( PQTEXTCODEC(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QTextCodec * codecForHtml( const QByteArray & ba )
    */

    QTextCodec * ptr = QTextCodec::codecForHtml( *PQBYTEARRAY(1) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    /*
    static QTextCodec * codecForHtml( const QByteArray & ba, QTextCodec * defaultCodec )
    */

    QTextCodec * ptr = QTextCodec::codecForHtml( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QTextCodec * codecForUtfText( const QByteArray & ba )
    */

    QTextCodec * ptr = QTextCodec::codecForUtfText( *PQBYTEARRAY(1) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    /*
    static QTextCodec * codecForUtfText( const QByteArray & ba, QTextCodec * defaultCodec )
    */

    QTextCodec * ptr = QTextCodec::codecForUtfText( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
    Qt5xHb::createReturnClass(ptr, "QTEXTCODEC", false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTCODEC_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
