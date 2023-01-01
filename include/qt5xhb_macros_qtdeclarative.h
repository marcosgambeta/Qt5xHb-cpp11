/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTDECLARATIVE_H
#define QT5XHB_MACROS_QTDECLARATIVE_H

#define ISQDECLARATIVECOMPONENT( n )                        Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeComponent" )
#define ISQDECLARATIVECONTEXT( n )                          Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeContext" )
#define ISQDECLARATIVEENGINE( n )                           Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeEngine" )
#define ISQDECLARATIVEERROR( n )                            Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeError" )
#define ISQDECLARATIVEEXPRESSION( n )                       Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeExpression" )
#define ISQDECLARATIVEEXTENSIONPLUGIN( n )                  Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeExtensionPlugin" )
#define ISQDECLARATIVEIMAGEPROVIDER( n )                    Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeImageProvider" )
#define ISQDECLARATIVEITEM( n )                             Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeItem" )
#define ISQDECLARATIVELISTREFERENCE( n )                    Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeListReference" )
#define ISQDECLARATIVENETWORKACCESSMANAGERFACTORY( n )      Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeNetworkAccessManagerFactory" )
#define ISQDECLARATIVEPARSERSTATUS( n )                     Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeParserStatus" )
#define ISQDECLARATIVEPROPERTY( n )                         Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeProperty" )
#define ISQDECLARATIVEPROPERTYMAP( n )                      Qt5xHb::isObjectDerivedFrom( n, "QDeclarativePropertyMap" )
#define ISQDECLARATIVEPROPERTYVALUESOURCE( n )              Qt5xHb::isObjectDerivedFrom( n, "QDeclarativePropertyValueSource" )
#define ISQDECLARATIVESCRIPTSTRING( n )                     Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeScriptString" )
#define ISQDECLARATIVEVIEW( n )                             Qt5xHb::isObjectDerivedFrom( n, "QDeclarativeView" )

#define PQDECLARATIVECOMPONENT( n )                         static_cast< QDeclarativeComponent * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVECONTEXT( n )                           static_cast< QDeclarativeContext * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEENGINE( n )                            static_cast< QDeclarativeEngine * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEERROR( n )                             static_cast< QDeclarativeError * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEEXPRESSION( n )                        static_cast< QDeclarativeExpression * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEEXTENSIONPLUGIN( n )                   static_cast< QDeclarativeExtensionPlugin * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEIMAGEPROVIDER( n )                     static_cast< QDeclarativeImageProvider * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEITEM( n )                              static_cast< QDeclarativeItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVELISTREFERENCE( n )                     static_cast< QDeclarativeListReference * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVENETWORKACCESSMANAGERFACTORY( n )       static_cast< QDeclarativeNetworkAccessManagerFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEPARSERSTATUS( n )                      static_cast< QDeclarativeParserStatus * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEPROPERTY( n )                          static_cast< QDeclarativeProperty * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEPROPERTYMAP( n )                       static_cast< QDeclarativePropertyMap * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEPROPERTYVALUESOURCE( n )               static_cast< QDeclarativePropertyValueSource * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVESCRIPTSTRING( n )                      static_cast< QDeclarativeScriptString * >( Qt5xHb::itemGetPtr( n ) )
#define PQDECLARATIVEVIEW( n )                              static_cast< QDeclarativeView * >( Qt5xHb::itemGetPtr( n ) )

#define OPQDECLARATIVECOMPONENT( n, v )                     HB_ISNIL( n )? v : static_cast< QDeclarativeComponent * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVECONTEXT( n, v )                       HB_ISNIL( n )? v : static_cast< QDeclarativeContext * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEENGINE( n, v )                        HB_ISNIL( n )? v : static_cast< QDeclarativeEngine * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEERROR( n, v )                         HB_ISNIL( n )? v : static_cast< QDeclarativeError * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEEXPRESSION( n, v )                    HB_ISNIL( n )? v : static_cast< QDeclarativeExpression * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEEXTENSIONPLUGIN( n, v )               HB_ISNIL( n )? v : static_cast< QDeclarativeExtensionPlugin * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEIMAGEPROVIDER( n, v )                 HB_ISNIL( n )? v : static_cast< QDeclarativeImageProvider * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEITEM( n, v )                          HB_ISNIL( n )? v : static_cast< QDeclarativeItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVELISTREFERENCE( n, v )                 HB_ISNIL( n )? v : static_cast< QDeclarativeListReference * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVENETWORKACCESSMANAGERFACTORY( n, v )   HB_ISNIL( n )? v : static_cast< QDeclarativeNetworkAccessManagerFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEPARSERSTATUS( n, v )                  HB_ISNIL( n )? v : static_cast< QDeclarativeParserStatus * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEPROPERTY( n, v )                      HB_ISNIL( n )? v : static_cast< QDeclarativeProperty * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEPROPERTYMAP( n, v )                   HB_ISNIL( n )? v : static_cast< QDeclarativePropertyMap * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEPROPERTYVALUESOURCE( n, v )           HB_ISNIL( n )? v : static_cast< QDeclarativePropertyValueSource * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVESCRIPTSTRING( n, v )                  HB_ISNIL( n )? v : static_cast< QDeclarativeScriptString * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDECLARATIVEVIEW( n, v )                          HB_ISNIL( n )? v : static_cast< QDeclarativeView * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTDECLARATIVE_H */
