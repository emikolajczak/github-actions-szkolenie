# CW 28-tf-digitalocean

## To Do

Mozesz to cwiczenie wykonac na dwa sposoby.

### Sposob 1

1. Wykorzystaj i dodaj do Jenkinsa klucz ssh prywatny z katalogu `/home/student/.ssh/ed25519` i skonfiguruj go w Jenkinsie. Będziesz mogł wtedy sklonowa to repozytorium w jenkins job i je uzyc.

### Sposob 2

Krok 1: Skopiuj kod lokalnie

1.	Jeśli masz już klonowane repozytorium na swoim komputerze, przejdź do katalogu, w którym znajduje się kod. Jeśli nie, sklonuj istniejące repozytorium (ale nie musisz przenosić historii):

```bash
git clone --depth=1 <stare_repo_url>
```

Ten parametr --depth=1 sprawia, że pobierzesz tylko najnowszą wersję kodu, bez całej historii.

2.	Usuń folder .git, aby odłączyć historię wersji:

```bash
rm -rf .git
```

Teraz masz katalog z czystym kodem, bez powiązania z Git i historią.

Krok 2: Utwórz nowe repozytorium

1.	Przejdź na platformę (GitHub, GitLab itp.) i utwórz nowe, puste repozytorium.
2.	Skonfiguruj lokalne repozytorium Git w katalogu, w którym masz kod:

```bash
git init
git remote add origin <nowe_repo_url>
```

Krok 3: Dodaj i wypchnij kod

1.	Dodaj wszystkie pliki do nowego repozytorium:

2.	Zatwierdź zmiany:
```bash
git commit -m "Initial commit"
```

3.	Wypchnij kod do nowego repozytorium:

```bash
git push -u origin master
```
