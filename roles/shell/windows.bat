@if "%1" == "/I" (
    @mklink /D "%HOME%\.vim"          "%~dp0files\dotfiles\.vim"
    @mklink    "%HOME%\.aliases"      "%~dp0files\dotfiles\.aliases"
    @mklink    "%HOME%\.bash_profile" "%~dp0files\dotfiles\.bash_profile"
    @mklink    "%HOME%\.bashrc"       "%~dp0files\dotfiles\.bashrc"
    @mklink    "%HOME%\.environment"  "%~dp0files\dotfiles\.environment"
    @mklink    "%HOME%\.gitconfig"    "%~dp0files\dotfiles\.gitconfig"
    @mklink    "%HOME%\.minttyrc"     "%~dp0files\dotfiles\.minttyrc"
    @mklink    "%HOME%\.vimrc"        "%~dp0files\dotfiles\.vimrc"
) else if "%1" == "/U" (
    rd  "%HOME%\.vim"
    del "%HOME%\.aliases"
    del "%HOME%\.bash_profile"
    del "%HOME%\.bashrc"
    del "%HOME%\.environment"
    del "%HOME%\.gitconfig"
    del "%HOME%\.minttyrc"
    del "%HOME%\.vimrc"
)
