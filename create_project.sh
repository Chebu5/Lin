echo "Название программы: $0"
echo "Название папки: $1"
text="#$1\n\
*упал-вставай*\n\
__встал-упай__\n\
__упай-чокопай__\n\
**не суди, не гуди**\n\
не дубай вада буди\n\
___дабуди дабудай___"
new_project_name="$1"
cd /home/hunt/projects/project2
mkdir $new_project_name
cd $new_project_name
git init
touch README.md
echo -e $text>"/home/hunt/projects/project2/${new_project_name}/README.md"
git add README.md
git commit -a -m "первый коммит"
exit 0
