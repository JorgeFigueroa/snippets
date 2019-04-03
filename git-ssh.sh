ls -al ~/.ssh-keygen 		##see if existing SSH keys are present
ssh-keygen -t rsa -b 4096 -C "my@gmail.com" -f  /Users/jorge/.ssh/	##Generating a new SSH key
ssh -i /path/to/key -vT git@github.com
eval "$(ssh-agent -s)"		##Start the ssh-agent in the background.
ssh-add ~/.ssh/id_rsa 		##Add your SSH private key to the ssh-agent and store your passphrase in the keychain
ssh -T git@github.com       #Hi USER! You've successfully authenticated
pbcopy < ~/.ssh/id_rsa.pub  ##Copies the contents of the id_rsa.pub

