BUILD = build
STYLE = static/epub.css
BOOKNAME = software-test-formats
TITLE = content/title.txt
METADATA = content/metadata.xml
COVER = static/cover.jpg
BOOK_SOURCE = content/*.md

book: epub html

epub:
	mkdir -p $(BUILD)/epub
	pandoc -f markdown -t epub --epub-cover-image=$(COVER) \
		-o $(BUILD)/epub/$(BOOKNAME).epub --smart --toc --epub-stylesheet=$(STYLE) \
		--epub-metadata=content/metadata.xml $(BOOK_SOURCE)

html:
	mkdir -p $(BUILD)/html
	pandoc --self-contained --to=html5 -o $(BUILD)/html/$(BOOKNAME).html $(BOOK_SOURCE)

mobi: epub
	mkdir -p $(BUILD)/mobi
	~/kindlegen $(BUILD)/epub/$(BOOKNAME).epub -c1 -verbose -o $(BOOKNAME).mobi
	mv $(BUILD)/epub/$(BOOKNAME).mobi $(BUILD)/mobi/$(BOOKNAME).mobi

epubcheck: epub
	java -jar ~/epubcheck-3.0.1/epubcheck-3.0.1.jar $(BUILD)/epub/$(BOOKNAME).epub

langcheck:
	 java -jar ~/LanguageTool-2.7/languagetool-commandline.jar -l en content/*.md

check_urls:
	python check_urls.py $(BOOK_SOURCE)

clean:
	rm -r $(BUILD)

.PHONY: epub mobi html check_urls clean
