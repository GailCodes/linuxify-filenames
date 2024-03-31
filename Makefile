# Generate test files
tests:
	rm -rf test-files
	mkdir test-files
	rm -rf test-files/*
	touch test-files/hello\ there.txt
	touch test-files/hello\ \ \ \ bYe.tXt
	touch test-files/good-format.html
	mkdir test-files/tEst-\ direCtory
	mkdir test-files/spaces-\ \ \ direCtory
	mkdir test-files/good-directory

# Clean test-files directory
tests-clean:
	rm -rf test-files/*

# Run script with test files
run:
	python3 src/linuxify.py test-files/*