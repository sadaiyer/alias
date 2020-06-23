# alias
Alias for Linux
alias k=kubectl
alias kubect=kubectl
alias sada='k run -it pod1 --image=cosmintitei/bash-curl --restart=Never --rm'
alias kgp='kubectl get pods -o wide'
alias kgs='kubect get services -o wide'
alias kgd='kubectl get deploy -o wide'
alias kgn='kubectl get nodes'

alias c=clear
alias ll='ls -ltr'


alias rp='kubectl get pod;read -p "Filename:" podFileName;kubectl replace -f $podFileName --force --grace-period=0;kubectl get pod'
alias dp='kubectl get pod; read -p "Podname:" podName;kubectl delete pod $podName --force --grace-period=0; kubectl get pod'
alias sc='k get ns;read -p "EnterNS:" nSpace;k config set-context --current --namespace=$nSpace;k config view | grep -i namespace;export NS=`k config view|grep namespace | cut -f2 -d:`;export PS1="[\u@\h $NS \W]\$"'

alias kdp='kubectl describe pod'
alias kdd='kubectl describe deployment'
alias kds='kubectl describe service'
alias kdn='kubectl describe node'

alias kaf='kubectl apply -f '
alias kcf='kubectl create -f '

alias kcv='kubectl config view'
alias kcc='kubectl config current-context'
alias kcs='kubectl config set-context'
