set -o vi

alias k=kubectl
alias kubect=kubectl
alias sada='k run -it pod1 --image=cosmintitei/bash-curl --restart=Never --rm'
alias kgp='kubectl get pods'
alias kgs='kubect get services'
alias kgd='kubectl get deploy'

alias kgpw='kubectl get pods -o wide'
alias kgsw='kubect get services -o wide'
alias kgdw='kubectl get deploy -o wide'

alias c=clear
alias ll='ls -ltr'

alias kw='kubect get pods --watch'


alias rp='kubectl get pod;read -p "Filename:" podFileName;kubectl replace -f $podFileName --force --grace-period=0;kubectl get pod'
alias dp='kubectl get pod; read -p "Podname:" podName;kubectl delete pod $podName --force --grace-period=0; kubectl get pod'


alias kdp='kubectl describe pod'
alias kdd='kubectl describe deployment'
alias kds='kubectl describe service'
alias kdn='kubectl describe node'

alias kaf='kubectl apply -f '

alias kcv='kubectl config view'
alias kcc='kubectl config current-context'
alias kcs='kubectl config set-context'
alias w='watch -n 0.5 "kubectl config current-context; echo ''; kubectl config view | grep namespace; echo ''; kubectl get namespace,node,ingress,pod,svc,job,cronjob,deployment,rs,pv,pvc,secret,ep -o wide"'


#minimum set of alias
alias kgp='kubectl get pods'
alias kgs='kubect get services'
alias kgd='kubectl get deploy'
alias kcf='kubectl create -f '
alias sc='kubectl get ns;read -p "Enter:" nameSpace;kubectl config set-context --current --namespace $nameSpace;k config view | grep -i namespace'
alias rp='kubectl get pod;read -p "Filename:" podFileName;kubectl replace -f $podFileName --force --grace-period=0;kubectl get pod'
alias dp='kubectl get pod; read -p "Podname:" podName;kubectl delete pod $podName --force --grace-period=0; kubectl get pod'
export dr='--dry-run -o yaml'



