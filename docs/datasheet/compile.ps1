#!/usr/bin/env pwsh
param ($texfile='Komar.tex')
Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
pdflatex --halt-on-error --shell-escape $texfile
pdflatex --halt-on-error --shell-escape $texfile
pdflatex --halt-on-error --shell-escape $texfile
