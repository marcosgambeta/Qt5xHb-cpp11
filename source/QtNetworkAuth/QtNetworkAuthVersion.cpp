/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtNetworkAuth/QtNetworkAuthVersion>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtNetworkAuth/QtNetworkAuthVersion>
#endif
#endif

HB_FUNC(QTNETWORKAUTH_VERSION_STR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  hb_retc((const char *)QTNETWORKAUTH_VERSION_STR);
#else
  hb_retc("");
#endif
}

HB_FUNC(QTNETWORKAUTH_VERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  hb_retni(QTNETWORKAUTH_VERSION);
#else
  hb_retni(0);
#endif
}
