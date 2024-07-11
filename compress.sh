mkdir temp_dir
cp -r public/images temp_dir/
cp -r public/styles temp_dir/
cp -r src/content temp_dir/
cp -r src/views temp_dir/
cd temp_dir
zip -r ../$1.zip .
cd ..
rm -rf temp_dir
