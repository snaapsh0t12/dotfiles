FILES=$(sed -r 's/^\s*(.*\S)*\s*$/\1/;/^$/d' files.txt)

echo "$FILES" | while read -r line ; do
    cp -r  ./$line "$HOME/$line"
done
