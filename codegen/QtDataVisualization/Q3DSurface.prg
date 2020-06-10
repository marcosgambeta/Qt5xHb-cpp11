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

$beginClassFrom=QAbstract3DGraph

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DSurface(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
$constructor=|new|const QSurfaceFormat *=nullptr,QWindow *=nullptr

$prototype=virtual ~Q3DSurface()
$deleteMethod

%%
%% Q_PROPERTY(QValue3DAxis *axisX READ axisX WRITE setAxisX NOTIFY axisXChanged)
%%

$prototypeV2=QValue3DAxis * axisX() const

$prototype=void setAxisX(QValue3DAxis *axis)
$method=|void|setAxisX|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisY READ axisY WRITE setAxisY NOTIFY axisYChanged)
%%

$prototypeV2=QValue3DAxis * axisY() const

$prototype=void setAxisY(QValue3DAxis *axis)
$method=|void|setAxisY|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisZ READ axisZ WRITE setAxisZ NOTIFY axisZChanged)
%%

$prototypeV2=QValue3DAxis * axisZ() const

$prototype=void setAxisZ(QValue3DAxis *axis)
$method=|void|setAxisZ|QValue3DAxis *

%%
%% Q_PROPERTY(QSurface3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototypeV2=QSurface3DSeries * selectedSeries() const

%%
%% Q_PROPERTY(bool flipHorizontalGrid READ flipHorizontalGrid WRITE setFlipHorizontalGrid NOTIFY flipHorizontalGridChanged)
%%

$prototypeV2=bool flipHorizontalGrid() const

$prototype=void setFlipHorizontalGrid(bool flip)
$method=|void|setFlipHorizontalGrid|bool

%%
%%
%%

$prototype=void addSeries(QSurface3DSeries *series)
$method=|void|addSeries|QSurface3DSeries *

$prototype=void removeSeries(QSurface3DSeries *series)
$method=|void|removeSeries|QSurface3DSeries *

$prototype=QList<QSurface3DSeries *> seriesList() const
$method=|QList<QSurface3DSeries *>|seriesList|

$prototype=void addAxis(QValue3DAxis *axis)
$method=|void|addAxis|QValue3DAxis *

$prototype=void releaseAxis(QValue3DAxis *axis)
$method=|void|releaseAxis|QValue3DAxis *

$prototype=QList<QValue3DAxis *> axes() const
$method=|QList<QValue3DAxis *>|axes|

%%
%% SIGNALS
%%

$prototype=void axisXChanged( QValue3DAxis * axis )
$signalMethod=|void|axisXChanged|QValue3DAxis *

$prototype=void axisYChanged( QValue3DAxis * axis )
$signalMethod=|void|axisYChanged|QValue3DAxis *

$prototype=void axisZChanged( QValue3DAxis * axis )
$signalMethod=|void|axisZChanged|QValue3DAxis *

$prototype=void flipHorizontalGridChanged( bool flip )
$signalMethod=|void|flipHorizontalGridChanged|bool

$prototype=void selectedSeriesChanged( QSurface3DSeries * series )
$signalMethod=|void|selectedSeriesChanged|QSurface3DSeries *

#pragma ENDDUMP
