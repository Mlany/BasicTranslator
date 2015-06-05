# BasicTranslator
Translate a selection of Swadish Engish words to Creole

#translator.basic: 
Reads a number from stdin. 
If the number is between 1-207 it will return the corresponding Creole translated word from:
http://semes-olla.rhcloud.com/words?Swadesh/Creole/Mauritian.py
If an invalid character is entered the website returns an error which is displayed on the console.

#translator:
A command-line implementation with friendly output messages for user

#translator_ui:
A simple GUI interface using dialog or gdialog to get input number from the user and display the translated word

#translator_ui-mrucrl.po:
Portable object file for translating the GUI theme into Creole when a French localisation is selected for the translator_ui program

#translator_ui-mrucrl.mo:
Machine object file obtained from the .po file to be fed to the translator. 
