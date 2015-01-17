echo ...omzetting naar html
call asciidoctor "c:/syll-comparch/book_comparch.asc" -o "c:/syll-comparch/comparch.html" 

; -a stylesheet="rocket-panda.css" -a linkcss
echo ...omzetting naar html: done!

echo PUBLISH TO GHDOCS
 copy  c:\syll-comparch\comparch.html c:\syll-comparch-ghpages\syll-comparch\html5\comparch.html
 robocopy c:\syll-comparch\ch01 c:\syll-comparch-ghpages\syll-comparch\html5\ch01 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch02 c:\syll-comparch-ghpages\syll-comparch\html5\ch02 *.png *.jpg *.jpeg /mir 
 robocopy c:\syll-comparch\ch03 c:\syll-comparch-ghpages\syll-comparch\html5\ch03 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch04 c:\syll-comparch-ghpages\syll-comparch\html5\ch04 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch05 c:\syll-comparch-ghpages\syll-comparch\html5\ch05 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch06 c:\syll-comparch-ghpages\syll-comparch\html5\ch06 *.png *.jpg *.jpeg /mir
 robocopy c:\syll-comparch\ch07 c:\syll-comparch-ghpages\syll-comparch\html5\ch07 *.png *.jpg *.jpeg /mir

 echo ...omzetting naar docbook
<<<<<<< HEAD
 call asciidoctor -b docbook "c:/syll-comparch/book_comparch.asc" -o "c:/syll-comparch/comparch.xml" 
=======
 call asciidoctor -b docbook "c:/syll-comparch/book_pcarch.asc" -o "c:/syll-comparch/pcarch.xml" 
>>>>>>> cea021aa2731b8cb633cac57b257d45b7bc0f8cf
echo ...omzetting naar docbook:done!
 echo ...omzetting naar PDF
 c:\fopub\asciidoctor-fopub\fopub c:\syll-comparch\comparch.xml
 copy c:\syll-comparch\comparch.pdf c:\syll-comparch-ghpages\syll-comparch\pdf\comparch.pdf
 echo ... volledig klaar!

 sleep 5


pause
