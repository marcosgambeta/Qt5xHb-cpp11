%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp
$added=5,13,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVersionNumber>

$prototype=QCompressedHelpInfo()
$internalConstructor=|new1|

$prototype=QCompressedHelpInfo(const QCompressedHelpInfo &other)
$internalConstructor=|new2|const QCompressedHelpInfo &

$prototype=QCompressedHelpInfo(QCompressedHelpInfo &&other)

/*
[1]QCompressedHelpInfo()
[2]QCompressedHelpInfo(const QCompressedHelpInfo &other)
[3]QCompressedHelpInfo(QCompressedHelpInfo &&other)
*/

HB_FUNC_STATIC( QCOMPRESSEDHELPINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCompressedHelpInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQCOMPRESSEDHELPINFO(1) )
  {
    QCompressedHelpInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCompressedHelpInfo()
$deleteMethod

$prototypeV2=void swap( QCompressedHelpInfo & other ) Q_DECL_NOTHROW

$prototypeV2=QString namespaceName() const

$prototypeV2=QString component() const

$prototypeV2=QVersionNumber version() const

$prototypeV2=static QCompressedHelpInfo fromCompressedHelpFile( const QString & documentationFileName )

$extraMethods

#pragma ENDDUMP
