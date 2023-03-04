set folderName (ls | grep -v README.md | grep -v myAtCoder | grep -v archives | grep -v go.mod | grep -v main.go |grep -v reset.sh)
mv ./main.go ./$folderName/
mv ./$folderName/ ./archives/

rm ./myAtCoder

echo -n ---; echo " ~/check.sh"

~/check.sh

echo ---


git add ./archives/*
git commit -m "$folderName の追加"
git push
