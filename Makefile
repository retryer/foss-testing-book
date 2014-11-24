STYLE = epub.css
BOOK = foss-testing
COVER = cover.jpg

.PHONY: build-epub build-html check_urls clean

build-epub:
	pandoc -f markdown -t epub --epub-cover-image=${COVER} \
		-o ${BOOK}.epub --smart --toc --epub-stylesheet=${STYLE} *.md
	#kindlegen $@ > /dev/null

build-html:
	pandoc --self-contained -o ${BOOK}.html *.md

check_urls:
	python check_urls.py *.md

clean:
	rm -f ${BOOK}.*
