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

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 640, 480 )

   oButton := QPushButton():new( "Mostrar janela de di�logo", oWindow )
   oButton:move( 20, 20 )
   oButton:show()
   ? oButton:onClicked( {||ShowDialog()} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowDialog()

   LOCAL oDialog := QDialog():new()

   oDialog:exec()

   oDialog:delete()

RETURN NIL
