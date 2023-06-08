set -o vi

alias k=kubectl
alias kubect=kubectl
#alias sada='k run -it pod1 --image=cosmintitei/bash-curl --restart=Never --rm'
alias bb='k run bb --image=busybox:1.28 --restart=Never --rm -it -- /bin/sh'
alias sada='k run -it pod1 --image=sadaiyer/bash-curl --restart=Never --rm'
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
alias sc='k get ns;read -p "EnterNS:" nSpace;k config set-context --current --namespace=$nSpace;k config view --minify | grep -i namespace;export NS=`k config view|grep namespace | cut -f2 -d:`;export PS1="[\u@\h@$NS\W]\$"'
alias rp='kubectl get pod;read -p "Filename:" podFileName;kubectl replace -f $podFileName --force --grace-period=0;kubectl get pod'
alias dp='kubectl get pod; read -p "Podname:" podName;kubectl delete pod $podName --force --grace-period=0; kubectl get pod'
export dr='--dry-run=client -o yaml'
export aa="grep -i '#' -A 2"
export vimrc='autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0'
export ETCDCTL_API=3



alias bb='k run bb --image=busybox:1.28 --restart=Never --rm -it -- /bin/sh -c "sleep 3600"'
alias ac='k run ac --image=sadaiyer/alpine-curl --restart=Never --rm -it '

export EDITOR=vi
export KUBE_EDITOR=vi
alias kgn='kubectl get nodes'
alias kdp='kubectl describe pod '
alias wn='kubectl config view | grep namespace'
export KN=' -n kube-system'
alias kw='kgp -o wide -w'
alias kj='kubeadm token create --print-join-command'
alias kh='kubectl get cs;kubectl cluster-info;kubectl version --short; kubeadm alpha certs check-expiration'
c

