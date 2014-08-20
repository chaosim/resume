jade cxm-resume-en.jade
wkhtmltopdf cxm-resume-en.html cxm-resume-en-no-font.pdf
gswin32c -sFONTPATH=C:\Windows\Fonts -o cxm-resume-en.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress cxm-resume-en-no-font.pdf
