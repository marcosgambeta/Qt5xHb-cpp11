/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de di�logo",oWindow)
   oButton:move(20,20)
   oButton:show()
   ? oButton:onClicked({||ShowColorDialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog (oWindow)

   LOCAL oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:exec()

   oColorDialog:delete()

RETURN NIL
