%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QRotationSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QRotationReading *reading() const
$method=5,1,0|QRotationReading *|reading|

$prototype=bool hasZ() const
$method=5,1,0|bool|hasZ|

$prototype=void setHasZ(bool hasZ)
$method=5,1,0|void|setHasZ|bool

%%
%% SIGNALS
%%

$prototype=void hasZChanged( bool hasZ )
$signalMethod=5,1,0|void|hasZChanged|bool

#pragma ENDDUMP
