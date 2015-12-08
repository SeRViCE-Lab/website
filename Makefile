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

sftp: 
	$(echo Present directory:) $(@pwd)	
	sftp opo140030@giant.utdallas.edu;
	dwd := /home/eng/o/opo140030/public_html
	$(info @pwd))
	$(info Enter your password: )
	sleep 10
	read	

	$(info _____________________________________________________________________________)
	$(info                                  Fast FILE Move:                             )
	$(info  put /home/lex/Dropbox/ogunmolu/	deploy_production/*.html /home/eng/o/opo140030/public_html)
	$info	                                                                            )
	$(info _____________________________________________________________________________)
	#TODO

	@pwd
	$(read -p $(pwd) REPLY; echo $$)

scp:
	$(info                                FOLDER MOVE                              )
	$(info  Example: scp -r /home/lex/Dropbox/fortworthTalk opo140030@giant.utdallas.edu:\
		/home/eng/o/opo140030/public_html/dfwslides                                     )
	$(info _____________________________________________________________________________)

lftp:
	$(info  lftp sftp://opo140030@giant.utdallas.edu)
	$(info 	Enter password then                    \
		    <mirror -R> to recursively upload      \
		    or                                      \
		    <mirror> to just upload                 )
	$(info  Remember to <cd> into directories you want\
	                                       to mirror)
	lftp sftp://opo140030@giant.utdallas.edu




	# ifeq $((pwd), (dwd))
	# 	put /home/lex/Dropbox/ogunmolu/deploy_production/*.html /home/eng/o/opo140030/public_html
	# else
	# 	cd $(dwd); put /home/lex/Dropbox/ogunmolu/deploy_production/*.html $(dwd)
	# endif
