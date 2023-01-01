/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTPOSITIONING_H
#define QT5XHB_MACROS_QTPOSITIONING_H

#define ISQGEOADDRESS( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QGeoAddress" )
#define ISQGEOAREAMONITORINFO( n )                          Qt5xHb::isObjectDerivedFrom( n, "QGeoAreaMonitorInfo" )
#define ISQGEOAREAMONITORSOURCE( n )                        Qt5xHb::isObjectDerivedFrom( n, "QGeoAreaMonitorSource" )
#define ISQGEOCIRCLE( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QGeoCircle" )
#define ISQGEOCOORDINATE( n )                               Qt5xHb::isObjectDerivedFrom( n, "QGeoCoordinate" )
#define ISQGEOLOCATION( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QGeoLocation" )
#define ISQGEOPOSITIONINFO( n )                             Qt5xHb::isObjectDerivedFrom( n, "QGeoPositionInfo" )
#define ISQGEOPOSITIONINFOSOURCE( n )                       Qt5xHb::isObjectDerivedFrom( n, "QGeoPositionInfoSource" )
#define ISQGEOPOSITIONINFOSOURCEFACTORY( n )                Qt5xHb::isObjectDerivedFrom( n, "QGeoPositionInfoSourceFactory" )
#define ISQGEORECTANGLE( n )                                Qt5xHb::isObjectDerivedFrom( n, "QGeoRectangle" )
#define ISQGEOSATELLITEINFO( n )                            Qt5xHb::isObjectDerivedFrom( n, "QGeoSatelliteInfo" )
#define ISQGEOSATELLITEINFOSOURCE( n )                      Qt5xHb::isObjectDerivedFrom( n, "QGeoSatelliteInfoSource" )
#define ISQGEOSHAPE( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QGeoShape" )
#define ISQNMEAPOSITIONINFOSOURCE( n )                      Qt5xHb::isObjectDerivedFrom( n, "QNmeaPositionInfoSource" )

#define PQGEOADDRESS( n )                                   static_cast< QGeoAddress * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOAREAMONITORINFO( n )                           static_cast< QGeoAreaMonitorInfo * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOAREAMONITORSOURCE( n )                         static_cast< QGeoAreaMonitorSource * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOCIRCLE( n )                                    static_cast< QGeoCircle * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOCOORDINATE( n )                                static_cast< QGeoCoordinate * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOLOCATION( n )                                  static_cast< QGeoLocation * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOPOSITIONINFO( n )                              static_cast< QGeoPositionInfo * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOPOSITIONINFOSOURCE( n )                        static_cast< QGeoPositionInfoSource * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOPOSITIONINFOSOURCEFACTORY( n )                 static_cast< QGeoPositionInfoSourceFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEORECTANGLE( n )                                 static_cast< QGeoRectangle * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOSATELLITEINFO( n )                             static_cast< QGeoSatelliteInfo * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOSATELLITEINFOSOURCE( n )                       static_cast< QGeoSatelliteInfoSource * >( Qt5xHb::itemGetPtr( n ) )
#define PQGEOSHAPE( n )                                     static_cast< QGeoShape * >( Qt5xHb::itemGetPtr( n ) )
#define PQNMEAPOSITIONINFOSOURCE( n )                       static_cast< QNmeaPositionInfoSource * >( Qt5xHb::itemGetPtr( n ) )

#define OPQGEOADDRESS( n, v )                               HB_ISNIL( n )? v : static_cast< QGeoAddress * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOAREAMONITORINFO( n, v )                       HB_ISNIL( n )? v : static_cast< QGeoAreaMonitorInfo * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOAREAMONITORSOURCE( n, v )                     HB_ISNIL( n )? v : static_cast< QGeoAreaMonitorSource * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOCIRCLE( n, v )                                HB_ISNIL( n )? v : static_cast< QGeoCircle * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOCOORDINATE( n, v )                            HB_ISNIL( n )? v : static_cast< QGeoCoordinate * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOLOCATION( n, v )                              HB_ISNIL( n )? v : static_cast< QGeoLocation * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOPOSITIONINFO( n, v )                          HB_ISNIL( n )? v : static_cast< QGeoPositionInfo * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOPOSITIONINFOSOURCE( n, v )                    HB_ISNIL( n )? v : static_cast< QGeoPositionInfoSource * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOPOSITIONINFOSOURCEFACTORY( n, v )             HB_ISNIL( n )? v : static_cast< QGeoPositionInfoSourceFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEORECTANGLE( n, v )                             HB_ISNIL( n )? v : static_cast< QGeoRectangle * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOSATELLITEINFO( n, v )                         HB_ISNIL( n )? v : static_cast< QGeoSatelliteInfo * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOSATELLITEINFOSOURCE( n, v )                   HB_ISNIL( n )? v : static_cast< QGeoSatelliteInfoSource * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGEOSHAPE( n, v )                                 HB_ISNIL( n )? v : static_cast< QGeoShape * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNMEAPOSITIONINFOSOURCE( n, v )                   HB_ISNIL( n )? v : static_cast< QNmeaPositionInfoSource * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTPOSITIONING_H */
