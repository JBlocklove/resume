
.SILENT:

.PHONY: all

CC = xelatex
RESUME_DIR = resume_files
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

COVERLETTER_DIR = coverletter_files

all: resume# coverletter


resume: resume.pdf

resume.pdf: $(RESUME_DIR)/blocklove_resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(RESUME_DIR) $<

#cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter: coverletter.pdf

coverletter.pdf: $(COVERLETTER_DIR)/coverletter.tex
	$(CC) -output-directory=$(COVERLETTER_DIR) $<

clean:
	rm -rf $(RESUME_DIR)/*.aux
	rm -rf $(RESUME_DIR)/*.log
	rm -rf $(RESUME_DIR)/*.fdb_latexmk
	rm -rf $(RESUME_DIR)/*.fls
	rm -rf $(RESUME_DIR)/*.out
	rm -rf $(RESUME_DIR)/*.synctex*
	rm -rf $(RESUME_DIR)/*.xdv
	rm -rf $(COVERLETTER_DIR)/*.aux
	rm -rf $(COVERLETTER_DIR)/*.log
	rm -rf $(COVERLETTER_DIR)/*.fdb_latexmk
	rm -rf $(COVERLETTER_DIR)/*.fls
	rm -rf $(COVERLETTER_DIR)/*.out
	rm -rf $(COVERLETTER_DIR)/*.synctex*
	rm -rf $(COVERLETTER_DIR)/*.xdv
clobber: clean
	rm -rf $(RESUME_DIR)/*.pdf
	rm -rf $(COVERLETTER_DIR)/*.pdf

