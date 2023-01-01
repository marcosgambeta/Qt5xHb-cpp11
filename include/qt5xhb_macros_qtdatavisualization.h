/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTDATAVISUALIZATION_H
#define QT5XHB_MACROS_QTDATAVISUALIZATION_H

#define ISQ3DBARS( n )                                      Qt5xHb::isObjectDerivedFrom( n, "Q3DBars" )
#define ISQ3DCAMERA( n )                                    Qt5xHb::isObjectDerivedFrom( n, "Q3DCamera" )
#define ISQ3DINPUTHANDLER( n )                              Qt5xHb::isObjectDerivedFrom( n, "Q3DInputHandler" )
#define ISQ3DLIGHT( n )                                     Qt5xHb::isObjectDerivedFrom( n, "Q3DLight" )
#define ISQ3DOBJECT( n )                                    Qt5xHb::isObjectDerivedFrom( n, "Q3DObject" )
#define ISQ3DSCATTER( n )                                   Qt5xHb::isObjectDerivedFrom( n, "Q3DScatter" )
#define ISQ3DSCENE( n )                                     Qt5xHb::isObjectDerivedFrom( n, "Q3DScene" )
#define ISQ3DSURFACE( n )                                   Qt5xHb::isObjectDerivedFrom( n, "Q3DSurface" )
#define ISQ3DTHEME( n )                                     Qt5xHb::isObjectDerivedFrom( n, "Q3DTheme" )
#define ISQABSTRACT3DAXIS( n )                              Qt5xHb::isObjectDerivedFrom( n, "QAbstract3DAxis" )
#define ISQABSTRACT3DGRAPH( n )                             Qt5xHb::isObjectDerivedFrom( n, "QAbstract3DGraph" )
#define ISQABSTRACT3DINPUTHANDLER( n )                      Qt5xHb::isObjectDerivedFrom( n, "QAbstract3DInputHandler" )
#define ISQABSTRACT3DSERIES( n )                            Qt5xHb::isObjectDerivedFrom( n, "QAbstract3DSeries" )
#define ISQABSTRACTDATAPROXY( n )                           Qt5xHb::isObjectDerivedFrom( n, "QAbstractDataProxy" )
#define ISQBAR3DSERIES( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QBar3DSeries" )
#define ISQBARDATAITEM( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QBarDataItem" )
#define ISQBARDATAPROXY( n )                                Qt5xHb::isObjectDerivedFrom( n, "QBarDataProxy" )
#define ISQCATEGORY3DAXIS( n )                              Qt5xHb::isObjectDerivedFrom( n, "QCategory3DAxis" )
#define ISQCUSTOM3DITEM( n )                                Qt5xHb::isObjectDerivedFrom( n, "QCustom3DItem" )
#define ISQCUSTOM3DLABEL( n )                               Qt5xHb::isObjectDerivedFrom( n, "QCustom3DLabel" )
#define ISQCUSTOM3DVOLUME( n )                              Qt5xHb::isObjectDerivedFrom( n, "QCustom3DVolume" )
#define ISQHEIGHTMAPSURFACEDATAPROXY( n )                   Qt5xHb::isObjectDerivedFrom( n, "QHeightMapSurfaceDataProxy" )
#define ISQITEMMODELBARDATAPROXY( n )                       Qt5xHb::isObjectDerivedFrom( n, "QItemModelBarDataProxy" )
#define ISQITEMMODELSCATTERDATAPROXY( n )                   Qt5xHb::isObjectDerivedFrom( n, "QItemModelScatterDataProxy" )
#define ISQITEMMODELSURFACEDATAPROXY( n )                   Qt5xHb::isObjectDerivedFrom( n, "QItemModelSurfaceDataProxy" )
#define ISQLOGVALUE3DAXISFORMATTER( n )                     Qt5xHb::isObjectDerivedFrom( n, "QLogValue3DAxisFormatter" )
#define ISQSCATTER3DSERIES( n )                             Qt5xHb::isObjectDerivedFrom( n, "QScatter3DSeries" )
#define ISQSCATTERDATAITEM( n )                             Qt5xHb::isObjectDerivedFrom( n, "QScatterDataItem" )
#define ISQSCATTERDATAPROXY( n )                            Qt5xHb::isObjectDerivedFrom( n, "QScatterDataProxy" )
#define ISQSURFACE3DSERIES( n )                             Qt5xHb::isObjectDerivedFrom( n, "QSurface3DSeries" )
#define ISQSURFACEDATAITEM( n )                             Qt5xHb::isObjectDerivedFrom( n, "QSurfaceDataItem" )
#define ISQSURFACEDATAPROXY( n )                            Qt5xHb::isObjectDerivedFrom( n, "QSurfaceDataProxy" )
#define ISQTOUCH3DINPUTHANDLER( n )                         Qt5xHb::isObjectDerivedFrom( n, "QTouch3DInputHandler" )
#define ISQVALUE3DAXIS( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QValue3DAxis" )
#define ISQVALUE3DAXISFORMATTER( n )                        Qt5xHb::isObjectDerivedFrom( n, "QValue3DAxisFormatter" )

