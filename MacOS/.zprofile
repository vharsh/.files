export PATH=$PATH:/usr/local/go/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# Set PATH, MANPATH, etc., for Homebrew.
nvm use v16.17.0
eval "$(/opt/homebrew/bin/brew shellenv)"
alias gs="git status"
alias vim='/opt/homebrew/bin/nvim'
alias gc="git checkout"
alias ga="git add"

#==> openjdk@11
#For the system Java wrappers to find this JDK, symlink it with
#  sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
#
#openjdk@11 is keg-only, which means it was not symlinked into /opt/homebrew,
#because this is an alternate version of another formula.
#
#If you need to have openjdk@11 first in your PATH, run:
#  echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
#
#For compilers to find openjdk@11 you may need to set:
#  export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
#
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export ANDROID_CMDLINE_TOOLS="$HOME/Library/Android/sdk/cmdline-tools/latest/bin/"
export PATH="$PATH:$ANDROID_PLATFORM_TOOLS:$ANDROID_CMDLINE_TOOLS"
export NODE_BINARY=$(which node)
