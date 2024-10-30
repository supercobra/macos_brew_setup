#!/bin/bash

# Update Homebrew and Upgrade any existing formulas
brew update
brew upgrade

# Developer Tools
brew install git                   # Version control
brew install ruby                  # Ruby programming language
brew install node                  # JavaScript runtime for backend
brew install python                # Python programming language
brew install go                    # Golang for backend development
brew install nvm                   # Node Version Manager
brew install yarn                  # JavaScript package manager
brew install docker                # Container platform
brew install neovim                # Neovim text editor
brew install emacs                 # Emacs text editor
brew install coreutils             # GNU core utilities
brew install --cask aquamacs       # Aquamacs - Emacs for macOS
brew install --cask visual-studio-code # Visual Studio Code IDE
brew install gh                    # GitHub CLI
brew install 1password-cli         # 1Password CLI

# Initialize rbenv for managing Ruby versions
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc

# Terminal Emulators
brew install --cask alacritty            # Alacritty terminal
brew install --cask iterm2               # iTerm2 terminal

# Productivity Tools
brew install --cask alfred               # Productivity app launcher
brew install --cask jetbrains-toolbox    # JetBrains products manager (RubyMine, etc.)
brew install --cask google-chrome        # Web browser
brew install --cask firefox              # Web browser
brew install --cask slack                # Team communication
brew install --cask discord              # Chat and collaboration for communities
brew install --cask notion               # Note-taking app
brew install --cask rectangle            # Window management
brew install --cask excalidraw           # Excalidraw for hand-drawn style diagrams

# Communication Tools
brew install --cask microsoft-teams      # Microsoft Teams for collaboration
brew install --cask zoom                 # Zoom for video meetings

# Design, Media, and Music Production
brew install --cask figma                # Interface design tool
brew install --cask adobe-creative-cloud # Adobe Creative apps
brew install --cask vlc                  # Media player
brew install --cask spotify              # Music player
brew install --cask ableton-live         # Ableton Live for music production
brew install --cask audacity             # Audacity for audio editing
brew install --cask soundsource          # SoundSource for audio control
brew install --cask pexels               # Pexels for free stock images
brew install --cask unsplash             # Unsplash for high-quality free photos
brew install --cask pinterest            # Pinterest for creative inspiration boards
brew install --cask camtasia             # Screen recording and video editing
brew install --cask audio-hijack         # Advanced audio recording
brew install --cask loopback             # Audio routing utility
brew install --cask piezo                # Simple audio recording
brew install --cask fission              # Audio editing
brew install --cask farrago              # Soundboard for audio clips

# Virtualization
brew install --cask parallels            # Parallels for running virtual machines

# Microsoft Office Suite
brew install --cask microsoft-office     # Microsoft Office suite

# Additional Utilities
brew install --cask edrawings            # eDrawings for viewing CAD files
brew install --cask karabiner-elements   # Karabiner-Elements for keyboard customization
brew install --cask unarchiver           # Unarchiver for extracting RAR and other archive formats
brew install --cask tor-browser          # Tor browser for anonymous browsing
brew install --cask master-chess         # Master Chess for leisure and strategy practice

# Command-Line Utilities
brew install wget                        # Network downloader
brew install htop                        # Process monitoring
brew install tmux                        # Terminal multiplexer
brew install tree                        # Directory tree display
brew install fzf                         # Command-line fuzzy finder
brew install jq                          # JSON parser
brew install ripgrep                     # ripgrep for fast searching
brew install fd                          # fd for fast file finding
brew install bat                         # Enhanced cat with syntax highlighting
brew install exa                         # Modern replacement for ls
brew install httpie                      # Command-line HTTP client
brew install tldr                        # Simplified man pages for common commands

# Focus & Productivity Tools
brew install --cask brainfm             # Brain.fm for focus music
brew install --cask endel               # Endel for personalized soundscapes
brew install --cask pomodone            # Pomodone App for task and time management

# Fonts (using Homebrew Cask Fonts)
brew tap homebrew/cask-fonts
brew install --cask font-fira-code       # Fira Code font with programming ligatures
brew install --cask font-jetbrains-mono  # JetBrains Mono font
brew install --cask font-meslo-lg-nerd-font # Meslo LG font for fancy shell prompts and Vim status bars
brew install --cask font-hack-nerd-font  # Hack Nerd Font for powerline-compatible symbols

# Final Cleanup
brew cleanup

# rbenv Installation & Setup
brew install rbenv
if ! grep -qs "rbenv init" $shell_file; then
    printf '\n# load rbenv\n' >> $shell_file
    printf 'export PATH="$HOME/.rbenv/bin:$PATH"\n' >> $shell_file
    printf 'eval "$(rbenv init - --no-rehash)"\n' >> $shell_file
    eval "$(rbenv init -)"
fi

export PATH="$HOME/.rbenv/bin:$PATH"

# Additional Dev Tools
brew install ruby-build               # Install ruby-build for rbenv
brew install openssl                  # OpenSSL for security
brew link openssl --force             # Force linking of OpenSSL
brew install vips                     # VIPS for image processing

echo "Installation complete! Please restart your terminal to ensure rbenv is initialized."
