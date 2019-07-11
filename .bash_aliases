alias sympla-doc='for file in *_info.pdf; do correct=${file%_info.pdf}.pdf; rm -f $correct; mv $file $correct; done;'
