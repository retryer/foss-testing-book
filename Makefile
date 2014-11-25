STYLE = static/epub.css
BOOK = foss-testing
COVER = static/cover.jpg
BOOK_SOURCE = book-en/*.md

.PHONY: build-epub build-mobi build-html check_urls clean

build-epub:
	pandoc -f markdown -t epub --epub-cover-image=${COVER} \
		-o ${BOOK}.epub --smart --toc --epub-stylesheet=${STYLE} \
		--epub-metadata=book-en/metadata.yaml ${BOOK_SOURCE}

build-mobi: build-epub
	~/kindlegen ${BOOK}.epub -c1 -verbose -o ${BOOK}.mobi

build-html:
	pandoc --self-contained -o ${BOOK}.html ${BOOK_SOURCE}

epubcheck: build-epub
	java -jar ~/epubcheck-3.0.1/epubcheck-3.0.1.jar ${BOOK}.epub

check_urls:
	python check_urls.py ${BOOK_SOURCE}

clean:
	rm -f ${BOOK}.*
