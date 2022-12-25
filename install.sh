#!/bin/bash

# based on riley's script :) https://github.com/hopolapopola/riley-dot-files/blob/main/install_zsh.sh
zsh_stuff() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # get extensions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ## catppuccin mocha
    wget https://raw.githubusercontent.com/catppuccin/zsh-syntax-highlighting/main/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh -P ~/.oh-my-zsh/
    ## zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    # zsh theme
    cp theming/candy_custom.zsh-theme ~/.oh-my-zsh/themes/
}

other_stuff () {
    case $distro in
        Ubun|Debi)
            # kitty
            curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
            cp kitty/kitty.conf ~/.config/kitty/kitty.conf
            cp kitty/colors.conf ~/.config/kitty/colors.conf

            # neofetch
            sudo apt install neofetch
            cp neofetch/config.conf ~/.config/neofetch/config.conf
            ;;
        macOS)
            brew install neofetch
            cp neofetch/config.conf ~/.config/neofetch/config.conf
            ;;
        *)
            printf "section failed :("
            exit 1
            ;;
    esac
}

bamboo () {
    printf('Installing ibus-bamboo (Vietnamese typeface)')
    case $distro in
        Ubun|Debi}
            sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
            sudo apt-get update
            sudo apt-get install ibus ibus-bamboo --install-recommends
            ibus restart
            ;;
        Arch)
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/install.sh)"
}

# Riley's code
cache_uname() {
	# from neofetch
	IFS=" " read -ra uname <<< "$(uname -srm)"

    kernel_name="${uname[0]}"
    kernel_version="${uname[1]}"
    kernel_machine="${uname[2]}"

    if [[ "$kernel_name" == "Darwin" ]]; then
        # macOS can report incorrect versions unless this is 0.
        # https://github.com/dylanaraps/neofetch/issues/1607
        export SYSTEM_VERSION_COMPAT=0

        IFS=$'\n' read -d "" -ra sw_vers <<< "$(awk -F'<|>' '/key|string/ {print $3}' \
                            "/System/Library/CoreServices/SystemVersion.plist")"
        for ((i=0;i<${#sw_vers[@]};i+=2)) {
            case ${sw_vers[i]} in
                ProductName)          darwin_name=${sw_vers[i+1]} ;;
                ProductVersion)       osx_version=${sw_vers[i+1]} ;;
                ProductBuildVersion)  osx_build=${sw_vers[i+1]}   ;;
            esac
        }
    fi
}

get_os() {
	case $kernel_name in
		Darwin)	
			os=$darwin_name 
		;;

		Linux|GNU*) 
			os=Linux 
		;;

		*)
			printf "get_os() Oops"
			exit 1
		;;
	esac
}

get_distro() {
	#this is so fucking jank but i'm doing it again lmao
	case $os in
		Linux) 
			distro=$(cat /etc/issue | cut -c-4)
			;;
		"Mac OS X"|"macOS")
			distro="macOS"
			;;
		"iPhone OS")
			distro="iPhone"
			;;
		*)
			printf "get_distro() Oops"
			exit 1
			;;
	esac
}

install_zsh() {
	case $distro in
		Arch)
			sudo pacman -Syu zsh
			;;
		Ubun|Debi)
			sudo apt install zsh
			;;
		"macOS"|"iPhone")
			printf "You already have zsh :)"
			;;
		*)
			printf "install_zsh Oops"
			exit 1
			;;
	esac
}

copy_zshrc() {
    case $distro in 
        Ubun|Debi|macOS)
            cp .zshrc $HOME/.zshrc
            ;;
        *)
			printf "Realistically, you're never gonna see this because it would've errored out way before :)"
			exit 1
            ;;
    esac
}

help_info() {
    printf "Available options:"
    printf "\n"
    printf "These work like any other arg lmao just pass them as SEPARATE ARGS"
    printf "\n"
    printf " -i or --install does what you'd think it does"
    printf "\n"
    printf " -e or --extras installs the extra stuff too" 
    printf "\n"
    printf " -b or --bamboo installs ibus-bamboo (Vietnamese typeface)"
    printf " -h or --help or just anything not listed here gets you this :)"
    printf "\n"
}

main() {
	cache_uname
	get_os
	get_distro
	install_zsh
	copy_zshrc
	zsh_goodies
	printf "Finished the main things"
	return 0
}