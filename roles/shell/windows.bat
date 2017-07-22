@if "%1" == "/I" (
    @mklink /D "%HOME%\.vim"          "%~dp0files\.vim"
    @mklink    "%HOME%\.aliases"      "%~dp0files\.aliases"
    @mklink    "%HOME%\.bash_profile" "%~dp0files\.bash_profile"
    @mklink    "%HOME%\.bashrc"       "%~dp0files\.bashrc"
    @mklink    "%HOME%\.environment"  "%~dp0files\.environment"
    @mklink    "%HOME%\.gitconfig"    "%~dp0files\.gitconfig"
    @mklink    "%HOME%\.minttyrc"     "%~dp0files\.minttyrc"
    @mklink    "%HOME%\.vimrc"        "%~dp0files\.vimrc"
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
