#!/bin/bash
#=====================================Prompt configuration=========================================

#source https://medium.com/the-code-review/powerlevel9k-personalise-your-prompt-for-any-programming-language-68974c127c63
configurePrompt() {
	echo "Start Prompt configuration procedure"

	if ! command -v zsh > /dev/null 2>&1;  then
		sudo apt-get install zsh
	fi
	
	ZSH=~/.oh-my-zsh
	
	if [ ! -d "$ZSH" ]; then
		sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
		echo 'source  ~/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
	fi

	# https://github.com/gabrielelana/awesome-terminal-fonts

	if [ ! -d ~/.fonts ]; then
		git clone git@github.com:gabrielelana/awesome-terminal-fonts.git
		cd ./awesome-terminal-fonts
		./build.sh
	   ./install.sh	
		cd -
		rm -rf ./awesome-terminal-fonts
	fi

	echo "UPADTE YOUR ~/.zshrc add theses line"
	echo "POWERLEVEL9K_MODE=awesome-fontconfig"
	echo "ZSH_THEME=powerlevel9k/powerlevel9k"

}

installKepassXc() {
	sudo apt install keepassxc
}


#httpie is a command line http client, httpie is used with json command line filter jq
installHttpie() {
	sudo apt-get install httpie
	sudo apt-get install jq
}

installCheatSh() {
	#see cheat sheet documentation https://github.com/chubin/cheat.sh#installation

	curl https://cht.sh/:cht.sh > ~/cht.sh 
   	sudo mv  ~/cht.sh /usr/bin/cht.sh 
    sudo chmod 777 /usr/bin/cht.sh
}

installLazyGit() {
	# see lazygit documentation https://github.com/jesseduffield/lazygit

	sudo add-apt-repository ppa:lazygit-team/release
	sudo apt-get update
	sudo apt-get install lazygit
}

configurePrompt
#installKepassXc
#installHttpie
#installCheatSh
#installLazyGit
