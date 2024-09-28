cd /home/hunt/projects/Lin
touch README1.md
h1="#Структура пакета"
h2="#Файл preinst"
h3="#Файл postinst"
h4="#Файл prerm"
h5="#Файл postrm"
figlet -f banner zsh>>README1.md
apt show zsh 2>/dev/null | sed 's/$/  /' | sed -E 's/(^\b.+?:) /**\1** /g'>>README1.md
echo -e $h1 >>README1.md
tree -L 4 /home/hunt/projects/Lin/my_lab>>README1.md
echo -e $h2>>README1.md
cat /home/hunt/projects/Lin/my_lab_META/preinst>>README1.md
echo -e $h3>>README1.md
cat /home/hunt/projects/Lin/my_lab_META/postinst>>README1.md
echo -e $h4>>README1.md
cat /home/hunt/projects/Lin/my_lab_META/prerm>>README1.md
echo -e $h5>>README1.md
cat /home/hunt/projects/Lin/my_lab_META/postrm>>README1.md
