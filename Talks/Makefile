scp:
	$(info                        FOLDER MOVE : Very Slow!!!                            )
	$(info  Example: scp -r /home/lex/Dropbox/fortworthTalk opo140030@giant.utdallas.edu:\
		/home/eng/o/opo140030/public_html/dfwslides                                     )
	$(info _____________________________________________________________________________)

web:
	lftp sftp://opo140030@giant.utdallas.edu/home/eng/o/opo140030/public_html/dfwslides
	lcd images && cd public_html/dfwslides && mirror -R;
	$(info copying video files over)
	lcd ../videos/ && cd ../videos && mirror -R

	$(info  lftp sftp://opo140030@giant.utdallas.edu)
	$(info 	Enter password then                    \
		    <mirror -R> to recursively upload      \
		    or                                      \
		    <mirror> to just upload                 )
	$(info  Remember to <cd> into directories you want\
	                                       to mirror)
	
index: 
	$(info cd into the dir you want to transfer and use \
		use the put command e.g. put index)	
	$(info e.g. put /home/lex/Dropbox/fortworthTalk/*.*	\
		 /home/eng/o/opo140030/public_html/dfwslides)
	sftp opo140030@giant.utdallas.edu;