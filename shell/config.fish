if status is-interactive
    # Commands to run in interactive sessions can go here
end

# empty welcome message
set fish_greeting
set -Ux EDITOR nvim

abbr	vim	'nvim'
abbr	gst	'git status'
abbr 	gcd	'git checkout develop'
abbr 	gcm 	'git checkout master' 
abbr 	gl	'git pull origin'
abbr 	gca 	'git commit --amend'
abbr 	gpu 	'git push -u origin'

zoxide init fish | source
