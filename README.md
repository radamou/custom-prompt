### HOW IT WORKS

#### RUN INSTALLATION SCRIPT

```sh
sudo sh -c "$(curl -fsSL https://github.com/radamou/custom-prompt/blob/master/install-env-script/install-packages.sh)"
```

#### UPDATE zshrc file

```sh
  vim ~/.zshrc
```

ADD theses two lines

 ```sh
  POWERLEVEL9K_MODE=awesome-fontconfig
	ZSH_THEME=powerlevel9k/powerlevel9k
```


#### UNABLE zsh instead of bash

```sh
  exec zsh
```

Then exist terminal and open a new one

#### ScreenShot
![Example](https://github.com/radamou/custom-prompt/blob/master/img/custom-promt.png "custom promt")


