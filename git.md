~/.ssh/config

Host 10.168.0.129

 Hostname 10.168.0.129

 IdentityFile ~/.mykeys/gitkey


-------------

git config http.sslVerify false

-----------

GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_example"

----------------

git config core.sshCommand "ssh -i ~/.mykeys/gitkey -F /dev/null"


