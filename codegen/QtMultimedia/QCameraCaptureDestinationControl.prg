%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraCaptureDestinationControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraCaptureDestinationControl()
$deleteMethod

$prototypeV2=virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0

$prototypeV2=virtual bool isCaptureDestinationSupported( QCameraImageCapture::CaptureDestinations destination ) const = 0

$prototypeV2=virtual void setCaptureDestination( QCameraImageCapture::CaptureDestinations destination ) = 0

%%
%% SIGNALS
%%

$prototype=void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
$signalMethod=|void|captureDestinationChanged|QCameraImageCapture::CaptureDestinations

#pragma ENDDUMP
