/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraFeedbackControl INHERIT QMediaControl

   METHOD delete
   METHOD isEventFeedbackEnabled
   METHOD isEventFeedbackLocked
   METHOD resetEventFeedback
   METHOD setEventFeedbackEnabled
   METHOD setEventFeedbackSound

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraFeedbackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraFeedbackControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraFeedbackControl>
#endif

    /*
    ~QCameraFeedbackControl()
    */
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_DELETE)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual bool isEventFeedbackEnabled(QCameraFeedbackControl::EventType event) const = 0
*/
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKENABLED)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isEventFeedbackEnabled(static_cast<QCameraFeedbackControl::EventType>(hb_parni(1))));
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
virtual bool isEventFeedbackLocked(QCameraFeedbackControl::EventType event) const = 0
*/
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKLOCKED)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isEventFeedbackLocked(static_cast<QCameraFeedbackControl::EventType>(hb_parni(1))));
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
virtual void resetEventFeedback(QCameraFeedbackControl::EventType event) = 0
*/
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_RESETEVENTFEEDBACK)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resetEventFeedback(static_cast<QCameraFeedbackControl::EventType>(hb_parni(1)));
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
virtual bool setEventFeedbackEnabled(QCameraFeedbackControl::EventType event, bool enabled) = 0
*/
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKENABLED)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      RBOOL(obj->setEventFeedbackEnabled(static_cast<QCameraFeedbackControl::EventType>(hb_parni(1)), PBOOL(2)));
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
virtual bool setEventFeedbackSound(QCameraFeedbackControl::EventType event, const QString & filePath) = 0
*/
HB_FUNC_STATIC(QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKSOUND)
{
  auto obj = qobject_cast<QCameraFeedbackControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      RBOOL(obj->setEventFeedbackSound(static_cast<QCameraFeedbackControl::EventType>(hb_parni(1)), PQSTRING(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
