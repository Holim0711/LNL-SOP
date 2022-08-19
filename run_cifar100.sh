bsub -q normal -gpu "num=1:mode=shared:j_exclusive=yes" -J "Overparam_$noise" -n 2 -R "rusage[mem=8]" -oo OverPara_cifar100.o%J -eo OverPara_cifar100.e%J python train.py -c config_cifar100.json --lr_u 1 --lr_v 100 --percent 0.4 --name CIFAR100 --asym True