#define PQ3DBARS( n )                                       static_cast< Q3DBars * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DCAMERA( n )                                     static_cast< Q3DCamera * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DINPUTHANDLER( n )                               static_cast< Q3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DLIGHT( n )                                      static_cast< Q3DLight * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DOBJECT( n )                                     static_cast< Q3DObject * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DSCATTER( n )                                    static_cast< Q3DScatter * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DSCENE( n )                                      static_cast< Q3DScene * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DSURFACE( n )                                    static_cast< Q3DSurface * >( Qt5xHb::itemGetPtr( n ) )
#define PQ3DTHEME( n )                                      static_cast< Q3DTheme * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACT3DAXIS( n )                               static_cast< QAbstract3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACT3DGRAPH( n )                              static_cast< QAbstract3DGraph * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACT3DINPUTHANDLER( n )                       static_cast< QAbstract3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACT3DSERIES( n )                             static_cast< QAbstract3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACTDATAPROXY( n )                            static_cast< QAbstractDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQBAR3DSERIES( n )                                  static_cast< QBar3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define PQBARDATAITEM( n )                                  static_cast< QBarDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQBARDATAPROXY( n )                                 static_cast< QBarDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQCATEGORY3DAXIS( n )                               static_cast< QCategory3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define PQCUSTOM3DITEM( n )                                 static_cast< QCustom3DItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQCUSTOM3DLABEL( n )                                static_cast< QCustom3DLabel * >( Qt5xHb::itemGetPtr( n ) )
#define PQCUSTOM3DVOLUME( n )                               static_cast< QCustom3DVolume * >( Qt5xHb::itemGetPtr( n ) )
#define PQHEIGHTMAPSURFACEDATAPROXY( n )                    static_cast< QHeightMapSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQITEMMODELBARDATAPROXY( n )                        static_cast< QItemModelBarDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQITEMMODELSCATTERDATAPROXY( n )                    static_cast< QItemModelScatterDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQITEMMODELSURFACEDATAPROXY( n )                    static_cast< QItemModelSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQLOGVALUE3DAXISFORMATTER( n )                      static_cast< QLogValue3DAxisFormatter * >( Qt5xHb::itemGetPtr( n ) )
#define PQSCATTER3DSERIES( n )                              static_cast< QScatter3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define PQSCATTERDATAITEM( n )                              static_cast< QScatterDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQSCATTERDATAPROXY( n )                             static_cast< QScatterDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQSURFACE3DSERIES( n )                              static_cast< QSurface3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define PQSURFACEDATAITEM( n )                              static_cast< QSurfaceDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQSURFACEDATAPROXY( n )                             static_cast< QSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQTOUCH3DINPUTHANDLER( n )                          static_cast< QTouch3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define PQVALUE3DAXIS( n )                                  static_cast< QValue3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define PQVALUE3DAXISFORMATTER( n )                         static_cast< QValue3DAxisFormatter * >( Qt5xHb::itemGetPtr( n ) )

