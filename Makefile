.PHONY: resume

CC = xelatex
RESUME_DIR = resume_files
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume: resume.pdf

resume.pdf: $(RESUME_DIR)/blocklove_resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(RESUME_DIR) $<

#cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<
#
#coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(RESUME_DIR)/*.aux
	rm -rf $(RESUME_DIR)/*.log
	rm -rf $(RESUME_DIR)/*.fdb_latexmk
	rm -rf $(RESUME_DIR)/*.fls
	rm -rf $(RESUME_DIR)/*.out
	rm -rf $(RESUME_DIR)/*.synctex*
	rm -rf $(RESUME_DIR)/*.xdv
clobber:
	rm -rf $(RESUME_DIR)/*.pdf
	clean

