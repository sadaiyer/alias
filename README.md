# alias
Alias for Linux
alias k=kubectl
alias kubect=kubectl
alias sada='k run -it pod1 --image=cosmintitei/bash-curl --restart=Never --rm'
alias kgp='kubectl get pods'
alias kgs='kubect get services'
alias kgd='kubectl get deploy'

alias c=clear


alias rp='kubectl get pod; read -p "Filename:" podFileName;  kubectl replace -f $podFileName --force --grace-period=0; kubectl get pod'
alias dp='kubectl get pod; read -p "Podname:" podName;  kubectl delete pod $podName --force --grace-period=0; kubectl get pod'
