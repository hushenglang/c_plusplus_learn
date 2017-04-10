
for pathname in src/*
do
	filename=$(basename "$pathname")
	filename_prefix="${filename%.*}"
	echo 'compiling src/' $filename 'to bin/'$filename_prefix
	g++ src/$filename -o bin/$filename_prefix
done
