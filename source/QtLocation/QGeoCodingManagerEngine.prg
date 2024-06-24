/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoCodingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManagerEngine>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManagerEngine>
#endif
#endif

#include <QtCore/QLocale>

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->managerName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->managerVersion());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if (ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2))
  {
    /*
    virtual QGeoCodeReply * geocode( const QGeoAddress & address, const QGeoShape & bounds )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->geocode(*PQGEOADDRESS(1), *PQGEOSHAPE(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
    }
#endif

  }
  else if (ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISNUM(3) && ISQGEOSHAPE(4))
  {
    /*
    virtual QGeoCodeReply * geocode( const QString & address, int limit, int offset, const QGeoShape & bounds )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->geocode(PQSTRING(1), PINT(2), PINT(3), *PQGEOSHAPE(4));
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual QGeoCodeReply * reverseGeocode( const QGeoCoordinate & coordinate, const QGeoShape & bounds )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOSHAPE(2))
    {
#endif
      auto ptr = obj->reverseGeocode(*PQGEOCOORDINATE(1), *PQGEOSHAPE(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOCODEREPLY");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLocale( const QLocale & locale )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLOCALE(1))
    {
#endif
      obj->setLocale(*PQLOCALE(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QLocale(obj->locale());
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void finished( QGeoCodeReply * reply )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("finished(QGeoCodeReply*)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QGeoCodingManagerEngine::finished,
                                           [sender, indexOfCodeBlock]
                                           (QGeoCodeReply * arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOCODINGMANAGERENGINE");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QGEOCODEREPLY");
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
#else
  hb_retl(false);
#endif
}

/*
void error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString = QString() )
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = qobject_cast<QGeoCodingManagerEngine*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoCodeReply*,QGeoCodeReply::Error,QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QGeoCodingManagerEngine::error,
                                           [sender, indexOfCodeBlock]
                                           (QGeoCodeReply * arg1, QGeoCodeReply::Error arg2, QString arg3) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOCODINGMANAGERENGINE");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QGEOCODEREPLY");
            auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
            auto pArg3 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg3));
            hb_vmEvalBlockV(cb, 4, pSender, pArg1, pArg2, pArg3);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
            hb_itemRelease(pArg3);
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
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
