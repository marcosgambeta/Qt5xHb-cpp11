%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QGraphicsItem::CacheMode
*/
#define QGraphicsItem_NoCache                                        0
#define QGraphicsItem_ItemCoordinateCache                            1
#define QGraphicsItem_DeviceCoordinateCache                          2

/*
enum QGraphicsItem::GraphicsItemChange
*/
#define QGraphicsItem_ItemEnabledChange                              3
#define QGraphicsItem_ItemEnabledHasChanged                          13
#define QGraphicsItem_ItemMatrixChange                               1
#define QGraphicsItem_ItemPositionChange                             0
#define QGraphicsItem_ItemPositionHasChanged                         9
#define QGraphicsItem_ItemTransformChange                            8
#define QGraphicsItem_ItemTransformHasChanged                        10
#define QGraphicsItem_ItemRotationChange                             28
#define QGraphicsItem_ItemRotationHasChanged                         29
#define QGraphicsItem_ItemScaleChange                                30
#define QGraphicsItem_ItemScaleHasChanged                            31
#define QGraphicsItem_ItemTransformOriginPointChange                 32
#define QGraphicsItem_ItemTransformOriginPointHasChanged             33
#define QGraphicsItem_ItemSelectedChange                             4
#define QGraphicsItem_ItemSelectedHasChanged                         14
#define QGraphicsItem_ItemVisibleChange                              2
#define QGraphicsItem_ItemVisibleHasChanged                          12
#define QGraphicsItem_ItemParentChange                               5
#define QGraphicsItem_ItemParentHasChanged                           15
#define QGraphicsItem_ItemChildAddedChange                           6
#define QGraphicsItem_ItemChildRemovedChange                         7
#define QGraphicsItem_ItemSceneChange                                11
#define QGraphicsItem_ItemSceneHasChanged                            16
#define QGraphicsItem_ItemCursorChange                               17
#define QGraphicsItem_ItemCursorHasChanged                           18
#define QGraphicsItem_ItemToolTipChange                              19
#define QGraphicsItem_ItemToolTipHasChanged                          20
#define QGraphicsItem_ItemFlagsChange                                21
#define QGraphicsItem_ItemFlagsHaveChanged                           22
#define QGraphicsItem_ItemZValueChange                               23
#define QGraphicsItem_ItemZValueHasChanged                           24
#define QGraphicsItem_ItemOpacityChange                              25
#define QGraphicsItem_ItemOpacityHasChanged                          26
#define QGraphicsItem_ItemScenePositionHasChanged                    27

/*
enum QGraphicsItem::GraphicsItemFlag
flags QGraphicsItem::GraphicsItemFlags
*/
#define QGraphicsItem_ItemIsMovable                                  0x1
#define QGraphicsItem_ItemIsSelectable                               0x2
#define QGraphicsItem_ItemIsFocusable                                0x4
#define QGraphicsItem_ItemClipsToShape                               0x8
#define QGraphicsItem_ItemClipsChildrenToShape                       0x10
#define QGraphicsItem_ItemIgnoresTransformations                     0x20
#define QGraphicsItem_ItemIgnoresParentOpacity                       0x40
#define QGraphicsItem_ItemDoesntPropagateOpacityToChildren           0x80
#define QGraphicsItem_ItemStacksBehindParent                         0x100
#define QGraphicsItem_ItemUsesExtendedStyleOption                    0x200
#define QGraphicsItem_ItemHasNoContents                              0x400
#define QGraphicsItem_ItemSendsGeometryChanges                       0x800
#define QGraphicsItem_ItemAcceptsInputMethod                         0x1000
#define QGraphicsItem_ItemNegativeZStacksBehindParent                0x2000
#define QGraphicsItem_ItemIsPanel                                    0x4000
#define QGraphicsItem_ItemSendsScenePositionChanges                  0x10000

/*
enum QGraphicsItem::PanelModality
*/
#define QGraphicsItem_NonModal                                       0
#define QGraphicsItem_PanelModal                                     1
#define QGraphicsItem_SceneModal                                     2
