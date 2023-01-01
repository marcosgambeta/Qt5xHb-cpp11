/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oMainWindow
   LOCAL oDockWidget

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oDockWidget := QDockWidget():new( "Teste", oMainWindow )

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN
