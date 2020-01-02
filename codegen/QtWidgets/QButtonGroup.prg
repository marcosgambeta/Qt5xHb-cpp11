%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

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

#include <QtWidgets/QAbstractButton>

$prototype=QButtonGroup ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void addButton ( QAbstractButton * button )
$internalMethod=|void|addButton,addButton1|QAbstractButton *

$prototype=void addButton ( QAbstractButton * button, int id )
$internalMethod=|void|addButton,addButton2|QAbstractButton *,int

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QButtonGroup_addButton1 ();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QButtonGroup_addButton2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototype=QAbstractButton * button ( int id ) const
$method=|QAbstractButton *|button|int

$prototype=QList<QAbstractButton *> buttons () const
$method=|QList<QAbstractButton *>|buttons|

$prototype=QAbstractButton * checkedButton () const
$method=|QAbstractButton *|checkedButton|

$prototype=int checkedId () const
$method=|int|checkedId|

$prototype=bool exclusive () const
$method=|bool|exclusive|

$prototype=int id ( QAbstractButton * button ) const
$method=|int|id|QAbstractButton *

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setExclusive ( bool )
$method=|void|setExclusive|bool

$prototype=void setId ( QAbstractButton * button, int id )
$method=|void|setId|QAbstractButton *,int

%%
%% SIGNALS
%%

$prototype=void buttonClicked( QAbstractButton * button )
$signalMethod=|void|buttonClicked,buttonClicked1,QOverload<QAbstractButton *>|QAbstractButton *

$prototype=void buttonClicked( int id )
$signalMethod=|void|buttonClicked,buttonClicked2,QOverload<int>|int

$prototype=void buttonPressed( QAbstractButton * button )
$signalMethod=|void|buttonPressed,buttonPressed1,QOverload<QAbstractButton *>|QAbstractButton *

$prototype=void buttonPressed( int id )
$signalMethod=|void|buttonPressed,buttonPressed2,QOverload<int>|int

$prototype=void buttonReleased( QAbstractButton * button )
$signalMethod=|void|buttonReleased,buttonReleased1,QOverload<QAbstractButton *>|QAbstractButton *

$prototype=void buttonReleased( int id )
$signalMethod=|void|buttonReleased,buttonReleased2,QOverload<int>|int

$prototype=void buttonToggled( QAbstractButton * button, bool checked )
%% TODO: fix $signalMethod=5,2,0|void|buttonToggled,buttonToggled1,QOverload<QAbstractButton *,bool>|QAbstractButton *,bool

$prototype=void buttonToggled( int id, bool checked )
%% TODO: fix $signalMethod=5,2,0|void|buttonToggled,buttonToggled2,QOverload<int,bool>|int,bool

#pragma ENDDUMP
