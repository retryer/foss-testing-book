STYLE = epub.css
BOOK = foss-testing
COVER = cover.jpg

.PHONY: build-epub build-pdf build-html check_urls clean

build-epub:
	pandoc -f markdown -t epub --epub-cover-image=${COVER} \
		-o ${BOOK}.epub --smart --toc --epub-stylesheet=${STYLE} *.md
	#kindlegen $@ > /dev/null

build-pdf:
	pandoc --toc --chapters --base-header-level=1 --number-sections \
		--variable mainfont="Liberation Serif" --variable sansfont="Liberation Sans" \
		--variable monofont="Liberation Mono" --variable fontsize=12pt \
		--variable documentclass=book --self-contained -o *.md

build-html:
	pandoc --self-contained -o ${BOOK}.html *.md

check_urls:
	python check_urls.py *.md

clean:
	rm -f ${BOOK}.*
