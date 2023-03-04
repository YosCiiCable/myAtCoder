echo "you have to run \"fish ./reset.sh\""
set folderName (ls | grep -v README.md | grep -v myAtCoder | grep -v archives | grep -v go.mod | grep -v main.go | grep -v reset.sh); \
	echo $folderName
mv ./main.go ./$folderName/lastMain.go
mv ./$folderName/ ./archives/

cp ./archives/baseCode.go ./main.go
rm ./myAtCoder

echo -n ---; echo " ~/check.sh"

~/check.sh

echo ---


git add ./archives/*
git commit -m "$folderName の追加"
git push
