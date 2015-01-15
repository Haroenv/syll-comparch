#!/bin/bash

echo start building html5 export 
asciidoctor "book_comparch.asc" -o "comparch.html"
echo finished building html5 export
