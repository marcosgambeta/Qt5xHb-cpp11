//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDomCDATASection INHERIT QDomText

   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomCDATASection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomCDATASection>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QDomCDATASection>
#endif

HB_FUNC_STATIC(QDOMCDATASECTION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QDomCDATASection()
    */
    auto obj = new QDomCDATASection();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDOMCDATASECTION(1))
  {
    /*
    QDomCDATASection(const QDomCDATASection & x)
    */
    auto obj = new QDomCDATASection(*PQDOMCDATASECTION(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDOMCDATASECTION_DELETE)
{
  auto obj = static_cast<QDomCDATASection *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC(QDOMCDATASECTION_NODETYPE)
{
  auto obj = static_cast<QDomCDATASection *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->nodeType());
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
