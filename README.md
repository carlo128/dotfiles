# dotfiles
my dotfiles (manjaro macbookair)

# Clonare i propri dotfiles

1. Creare un repository su github

2. Creare una directory .cfg
```
$ mkdir $HOME/.cfg
```

3. Inizializzare git
```
$ git init --bare $HOME/.cfg
```
Linea da mettere in .bashrc
```
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME
```
per nascondere i file non dotfile dallo status
```
$ config config --local status.showUntrackedFiles no
```
4. Aggiungere i primi files
```
$ config status
$ config add .vimrc
$ config commit -m "Add vimrc"
```

La prima volta bisogna impostare il repository
```
$ config branch -M main
$ git remote add origin https://github.com/carlo128/dotfiles.git
$ git push -u origin main
```
le volte dopo basta usare
```
$ config push
```

# Recuperare i dotfiles su una nuova sessione

1. aggiungere al bashrc ospite la riga
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME
```
Dire a git d'ignorare la directory di sincronizzazione 
```
$ echo ".cfg" >> .gitignore
```
Creare la directory di sincronizzazione
```
$ mkdir $HOME/.cfg
```
2. clonare il repository
```
$ git clone --bare https://github.com/carlo128/dotfiles.git $HOME/.cfg 
```
3. Fare il checkout (pensare a fare il backup prima)
```
$ config checkout
```
