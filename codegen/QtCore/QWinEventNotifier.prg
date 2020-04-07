%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWinEventNotifier(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr|#ifdef Q_OS_WIN

$prototype=explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = nullptr)
%% TODO: $internalConstructor=|new2|HANDLE,QObject *=nullptr|#ifdef Q_OS_WIN

/*
[1]explicit QWinEventNotifier(QObject *parent = nullptr)
[2]explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QWINEVENTNOTIFIER_NEW )
{
#ifdef Q_OS_WIN
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QWinEventNotifier_new1();
  }
%%   else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
%%   {
%%     QWinEventNotifier_new2();
%%   }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=|#ifdef Q_OS_WIN

$prototype=bool isEnabled() const
$method=|bool|isEnabled||#ifdef Q_OS_WIN

$prototype=void setEnabled(bool enable)
$method=|void|setEnabled|bool|#ifdef Q_OS_WIN

#pragma ENDDUMP
