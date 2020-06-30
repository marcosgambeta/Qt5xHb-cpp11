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

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QLineSeries>

$prototype=explicit QAreaSeries(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)
$internalConstructor=|new2|QLineSeries *,QLineSeries *=nullptr

/*
[1]explicit QAreaSeries(QObject *parent = nullptr)
[2]explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)
*/

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAreaSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINESERIES(1) && (ISQLINESERIES(2)||ISNIL(2)) )
  {
    QAreaSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAreaSeries()
$deleteMethod

%%
%% Q_PROPERTY(QLineSeries *upperSeries READ upperSeries)
%%

$prototypeV2=QLineSeries * upperSeries() const

%%
%% Q_PROPERTY(QLineSeries *lowerSeries READ lowerSeries)
%%

$prototypeV2=QLineSeries * lowerSeries() const

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color() const

$prototypeV2=void setColor( const QColor & color )

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor() const

$prototypeV2=void setBorderColor( const QColor & color )

%%
%% Q_PROPERTY(QString pointLabelsFormat READ pointLabelsFormat WRITE setPointLabelsFormat NOTIFY pointLabelsFormatChanged)
%%

$prototypeV2=QString pointLabelsFormat() const

$prototypeV2=void setPointLabelsFormat( const QString & format )

%%
%% Q_PROPERTY(bool pointLabelsVisible READ pointLabelsVisible WRITE setPointLabelsVisible NOTIFY pointLabelsVisibilityChanged)
%%

$prototypeV2=bool pointLabelsVisible() const

$prototypeV2=void setPointLabelsVisible( bool visible = true )

%%
%% Q_PROPERTY(QFont pointLabelsFont READ pointLabelsFont WRITE setPointLabelsFont NOTIFY pointLabelsFontChanged)
%%

$prototypeV2=QFont pointLabelsFont() const

$prototypeV2=void setPointLabelsFont( const QFont & font )

%%
%% Q_PROPERTY(QColor pointLabelsColor READ pointLabelsColor WRITE setPointLabelsColor NOTIFY pointLabelsColorChanged)
%%

$prototypeV2=QColor pointLabelsColor() const

$prototypeV2=void setPointLabelsColor( const QColor & color )

%%
%% Q_PROPERTY(bool pointLabelsClipping READ pointLabelsClipping WRITE setPointLabelsClipping NOTIFY pointLabelsClippingChanged)
%%

$prototypeV2=bool pointLabelsClipping() const

$prototypeV2=void setPointLabelsClipping( bool enabled = true )

%%
%%
%%

$prototypeV2=QAbstractSeries::SeriesType type() const

$prototypeV2=void setUpperSeries( QLineSeries * series )

$prototypeV2=void setLowerSeries( QLineSeries * series )

$prototypeV2=void setPen( const QPen & pen )

$prototypeV2=QPen pen() const

$prototypeV2=void setBrush( const QBrush & brush )

$prototypeV2=QBrush brush() const

$prototypeV2=void setPointsVisible( bool visible = true )

$prototypeV2=bool pointsVisible() const

%%
%% SIGNALS
%%

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void clicked( const QPointF & point )
$signalMethod=|void|clicked|const QPointF &

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void doubleClicked( const QPointF & point )
$signalMethod=|void|doubleClicked|const QPointF &

$prototype=void hovered( const QPointF & point, bool state )
$signalMethod=|void|hovered|const QPointF &,bool

$prototype=void pointLabelsClippingChanged( bool clipping )
$signalMethod=|void|pointLabelsClippingChanged|bool

$prototype=void pointLabelsColorChanged( const QColor & color )
$signalMethod=|void|pointLabelsColorChanged|const QColor &

$prototype=void pointLabelsFontChanged( const QFont & font )
$signalMethod=|void|pointLabelsFontChanged|const QFont &

$prototype=void pointLabelsFormatChanged( const QString & format )
$signalMethod=|void|pointLabelsFormatChanged|const QString &

$prototype=void pointLabelsVisibilityChanged( bool visible )
$signalMethod=|void|pointLabelsVisibilityChanged|bool

$prototype=void pressed( const QPointF & point )
$signalMethod=|void|pressed|const QPointF &

$prototype=void released( const QPointF & point )
$signalMethod=|void|released|const QPointF &

$prototype=void selected()
$signalMethod=|void|selected|

#pragma ENDDUMP
