#ALIAS# 
# curl https://raw.githubusercontent.com/sadaiyer/alias/master/alias.sh > alias.sh
# source alias.sh

set -o vi
alias ll='ls -ltr'
export kn='-n kube-system'

## echo 'autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et nonu' >> ~/.vimrc

export ETCDCTL_API=3

alias ll='ls -ltr'alias k='kubectl'
alias kgp='k get pods'
alias krf='kubectl --force --grace-period=0 replace -f '
alias kgpw='k get pods -o wide'
alias kgd='k get deploy'
alias kgs='k get svc'
alias kcf='k create -f'
alias dp='k get pods;read -p "Enter podName:" podName;k delete pod $podName --force --grace-period=0;k get pods'
alias sc='k get ns;read -p "Enter nSpace:" nSpace;k config set-context --current --namespace=$nSpace;k config view --minify | grep namespace;export PS1="\[\]\u:\H:$nSpace:$ "'
alias c='clear'
export dr='--dry-run=client -o yaml'
alias hp='k run pods -h|grep "#" -A2;'
alias hk='read -p "Enter Resource:" resName;echo $resName; k create $resName -h|grep "#" -A2;'


alias mycurl='kubectl run mycurlpod --image=curlimages/curl -i --tty -- sh'
alias pi='kubectl run --rm utils -it --image arunvelsriram/utils bash'

# https://bash-prompt.net/guides/create-system-load/
# Memory Section
# To generate memory load, 
alias showmem='grep Mem /proc/meminfo'
echo MemFree='MemFree is the total amount of unused physical memory (RAM)'
echo MemAvailable='MemAvailable is the estimated amount of RAM usable for the system and new app to start without caches, it is MemFree + reclaimable memory blocks like those inactive pages, etc.'

# CPU Section
# To generate CPU load, use STRESS
# nohup stress --cpu 8 --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 1 &


alias showcpu='grep proc /proc/cpuinfo'
alias showos='lsb_release -a'

alias showphysicalcpus='grep "physical id" /proc/cpuinfo | sort | uniq | wc -l'
alias showvirtualprocessors='grep "^processor" /proc/cpuinfo | wc -l'
alias shownumcores='grep "cpu cores" /proc/cpuinfo | uniq'



#cni
alias cni='kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml'



export EDITOR=vi
export KUBE_EDITOR=vi

export VISUAL=vim
export EDITOR="$VISUAL"

alias kdp='kubectl describe pod'
alias kgn='kubectl get nodes'
alias kdd='kubectl describe deployment'
alias kds='kubectl describe service'
alias kdn='kubectl describe node'
alias kaf='kubectl apply -f '
alias kcv='kubectl config view'
alias kcc='kubectl config current-context'
alias kcs='kubectl config set-context'
alias w='watch -n 0.5 "kubectl config current-context; echo ''; kubectl config view | grep namespace; echo ''; kubectl get namespace,node,ingress,pod,svc,job,cronjob,deployment,rs,pv,pvc,secret,ep -o wide"'


alias wn='kubectl config view --minify | grep namespace'
export KN=' -n kube-system'
alias kw='kgp -o wide -w'
alias kj='kubeadm token create --print-join-command'
alias kh='kubectl get cs;kubectl cluster-info;kubectl version --short; kubeadm certs check-expiration'
alias pa='dpkg --print-architecture'
alias getsa='k get clusterrolebinding -o custom-columns=CRB:.metadata.name,CR:.roleRef.name,SA:.subjects[*].name | grep -v system'
alias kgcc='kgp -o custom-columns=NAME:.metadata.name,IMAGE:.spec.containers[*].image'

alias kgsa='k get rolebinding -o custom-columns=RB:.metadata.name,Role:.roleRef.name,SA:.subjects[*].name | grep -v system'
alias kgps='kgp --show-labels'
alias kgnp='k get networkpolicies'
alias kdnp='k delete networkpolicy '

alias ekm='cd /etc/kubernetes/manifests/'
alias kal='cd /var/log/pods/kube-system_kube-apiserver*/kube-apiserver/'


alias mcurl='kubectl run --rm utils -it --image arunvelsriram/utils bash'
alias bb='k run bb --image=busybox:1.28 --restart=Never --rm -it -- /bin/sh -c "sleep 3600"'

c










