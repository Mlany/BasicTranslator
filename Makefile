install: translator_ui-mcr.mo
	install translator translator_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
#	grep -q "`cat calc.services`" /etc/services || cat calc.services >> /etc/services
#	install calc.xinetd /etc/xinetd.d/calc
#	ln -sf /usr/local/bin/translator_ui /usr/local/bin/ncalc_ui
	install translator_ui-mcr.mo /usr/share/locale/fr/LC_MESSAGES/translator_ui-mcr.mo

calc_ui.pot: translator_ui
	xgettext -o translator_ui.pot -L Shell translator_ui

translator_ui-mcr.mo: translator_ui-mrucrl.po
	msgfmt -o translator_ui-mcr.mo translator_ui-mrucrl.po

clone:
	git clone https://github.com/itmo-infocom/calc_examples.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
