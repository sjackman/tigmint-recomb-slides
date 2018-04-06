.DELETE_ON_ERROR:
.SECONDARY:

all: tigmint-slides.html

clean:
	rm -f tigmint-slides.html

deploy: index.html
	git checkout -B gh-pages
	git add index.html
	git commit -m 'Render index.html'
	git push --force
	git checkout master

install-deps:
	brew install pandoc

%.html: %.md reveal.js/js/reveal.js
	pandoc -st revealjs -V theme:sky -o $@ $<

%-self-contained.html: %.md reveal.js/js/reveal.js
	pandoc -st revealjs -V theme:sky --self-contained -o $@ $<

index.html: tigmint-slides.html
	cp $< $@

# Download reveal.js
revealjs-3.6.0.tar.gz:
	curl -L -o $@ https://github.com/hakimel/reveal.js/archive/3.6.0.tar.gz

# Extract reveal.js
reveal.js-3.6.0/js/reveal.js: revealjs-3.6.0.tar.gz
	tar xf $<
	touch $@

# Patch reveal.js
reveal.js/js/reveal.js: reveal.js-3.6.0/js/reveal.js
	cp -a reveal.js-3.6.0 reveal.js
	sed -i .orig \
		-e 's/text-transform: uppercase;//' \
		-e 's/font-size: 40px;/font-size: 34px;/' \
		-e 's/border: 4px solid #333;/border: 2px solid #333;/' \
		reveal.js/css/theme/sky.css
	touch $@
