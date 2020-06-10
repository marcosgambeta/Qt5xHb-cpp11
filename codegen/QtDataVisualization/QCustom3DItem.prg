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

$prototype=explicit QCustom3DItem(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,const QVector3D &,const QVector3D &,const QQuaternion &,const QImage &,QObject *=nullptr

$prototype=QCustom3DItem(QCustom3DItemPrivate *d, QObject *parent = nullptr) [protected]

/*
[1]explicit QCustom3DItem(QObject *parent = nullptr)
[2]explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QCUSTOM3DITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DItem_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) && ISQQUATERNION(4) && ISQIMAGE(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCustom3DItem()
$deleteMethod

%%
%% Q_PROPERTY(QString meshFile READ meshFile WRITE setMeshFile NOTIFY meshFileChanged)
%%

$prototypeV2=QString meshFile() const

$prototype=void setMeshFile(const QString &meshFile)
$method=|void|setMeshFile|const QString &

%%
%% Q_PROPERTY(QString textureFile READ textureFile WRITE setTextureFile NOTIFY textureFileChanged)
%%

$prototypeV2=QString textureFile() const

$prototype=void setTextureFile(const QString &textureFile)
$method=|void|setTextureFile|const QString &

%%
%% Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototypeV2=QVector3D position() const

$prototype=void setPosition(const QVector3D &position)
$method=|void|setPosition|const QVector3D &

%%
%% Q_PROPERTY(bool positionAbsolute READ isPositionAbsolute WRITE setPositionAbsolute NOTIFY positionAbsoluteChanged)
%%

$prototypeV2=bool isPositionAbsolute() const

$prototype=void setPositionAbsolute(bool positionAbsolute)
$method=|void|setPositionAbsolute|bool

%%
%% Q_PROPERTY(QVector3D scaling READ scaling WRITE setScaling NOTIFY scalingChanged)
%%

$prototypeV2=QVector3D scaling() const

$prototype=void setScaling(const QVector3D &scaling)
$method=|void|setScaling|const QVector3D &

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototypeV2=QQuaternion rotation()

$prototype=void setRotation(const QQuaternion &rotation)
$method=|void|setRotation|const QQuaternion &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(bool shadowCasting READ isShadowCasting WRITE setShadowCasting NOTIFY shadowCastingChanged)
%%

$prototypeV2=bool isShadowCasting() const

$prototype=void setShadowCasting(bool enabled)
$method=|void|setShadowCasting|bool

%%
%% Q_PROPERTY(bool scalingAbsolute READ isScalingAbsolute WRITE setScalingAbsolute NOTIFY scalingAbsoluteChanged REVISION 1)
%%

$prototypeV2=bool isScalingAbsolute() const

$prototype=void setScalingAbsolute(bool scalingAbsolute)
$method=|void|setScalingAbsolute|bool

%%
%%
%%

$prototype=Q_INVOKABLE void setRotationAxisAndAngle(const QVector3D &axis, float angle)
$method=|void|setRotationAxisAndAngle|const QVector3D &,float

$prototype=void setTextureImage(const QImage &textureImage)
$method=|void|setTextureImage|const QImage &

%%
%% SIGNALS
%%

$prototype=void meshFileChanged( const QString & meshFile )
$signalMethod=|void|meshFileChanged|const QString &

$prototype=void positionAbsoluteChanged( bool positionAbsolute )
$signalMethod=|void|positionAbsoluteChanged|bool

$prototype=void positionChanged( const QVector3D & position )
$signalMethod=|void|positionChanged|const QVector3D &

$prototype=void rotationChanged( const QQuaternion & rotation )
$signalMethod=|void|rotationChanged|const QQuaternion &

$prototype=void scalingAbsoluteChanged( bool scalingAbsolute )
$signalMethod=|void|scalingAbsoluteChanged|bool

$prototype=void scalingChanged( const QVector3D & scaling )
$signalMethod=|void|scalingChanged|const QVector3D &

$prototype=void shadowCastingChanged( bool shadowCasting )
$signalMethod=|void|shadowCastingChanged|bool

$prototype=void textureFileChanged( const QString & textureFile )
$signalMethod=|void|textureFileChanged|const QString &

$prototype=void visibleChanged( bool visible )
$signalMethod=|void|visibleChanged|bool

#pragma ENDDUMP
