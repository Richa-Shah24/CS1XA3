#!/bin/bash
read -p "Enter a number: " selectedFunction

if [ $selectedFunction == "1" ]; then
	echo "This function has copied every line in your repo that starts with #TODO into a file called todo.log"
	echo "loggesss" > todo.log
	for filename in * ; do
		echo $filename
		while read line ; do
			echo $line
			if [[ $line == \#TODO* ]]; then
				echo ": $line " >> todo.log
			fi
		done < $filename
	done
fi

if [ $selectedFunction == "2" ]; then
	echo "This function checks if Haskell and Python files compile. If they fail, the output is saved in the compile_fail.log"
	find . -name "*.hs" |
		while read HSfiles; do
			ghc -fno-code $HSfiles 2>> compile_fail.log
		done
	find . -name "*.py" |
		while read PYfiles; do
			python -m py_compile $PYfiles 2>> compile_fail.log
		done
fi

if [ $selectedFunction == "3" ]; then
	echo "This function counts the number of files of different types in current directory"
	declare -a arr=(".py" ".hs" ".js" ".html" ".css")
	declare -a arr2=("Python" "Haskell" "JavaScript" "HTML" "CSS")
	count= 0
	for i in "${arr[@]}"; do
		echo ${arr2[$count]}
		((++count))
		find . -type f -name '*'$i | wc -l
	done
fi

if [ $selectedFunction == "4" ]; then
	echo "This function will delete all UNTRACKED files in the current directory"
	read -p "Enter the repository root path: " ROOT_PATH
	files= $(git ls-files . $ROOT_PATH -excluded-standard -others)
	for file in $files; do
		if [[ "$file" == *.tmp ]]; then
			rm $file
		fi
	done
fi
