/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QtXmlVersion>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QtXmlVersion>
#endif

HB_FUNC( QTXML_VERSION_STR )
{
  hb_retc( (const char *) QTXML_VERSION_STR );
}

HB_FUNC( QTXML_VERSION )
{
  hb_retni( QTXML_VERSION );
}
