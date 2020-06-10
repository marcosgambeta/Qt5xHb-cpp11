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

$beginClassFrom=QAbstract3DSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QBar3DSeries(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = nullptr)
$internalConstructor=|new2|QBarDataProxy *,QObject *=nullptr

/*
[1]explicit QBar3DSeries(QObject *parent = nullptr)
[2]explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QBAR3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBar3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBARDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBar3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QBar3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(QBarDataProxy *dataProxy READ dataProxy WRITE setDataProxy NOTIFY dataProxyChanged)
%%

$prototypeV2=QBarDataProxy * dataProxy() const

$prototype=void setDataProxy(QBarDataProxy *proxy)
$method=|void|setDataProxy|QBarDataProxy *

%%
%% Q_PROPERTY(QPoint selectedBar READ selectedBar WRITE setSelectedBar NOTIFY selectedBarChanged)
%%

$prototypeV2=QPoint selectedBar() const

$prototype=void setSelectedBar(const QPoint &position)
$method=|void|setSelectedBar|const QPoint &

%%
%% Q_PROPERTY(float meshAngle READ meshAngle WRITE setMeshAngle NOTIFY meshAngleChanged)
%%

$prototypeV2=float meshAngle() const

$prototype=void setMeshAngle(float angle)
$method=|void|setMeshAngle|float

%%
%%
%%

$prototypeV2=static QPoint invalidSelectionPosition()

%%
%% SIGNALS
%%

$prototype=void dataProxyChanged( QBarDataProxy * proxy )
$signalMethod=|void|dataProxyChanged|QBarDataProxy *

$prototype=void selectedBarChanged( const QPoint & position )
$signalMethod=|void|selectedBarChanged|const QPoint &

$prototype=void meshAngleChanged( float angle )
$signalMethod=|void|meshAngleChanged|float

#pragma ENDDUMP
