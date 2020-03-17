/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newDate
   METHOD newObject
   METHOD newQMetaObject
   METHOD newQObject
   METHOD newRegExp
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScript/QScriptEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtScript/QScriptEngine>
#endif

#include <QtCore/QStringList>

/*
QScriptEngine()
*/
void QScriptEngine_new1 ()
{
  auto obj = new QScriptEngine ();
  _qt5xhb_returnNewObject( obj, false );
}

/*
QScriptEngine(QObject * parent)
*/
void QScriptEngine_new2 ()
{
  auto obj = new QScriptEngine ( PQOBJECT(1) );
  _qt5xhb_returnNewObject( obj, false );
}

//[1]QScriptEngine()
//[2]QScriptEngine(QObject * parent)

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QScriptEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINE_DELETE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void abortEvaluation(const QScriptValue & result = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ABORTEVALUATION )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQSCRIPTVALUE(1)||ISNIL(1)) )
    {
#endif
      obj->abortEvaluation ( ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptEngineAgent * agent() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AGENT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptEngineAgent * ptr = obj->agent ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINEAGENT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList availableExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AVAILABLEEXTENSIONS )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableExtensions () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clearExceptions()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CLEAREXCEPTIONS )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearExceptions ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void collectGarbage()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_COLLECTGARBAGE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->collectGarbage ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptContext * currentContext() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CURRENTCONTEXT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptContext * ptr = obj->currentContext ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue defaultPrototype(int metaTypeId) const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_DEFAULTPROTOTYPE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QScriptValue( obj->defaultPrototype ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
void QScriptEngine_evaluate1 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->evaluate ( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue evaluate(const QScriptProgram & program)
*/
void QScriptEngine_evaluate2 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->evaluate ( *PQSCRIPTPROGRAM(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
//[2]QScriptValue evaluate(const QScriptProgram & program)

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QScriptEngine_evaluate1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    QScriptEngine_evaluate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue globalObject() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_GLOBALOBJECT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScriptValue( obj->globalObject () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasUncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_HASUNCAUGHTEXCEPTION )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasUncaughtException () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue importExtension(const QString & extension)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEXTENSION )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QScriptValue( obj->importExtension ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList importedExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEDEXTENSIONS )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->importedExtensions () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_INSTALLTRANSLATORFUNCTIONS )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQSCRIPTVALUE(1)||ISNIL(1)) )
    {
#endif
      obj->installTranslatorFunctions ( ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEvaluating() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ISEVALUATING )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEvaluating () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWARRAY )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      auto ptr = new QScriptValue( obj->newArray ( OPUINT(1,0) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue newDate(const QDateTime & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWDATE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      auto ptr = new QScriptValue( obj->newDate ( *PQDATETIME(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue newObject()
*/
void QScriptEngine_newObject1 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newObject () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
*/
void QScriptEngine_newObject2 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newObject ( PQSCRIPTCLASS(1), ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newObject()
//[2]QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())

HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_newObject1();
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTCLASS(1) && (ISQSCRIPTVALUE(2)||ISNIL(2))  )
  {
    QScriptEngine_newObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWQMETAOBJECT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMETAOBJECT(1) && (ISQSCRIPTVALUE(2)||ISNIL(2)) )
    {
#endif
      auto ptr = new QScriptValue( obj->newQMetaObject ( PQMETAOBJECT(1), ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
void QScriptEngine_newQObject1 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newQObject ( PQOBJECT(1), ISNIL(2)? (QScriptEngine::ValueOwnership) QScriptEngine::QtOwnership : (QScriptEngine::ValueOwnership) hb_parni(2), ISNIL(3)? (QScriptEngine::QObjectWrapOptions) 0 : (QScriptEngine::QObjectWrapOptions) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
void QScriptEngine_newQObject2 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newQObject ( *PQSCRIPTVALUE(1), PQOBJECT(2), ISNIL(3)? (QScriptEngine::ValueOwnership) QScriptEngine::QtOwnership : (QScriptEngine::ValueOwnership) hb_parni(3), ISNIL(4)? (QScriptEngine::QObjectWrapOptions) 0 : (QScriptEngine::QObjectWrapOptions) hb_parni(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
//[2]QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWQOBJECT )
{
  if( ISBETWEEN(1,3) && ISQOBJECT(1) && ISOPTNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QScriptEngine_newQObject1();
  }
  else if( ISBETWEEN(2,4) && ISQSCRIPTVALUE(1) && ISQOBJECT(2) && ISOPTNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QScriptEngine_newQObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newRegExp(const QRegExp & regexp)
*/
void QScriptEngine_newRegExp1 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newRegExp ( *PQREGEXP(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newRegExp(const QString & pattern, const QString & flags)
*/
void QScriptEngine_newRegExp2 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newRegExp ( PQSTRING(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newRegExp(const QRegExp & regexp)
//[2]QScriptValue newRegExp(const QString & pattern, const QString & flags)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QScriptEngine_newRegExp1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QScriptEngine_newRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newVariant(const QVariant & value)
*/
void QScriptEngine_newVariant1 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newVariant ( *PQVARIANT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newVariant(const QScriptValue & object, const QVariant & value)
*/
void QScriptEngine_newVariant2 ()
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QScriptValue( obj->newVariant ( *PQSCRIPTVALUE(1), *PQVARIANT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newVariant(const QVariant & value)
//[2]QScriptValue newVariant(const QScriptValue & object, const QVariant & value)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QScriptEngine_newVariant1();
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    QScriptEngine_newVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue nullValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NULLVALUE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScriptValue( obj->nullValue () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void popContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_POPCONTEXT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->popContext ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int processEventsInterval() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PROCESSEVENTSINTERVAL )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->processEventsInterval () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptContext * pushContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PUSHCONTEXT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptContext * ptr = obj->pushContext ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void reportAdditionalMemoryCost(int size)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_REPORTADDITIONALMEMORYCOST )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->reportAdditionalMemoryCost ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAgent(QScriptEngineAgent * agent)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETAGENT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTENGINEAGENT(1) )
    {
#endif
      obj->setAgent ( PQSCRIPTENGINEAGENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETDEFAULTPROTOTYPE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSCRIPTVALUE(2) )
    {
#endif
      obj->setDefaultPrototype ( PINT(1), *PQSCRIPTVALUE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGlobalObject(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETGLOBALOBJECT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setGlobalObject ( *PQSCRIPTVALUE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProcessEventsInterval(int interval)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETPROCESSEVENTSINTERVAL )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setProcessEventsInterval ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptValue toObject(const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOOBJECT )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      auto ptr = new QScriptValue( obj->toObject ( *PQSCRIPTVALUE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptString toStringHandle(const QString & str)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOSTRINGHANDLE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QScriptString( obj->toStringHandle ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTSTRING", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue uncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTION )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScriptValue( obj->uncaughtException () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList uncaughtExceptionBacktrace() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONBACKTRACE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->uncaughtExceptionBacktrace () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int uncaughtExceptionLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONLINENUMBER )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->uncaughtExceptionLineNumber () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScriptValue undefinedValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNDEFINEDVALUE )
{
  auto obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScriptValue( obj->undefinedValue () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QScriptSyntaxCheckResult checkSyntax(const QString & program)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CHECKSYNTAX )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    auto ptr = new QScriptSyntaxCheckResult( QScriptEngine::checkSyntax ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTSYNTAXCHECKRESULT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void signalHandlerException( const QScriptValue & exception )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ONSIGNALHANDLEREXCEPTION )
{
  auto sender = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("signalHandlerException(QScriptValue)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScriptEngine::signalHandlerException, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QScriptValue & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSCRIPTENGINE" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QSCRIPTVALUE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
