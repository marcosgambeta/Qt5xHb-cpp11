/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QLCDNumber INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD checkOverflow
   METHOD digitCount
   METHOD intValue
   METHOD mode
   METHOD segmentStyle
   METHOD setDigitCount
   METHOD setMode
   METHOD setSegmentStyle
   METHOD smallDecimalPoint
   METHOD value
   METHOD sizeHint
   METHOD display
   METHOD setBinMode
   METHOD setDecMode
   METHOD setHexMode
   METHOD setOctMode
   METHOD setSmallDecimalPoint

   METHOD onOverflow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLCDNumber
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QLCDNumber>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QLCDNumber>
#endif

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QLCDNumber( QWidget * parent = nullptr )
    */
    auto obj = new QLCDNumber( OPQWIDGET( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QLCDNumber( uint numDigits, QWidget * parent = nullptr )
    */
    auto obj = new QLCDNumber(PUINT(1), OPQWIDGET( 2, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QLCDNUMBER_DELETE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    auto pNum = hb_param(1, HB_IT_NUMERIC);
    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        /*
        bool checkOverflow( double num ) const
        */
        auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

        if (obj != nullptr)
        {
          RBOOL(obj->checkOverflow(PDOUBLE(1)));
        }

      }
      else if( HB_IS_INTEGER(pNum) )
      {
        /*
        bool checkOverflow( int num ) const
        */
        auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

        if (obj != nullptr)
        {
          RBOOL(obj->checkOverflow(PINT(1)));
        }

      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int digitCount() const
*/
HB_FUNC_STATIC( QLCDNUMBER_DIGITCOUNT )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->digitCount());
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
int intValue() const
*/
HB_FUNC_STATIC( QLCDNUMBER_INTVALUE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->intValue());
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
QLCDNumber::Mode mode() const
*/
HB_FUNC_STATIC( QLCDNUMBER_MODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->mode());
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
QLCDNumber::SegmentStyle segmentStyle() const
*/
HB_FUNC_STATIC( QLCDNUMBER_SEGMENTSTYLE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->segmentStyle());
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
void setDigitCount( int numDigits )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDIGITCOUNT )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDigitCount(PINT(1));
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
void setMode( QLCDNumber::Mode )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETMODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMode( static_cast<QLCDNumber::Mode>( hb_parni(1)));
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
void setSegmentStyle( QLCDNumber::SegmentStyle )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSEGMENTSTYLE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSegmentStyle( static_cast<QLCDNumber::SegmentStyle>( hb_parni(1)));
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
bool smallDecimalPoint() const
*/
HB_FUNC_STATIC( QLCDNUMBER_SMALLDECIMALPOINT )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->smallDecimalPoint());
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
double value() const
*/
HB_FUNC_STATIC( QLCDNUMBER_VALUE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RDOUBLE(obj->value());
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
HB_FUNC_STATIC( QLCDNUMBER_SIZEHINT )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSize(obj->sizeHint());
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

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if (ISNUMPAR(1))
  {
    if( HB_ISCHAR(1))
    {
      /*
      void display( const QString & s )
      */
      auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

      if (obj != nullptr)
      {
        obj->display(PQSTRING(1));
      }

      hb_itemReturn(hb_stackSelfItem());

    }
    else if( HB_ISNUM(1))
    {
      auto pNum = hb_param(1, HB_IT_NUMERIC);
      if( pNum )
      {
        if( HB_IS_DOUBLE(pNum) )
        {
          /*
          void display( double num )
          */
          auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

          if (obj != nullptr)
          {
            obj->display(PDOUBLE(1));
          }

          hb_itemReturn(hb_stackSelfItem());

        }
        else if( HB_IS_INTEGER(pNum) )
        {
          /*
          void display( int num )
          */
          auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

          if (obj != nullptr)
          {
            obj->display(PINT(1));
          }

          hb_itemReturn(hb_stackSelfItem());

        }
        else
        {
          hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
        }
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setBinMode()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETBINMODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->setBinMode();
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
void setDecMode()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDECMODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->setDecMode();
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
void setHexMode()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETHEXMODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->setHexMode();
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
void setOctMode()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETOCTMODE )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->setOctMode();
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
void setSmallDecimalPoint( bool )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSMALLDECIMALPOINT )
{
  auto obj = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setSmallDecimalPoint(PBOOL(1));
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
void overflow()
*/
HB_FUNC_STATIC( QLCDNUMBER_ONOVERFLOW )
{
  auto sender = qobject_cast<QLCDNumber*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("overflow()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QLCDNumber::overflow,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QLCDNUMBER");
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
