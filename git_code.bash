Git называют системой контроля версий
https://git-scm.com/download/

apt-get update && apt-get install git

GitBash — программа-интерпретатор, запускающую Git из командной строки Windows

Untracked files — то есть неотслеживаемые файлы

https://learngitbranching.js.org/?locale=ru_RU

 
#-------------. 1 Идентификация

git config --global user.name "Stas Basov" 
# вводите своё имя или ник латиницей и в кавычках

git config --global user.email stasbasov@yandex.ru
# здесь нужно ввести свой реальный e-mail

$ git config --global user.name 'Timur Gabdrakhmanov'
$ git config --global user.email timbest@bk.ru


#-------------. 2 Проверка введенных настроек
$ git config --list

...
init.defaultbranch=master
user.name=Timur Gabdrakhmanov
user.email=timbest@bk.ru
color.ui=true


#-------------. 3 Инициализировать папку с Git - репозиторием
git init

Initialized empty Git repository in C:/data/git/.git/

mkdir   - создать директорию
cd 		- перемещение м/у директориями


Если перейти в каталог с проектом и выполнить команду git init, Git начнёт отслеживать файлы в выбранной директории.


#-------------. 4 Подготовить все файлы к сохранению
git add data.csv script.py
git add --all
git add -A
git add .


#-------------. 5 Сохранение версии файлов в Git называют «коммитом».
Сделать коммит (совершать, бросить в бой) — значит сохранить текущее состояние файлов. 
git commit -m "Мой первый коммит"


#-------------. 6 Показать историю коммитов
git log

commit ec821828b59c2a87fc694ab396d477a38b6e7831 (HEAD -> master)
Author: Timur Gabdrakhmanov <timbest@bk.ru>
Date:   Wed Jul 17 17:57:15 2024 +0500

    2. Изменили 3 файла для тетса

commit 07e5648590b334958308f08041adfbc6d082e5f1
Author: Timur Gabdrakhmanov <timbest@bk.ru>
Date:   Wed Jul 17 17:51:52 2024 +0500

    Мой первый коммит




#-------------. 7 Ветвление - создание ветки
Ветвление значит, что вы создаёте «параллельный» репозиторий, куда можно вносить изменения и коммитить, не вмешиваясь в основной код. Чтобы создать ветку, вводят команду git branch.
git branch test

git branch
  master
* test


#-------------. 8 Смена ветки
git checkout test

Switched to branch 'test'
M       git_code.bash





#-------------. 9 Слияние веток
Слияние веток — это процесс, при котором ветки соединяются в одну. Визуально это можно представить как железнодорожные пути, которые то расходятся, то сходятся, то упираются в тупик
Слияние происходит так:
	- Сначала вы переходите в ветку, в которую проведёте слияние кода.
	- Затем пишите команду git merge с именем ветки, из которой хотите сделать слияние.

git checkout master
Switched to branch 'master'

git merge test
Updating ec82182..681ace6
Fast-forward
 git_code.bash | 31 ++++++++++++++++++++++++++-----
 script.py     |  3 ++-
 2 files changed, 28 insertions(+), 6 deletions(-)



#-------------. 10 Привязать удаленный репозиторий
Git — это софт для контроля версий файлов. GitHub — облачная платформа для хранения git-репозиториев.
С URL всё понятно, но почему имя репозитория — origin, а не first-project? В данном случае имя репозитория может не совпадать с его именем на GitHub. Этим именем мы будем называть удалённый репозиторий локально при вводе команд в командную строку. Можно было бы дать имя first-project, но origin — это стандартное имя удалённого репозитория. В будущем это позволит опускать его в командах. Git будет по умолчанию искать удалённый репозиторий с именем origin.
git remote add origin https://github.com/TimGabe12/first-project-test.git


#-------------. 11 Узнать текущею ветку
 git branch --show-current



#-------------. 12 загрузить код на GitHub
git push -u origin master

Enumerating objects: 14, done.
Counting objects: 100% (14/14), done.
Delta compression using up to 8 threads
Compressing objects: 100% (12/12), done.
Writing objects: 100% (14/14), 2.94 KiB | 1003.00 KiB/s, done.
Total 14 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), done.
To https://github.com/TimGabe12/first-project-test.git
 * [new branch]      master -> master
branch 'master' set up to track 'origin/master'.



#-------------. 13




#-------------. 14




#-------------. 15




#-------------. 16




#-------------. 17




#-------------. 18




#-------------. 19




#-------------. 20




#-------------. 21




#-------------. 22




#-------------. 23




#-------------. 24




#-------------. 25




#-------------. 26




#-------------. 27




#-------------. 28




#-------------. 29




#-------------. 30




#-------------. 31




#-------------. 32




#-------------. 33




#-------------. 34




#-------------. 35




#-------------. 36




#-------------. 37




#-------------. 38




#-------------. 39




#-------------. 40




#-------------. 41




#-------------. 42




#-------------. 43




#-------------. 44




#-------------. 45




#-------------. 46




#-------------. 47




#-------------. 48




#-------------. 49

