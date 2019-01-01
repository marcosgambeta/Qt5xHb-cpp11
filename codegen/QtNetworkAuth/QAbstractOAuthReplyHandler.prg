%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QAbstractOAuthReplyHandler(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=QAbstractOAuthReplyHandler(QObjectPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractOAuthReplyHandler()
$deleteMethod=5,10,0

$prototype=virtual QString callback() const = 0
$virtualMethod=5,10,0|QString|callback|

$prototype=virtual void networkReplyFinished(QNetworkReply *reply) = 0 (slot)
$virtualMethod=5,10,0|void|networkReplyFinished|QNetworkReply *

%%
%% SIGNALS
%%

$prototype=void callbackDataReceived( const QByteArray & data )
$signalMethod=5,10,0|void|callbackDataReceived|const QByteArray &

$prototype=void callbackReceived( const QVariantMap & values )
%% TODO: $signalMethod=|void|callbackReceived|const QVariantMap &

$prototype=void replyDataReceived( const QByteArray & data )
$signalMethod=5,10,0|void|replyDataReceived|const QByteArray &

$prototype=void tokensReceived( const QVariantMap & tokens )
%% TODO: $signalMethod=|void|tokensReceived|const QVariantMap &

#pragma ENDDUMP
