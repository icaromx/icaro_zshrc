uboone_icaro(){
	ssh -XYK icaro@uboonegpvm0$1.fnal.gov
}
build_uboone(){
	ssh -KXY icaro@uboonebuild0$1.fnal.gov
}

dune_icaro(){
	ssh -XYK icaro@dunegpvm0$1.fnal.gov
}

icarusgpvm(){
	ssh -XYK icarus0$1
}

prod(){
	ssh -XYK icaruspro0$1
}

alias sbnsam='ssh -XYK icaruspro@sbnsamgpvm01.fnal.gov'
alias icarussam='ssh -XYK icaruspro@icarussamgpvm02.fnal.gov'
alias iceberg='ssh -YXK dunecet@iceberg.fnal.gov'

protodune-daq(){
	ssh -XYK dunecet@protodune-daq0$1.fnal.gov
}

copy_from_uboone(){
	scp icaro@uboonegpvm07.fnal.gov:$1 .
}

port_uboonegpvm(){
	ssh -KXYL localhost:8889:localhost:8889 icaro@uboonegpvm0$1.fnal.gov
}

port_uboonebuild(){
	ssh -KXYL localhost:8889:localhost:8889 icaro@uboonebuild02.fnal.gov
}
export MOUNT=/Users/icaro/Work/Mounts
export PROTODUNEDAQMOUNT=/Users/icaro/Work/ibmount
alias sshfs_ub='umount -f $MOUNT/ubmount; sshfs icaro@uboonegpvm02.FNAL.GOV:/uboone/app/users/icaro/ $MOUNT/ubmount -o reconnect'
alias sshfs_poms='umount -f $MOUNT/pomsmount; sshfs icarus01:/icarus/app/poms_test/ $MOUNT/pomsmount -o reconnect'
alias sshfs_dune='umount -f $MOUNT/dunemount; sshfs icaro@dunegpvm07.FNAL.GOV:/dune/app/users/icaro/ $MOUNT/dunemount -o reconnect'
alias sshfs_proto='umount -f $MOUNT/protodunemount; sshfs dunecet@protodune-daq02.FNAL.GOV:/home/nfs/dunecet/ $MOUNT/protodunemount -o reconnect'
alias sshfs_icarus='umount -f $MOUNT/icarusmount; sshfs icaro@icarusgpvm04.FNAL.GOV:/icarus/app/users/icaro/ $MOUNT/icarusmount -o reconnect'
alias sshfs_prod='umount -f $MOUNT/prodmount; sshfs icaruspro01:/icarus/app/home/icaruspro/icaro_scripts $MOUNT/prodmount -o reconnect'
alias sshfs_iceberg='umount -f $MOUNT/icebergmount; sshfs dunecet@iceberg.FNAL.GOV:/home/dunecet/ $MOUNT/icebergmount -o reconnect'
export PS1="% $USER %% "
alias ivan='kinit icaro@FNAL.GOV'
alias activateConda='eval "$(/Users/icaro/Programs/miniconda3/bin/conda shell.zsh hook)"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/icaro/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/icaro/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/icaro/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/icaro/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

copy_here_from_uboone(){
 scp icaro@uboonegpvm07.fnal.gov:$1 .
}

hepoffice(){
	ssh -XKY ivan@10.2.140.53
}


alias sshfs_hepoffice='umount -f $MOUNT/hepofficemount; sshfs ivan@10.2.140.53:/home/ivan/ $MOUNT/hepofficemount -o reconnect'
