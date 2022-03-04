FROM russellseymour/pandoc-asciidoctor
COPY adoc-folder adoc-folder  
COPY entrypoint.sh .
ENTRYPOINT ["sh","./entrypoint.sh"]
