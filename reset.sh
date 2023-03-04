folderName="temp"
echo -n フォルダ名: 
read folderName
mkdir ./archives/$folderName/
mv ./main.go ./archives/$folderName/main.go

rm ./myAtCoder
cp ./archives/main.go ./

echo -n ---; echo " ~/check.sh"

~/check.sh

echo ---


git add ./archives/*
git commit -m "$folderName の追加"
git push
