%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGeoPositionInfo()
$internalConstructor=|new1|

$prototype=QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
$internalConstructor=|new2|const QGeoCoordinate &,const QDateTime &

$prototype=QGeoPositionInfo(const QGeoPositionInfo &other)
$internalConstructor=|new3|const QGeoPositionInfo &

/*
[1]QGeoPositionInfo()
[2]QGeoPositionInfo(const QGeoCoordinate &coordinate, const QDateTime &updateTime)
[3]QGeoPositionInfo(const QGeoPositionInfo &other)
*/

HB_FUNC_STATIC( QGEOPOSITIONINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoPositionInfo_new1();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQDATETIME(2) )
  {
    QGeoPositionInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOPOSITIONINFO(1) )
  {
    QGeoPositionInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototype=void setTimestamp(const QDateTime &timestamp)
$method=|void|setTimestamp|const QDateTime &

$prototypeV2=QDateTime timestamp() const

$prototype=void setCoordinate(const QGeoCoordinate &coordinate)
$method=|void|setCoordinate|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate coordinate() const

$prototype=void setAttribute(Attribute attribute, qreal value)
$method=|void|setAttribute|QGeoPositionInfo::Attribute,qreal

$prototype=qreal attribute(Attribute attribute) const
$method=|qreal|attribute|QGeoPositionInfo::Attribute

$prototype=void removeAttribute(Attribute attribute)
$method=|void|removeAttribute|QGeoPositionInfo::Attribute

$prototype=bool hasAttribute(Attribute attribute) const
$method=|bool|hasAttribute|QGeoPositionInfo::Attribute

$extraMethods

#pragma ENDDUMP
