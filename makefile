current_dir = $(shell pwd)

all: uml latex

uml:
	java -jar images/plantuml.jar -o "$(current_dir)/images" * */*.puml */*.uml

latex:
	latexmk -pdf -f -pdflatex="pdflatex -interactive=nonstopmode" -outdir=latex -use-make *.tex */*.tex	
	latexmk -c -outdir=latex
