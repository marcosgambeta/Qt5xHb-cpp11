%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QComboBox::InsertPolicy
*/
#define QComboBox_NoInsert                                           0
#define QComboBox_InsertAtTop                                        1
#define QComboBox_InsertAtCurrent                                    2
#define QComboBox_InsertAtBottom                                     3
#define QComboBox_InsertAfterCurrent                                 4
#define QComboBox_InsertBeforeCurrent                                5
#define QComboBox_InsertAlphabetically                               6

/*
enum QComboBox::SizeAdjustPolicy
*/
#define QComboBox_AdjustToContents                                   0
#define QComboBox_AdjustToContentsOnFirstShow                        1
#define QComboBox_AdjustToMinimumContentsLength                      2
#define QComboBox_AdjustToMinimumContentsLengthWithIcon              3
