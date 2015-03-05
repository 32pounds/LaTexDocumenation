current_dir = $(shell pwd)

all:
	java -jar images/plantuml.jar -o "$(current_dir)/images" * */*.puml */*.uml
