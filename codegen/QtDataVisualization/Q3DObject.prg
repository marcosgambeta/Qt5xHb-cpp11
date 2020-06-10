%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

#include <QtDataVisualization/Q3DScene>

$prototype=explicit Q3DObject(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DObject()
$deleteMethod

%%
%% Q_PROPERTY(Q3DScene* parentScene READ parentScene)
%%

$prototypeV2=Q3DScene * parentScene()

%%
%% Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototypeV2=QVector3D position() const

$prototype=void setPosition(const QVector3D &position)
$method=|void|setPosition|const QVector3D &

%%
%%
%%

$prototype=virtual void copyValuesFrom(const Q3DObject &source)
$virtualMethod=|void|copyValuesFrom|const Q3DObject &

$prototype=void setDirty(bool dirty) [protected]

$prototype=bool isDirty() const [protected]

%%
%% SIGNALS
%%

$prototype=void positionChanged( const QVector3D & position )
$signalMethod=|void|positionChanged|const QVector3D &

#pragma ENDDUMP
