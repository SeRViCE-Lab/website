all: gen

CV: content/media/pdfs/CV.pdf

content/media/pdfs/CV.pdf: CV/CV.tex
	cd CV; make
	mkdir -p content/media/pdfs/
	cp CV/CV.pdf content/media/pdfs/

gen: CV
	hyde gen

serve: clean gen
	hyde serve

clean:
	rm -rf deploy

gen-production: clean
	hyde gen -c production.yaml

publish: CV gen-production	
	rsync -e ssh -r deploy_production/ 
	#TODO
	#www.utdallas.edu/~opo140030:opo140030@giant.utdallas.edu

sync: 
	sftp opo140030@giant.utdallas.edu;	
	#TODO
	# wait;
	# pwd = --print-directory;
	# $(info I am now in the directory)\
	# $(echo $(--print-directory))
	# #$(read -p $(pwd) REPLY; echo $$)

	# dwd = /home/eng/o/opo140030/public_html

	# ifeq $((pwd), (dwd))
	# 	$(info path correct. Moving html files over);
	# 	put /home/lex/Dropbox/ogunmolu/deploy_production/*.html $(dwd)
	# else
	# 	cd $(dwd); put /home/lex/Dropbox/ogunmolu/deploy_production/*.html $(dwd)
	# endif
