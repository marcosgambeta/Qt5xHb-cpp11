%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QChart

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QPolarChart(QGraphicsItem *parent = nullptr, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=|new|QGraphicsItem *=nullptr,Qt::WindowFlags=Qt::WindowFlags()

$prototype=~QPolarChart()
$deleteMethod

$prototypeV2=void addAxis( QAbstractAxis * axis, QPolarChart::PolarOrientation polarOrientation)

$prototype=QList<QAbstractAxis*> axes(PolarOrientations polarOrientation = PolarOrientations(PolarOrientationRadial | PolarOrientationAngular), QAbstractSeries *series = nullptr) const
%% TODO: implementar
%% $method=|QList<QAbstractAxis *>|axes|QPolarChart::PolarOrientations=QPolarChart::PolarOrientations( QPolarChart::PolarOrientationRadial OR QPolarChart::PolarOrientationAngular ),QAbstractSeries *=nullptr

$prototypeV2=static QPolarChart::PolarOrientation axisPolarOrientation( QAbstractAxis * axis )

#pragma ENDDUMP