#define OPQ3DBARS( n, v )                                   HB_ISNIL( n )? v : static_cast< Q3DBars * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DCAMERA( n, v )                                 HB_ISNIL( n )? v : static_cast< Q3DCamera * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DINPUTHANDLER( n, v )                           HB_ISNIL( n )? v : static_cast< Q3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DLIGHT( n, v )                                  HB_ISNIL( n )? v : static_cast< Q3DLight * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DOBJECT( n, v )                                 HB_ISNIL( n )? v : static_cast< Q3DObject * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DSCATTER( n, v )                                HB_ISNIL( n )? v : static_cast< Q3DScatter * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DSCENE( n, v )                                  HB_ISNIL( n )? v : static_cast< Q3DScene * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DSURFACE( n, v )                                HB_ISNIL( n )? v : static_cast< Q3DSurface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQ3DTHEME( n, v )                                  HB_ISNIL( n )? v : static_cast< Q3DTheme * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACT3DAXIS( n, v )                           HB_ISNIL( n )? v : static_cast< QAbstract3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACT3DGRAPH( n, v )                          HB_ISNIL( n )? v : static_cast< QAbstract3DGraph * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACT3DINPUTHANDLER( n, v )                   HB_ISNIL( n )? v : static_cast< QAbstract3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACT3DSERIES( n, v )                         HB_ISNIL( n )? v : static_cast< QAbstract3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACTDATAPROXY( n, v )                        HB_ISNIL( n )? v : static_cast< QAbstractDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQBAR3DSERIES( n, v )                              HB_ISNIL( n )? v : static_cast< QBar3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define OPQBARDATAITEM( n, v )                              HB_ISNIL( n )? v : static_cast< QBarDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQBARDATAPROXY( n, v )                             HB_ISNIL( n )? v : static_cast< QBarDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQCATEGORY3DAXIS( n, v )                           HB_ISNIL( n )? v : static_cast< QCategory3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define OPQCUSTOM3DITEM( n, v )                             HB_ISNIL( n )? v : static_cast< QCustom3DItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQCUSTOM3DLABEL( n, v )                            HB_ISNIL( n )? v : static_cast< QCustom3DLabel * >( Qt5xHb::itemGetPtr( n ) )
#define OPQCUSTOM3DVOLUME( n, v )                           HB_ISNIL( n )? v : static_cast< QCustom3DVolume * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHEIGHTMAPSURFACEDATAPROXY( n, v )                HB_ISNIL( n )? v : static_cast< QHeightMapSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQITEMMODELBARDATAPROXY( n, v )                    HB_ISNIL( n )? v : static_cast< QItemModelBarDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQITEMMODELSCATTERDATAPROXY( n, v )                HB_ISNIL( n )? v : static_cast< QItemModelScatterDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQITEMMODELSURFACEDATAPROXY( n, v )                HB_ISNIL( n )? v : static_cast< QItemModelSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQLOGVALUE3DAXISFORMATTER( n, v )                  HB_ISNIL( n )? v : static_cast< QLogValue3DAxisFormatter * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSCATTER3DSERIES( n, v )                          HB_ISNIL( n )? v : static_cast< QScatter3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSCATTERDATAITEM( n, v )                          HB_ISNIL( n )? v : static_cast< QScatterDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSCATTERDATAPROXY( n, v )                         HB_ISNIL( n )? v : static_cast< QScatterDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSURFACE3DSERIES( n, v )                          HB_ISNIL( n )? v : static_cast< QSurface3DSeries * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSURFACEDATAITEM( n, v )                          HB_ISNIL( n )? v : static_cast< QSurfaceDataItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSURFACEDATAPROXY( n, v )                         HB_ISNIL( n )? v : static_cast< QSurfaceDataProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTOUCH3DINPUTHANDLER( n, v )                      HB_ISNIL( n )? v : static_cast< QTouch3DInputHandler * >( Qt5xHb::itemGetPtr( n ) )
#define OPQVALUE3DAXIS( n, v )                              HB_ISNIL( n )? v : static_cast< QValue3DAxis * >( Qt5xHb::itemGetPtr( n ) )
#define OPQVALUE3DAXISFORMATTER( n, v )                     HB_ISNIL( n )? v : static_cast< QValue3DAxisFormatter * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTDATAVISUALIZATION_H */
