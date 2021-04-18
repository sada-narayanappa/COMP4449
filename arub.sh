for d in $(find . -maxdepth 2 -type d)
do
	#Do something, the directory is accessible with $d:
	#echo "Checking " $d/.git " ..."
	if [ -d "$d/.git" ]; then
		echo "*** Will do gitpull in $d ***" 
		CUR=`pwd`
		cd $d
		#echo "Running git pull" `pwd`
		git pull 
		cd $CUR
	fi
done 
