all: gen

CV: content/media/pdfs/Resume_Work.pdf

content/media/pdfs/Resume_Work.pdf: CV/Resume_Work.tex
	cd CV; make 
	mkdir -p content/media/pdfs/
	cp CV/Resume_Work.pdf content/media/pdfs/CV.pdf

gen: CV
	hyde gen

serve: clean gen
	hyde serve

clean:
	rm -rf deploy

prod: clean
	hyde gen -c production.yaml

web: deploy
		lftp sftp://opo140030@giant.utdallas.edu/home/eng/o/opo140030/public_html
		$(info _____________________________________________________________________________)
		$(info                                  Fast FILE Move:                             )
		$(info                        lcd deploy_production && put *.html                   )
		$info	                                                                            )
		$(info _____________________________________________________________________________)
	
deploy:
	cd deploy_production/;

slides: 
	$(info  lftp sftp://opo140030@giant.utdallas.edu)
	$(info 	<mirror -R> to recursively upload      	\
		    <mirror -n -R> to recursively upload  	\
		    newer files     						\
		    or                                      \
		    <mirror> to just upload                 \
		    lcd /home/lex/Dropbox/forthworthTalk	\
		    										\
			put index.html                          )

	lftp sftp://opo140030@giant.utdallas.edu/home/eng/o/opo140030/public_html/dfwslides;	
	ldir;
	moveind

ldir: 
	lcd /home/lex/Dropbox/forthworthTalk


moveind:
	put index.html

help:
	$(info make <arg>)
	$(info <arg> could be any of the following: 				 )
	$(info 										<web>    -- to publish)
	$(info 										<slides> -- to upload dfwslides)
	$(info 										<prod>   -- to generate for production)
	$(info 										<clean>  -- to clear deploy_production folder)
	$(info 										<gen>    -- to generate files for local deployment)
	$(info 										<serve>  -- to view locally)
	$(info 										<CV>     -- to make pdf of CV)

