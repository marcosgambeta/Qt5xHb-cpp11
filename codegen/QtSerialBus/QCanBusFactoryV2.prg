%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,9,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCanBusFactory

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QCanBusFactoryV2() [protected]
%% $deleteMethod

$prototype=virtual QCanBusDevice *createDevice(const QString &interfaceName, QString *errorMessage) const = 0

$prototype=virtual QList<QCanBusDeviceInfo> availableDevices(QString *errorMessage) const = 0

#pragma ENDDUMP
