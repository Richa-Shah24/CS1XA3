CS1XA3 - Project Analyze
Course: CS 1XA3 (McMaster). Course Instructor: Curtis D'Alves. Session: Winter 2019.

Setup
To use the project analyzer, add the .sh file to the root of your repository. It will only search through the files from within the same folder it begins in and recursively throughout the folder.

Usage
To use the features of the bash file, simply type bash ProjectAnalyze.sh followed by the feature you wish to use into the terminal. For example if you would like to use the log feature then you would enter into your terminal:
This script will prompt the user for input depending on what function they want to implement.

Features
If input 1 is selected the Create a TODO Log feature will be initiated. This feature will put each line of every fine in your repo with the tag TODO into a file todo.log.
If input 2 is selected the Compile Error Log festure will be initiated. This feature will find Haskell and Python files in your repo that fail to compile (i.e have syntax errors) and put them
in a file compile_fail.log
If input 3 is selected the File Type Count feature will be initiated. This feature will return for each HTML, Javascript, CSS, Python, Haskell and Bash Script file: output a file count for how
many of each exist
If input 4 is selected the Delete Temporary Files feature will be initiated. This feature will find and delete all UNTRACKED (and untracked only) files ending in the extension .tmp