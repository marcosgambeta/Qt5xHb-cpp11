%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
$virtualMethod=|QList<QSensorGestureRecognizer *>|createRecognizers|

$prototype=virtual QStringList supportedIds() const = 0
$virtualMethod=|QStringList|supportedIds|

$prototype=virtual QString name() const = 0
$virtualMethod=|QString|name|

$extraMethods

#pragma ENDDUMP
