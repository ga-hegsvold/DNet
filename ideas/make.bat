@ECHO OFF

SET APP_PATH="%GOOGLE_DRIVE_ROOT%/apps"
SET DB_PATH="%GOOGLE_DRIVE_ROOT%/docbook/xsl/1.77.0"
SET XSL_PATH=.

IF [%1]==[] GOTO:USAGE
IF [%2]==[] GOTO:USAGE

SET do_HTML=%APP_PATH%\xsltproc\xsltproc -xinclude -o %2.html %XSL_PATH%\params.xsl %2.xml
SET do_FO=%APP_PATH%\xsltproc\xsltproc -xinclude -o %2.fo %XSL_PATH%\params.xsl %2.xml
SET do_PDF=%APP_PATH%\fop\fop -fo %2.fo -pdf %2.pdf
SET do_RTF=%APP_PATH%\fop\fop -fo %2.fo -rtf %2.rtf

IF /I %1==HTML GOTO Make_HTML
IF /I %1==FO   GOTO Make_FO
IF /I %1==PDF  GOTO Make_PDF
IF /I %1==RTF  GOTO Make_RTF
IF /I %1==ALL  GOTO Make_ALL

GOTO:USAGE

:USAGE
echo make ^<option^> ^<filename without extension^>
echo  options:
echo    HTML  Hyper Text Markup Language
echo    FO    Formatting Objects (needed for PDF and RTF output)
echo    PDF   Portable Document Format
echo    RTF   Rich Text Format
echo    ALL   All of the above
GOTO:DONE

:Make_HTML
echo  generating %2.html
%do_HTML%
GOTO:DONE

:Make_FO
echo  generating %2.fo
%do_FO%
GOTO:DONE

:Make_PDF
echo  generating %2.fo
%do_FO%
echo  generating %2.pdf
%do_PDF%
GOTO:DONE

:Make_RTF
echo  generating %2.fo
%do_FO%
echo  generating %2.rtf
%do_RTF%
GOTO:DONE

:Make_ALL
echo  generating %2.html
%do_HTML%
echo  generating %2.fo
%do_FO%
echo  generating %2.pdf
%do_PDF%
echo  generating %2.rtf
%do_RTF%
GOTO:DONE

:DONE
echo.
echo All done

GOTO:EOF

:EOF
