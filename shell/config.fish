if status is-interactive
else
end

# empty welcome message
set	fish_greeting

abbr	vim		'nvim'
abbr	gst		'git status'
abbr 	gcd		'git checkout develop'
abbr 	gcm		'git checkout main' 
abbr 	gcma	'git checkout master' 
abbr 	gl		'git pull origin'
abbr 	gca		'git commit --amend'
abbr 	gpu		'git push -u origin'
abbr 	k		'kubectl'

zoxide init fish | source
starship init fish | source
mise activate fish | source
