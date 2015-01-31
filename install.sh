dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"
script=$(readlink -f ${BASH_SOURCE[0]})

for filename in $dir* $dir.*; do
   dotfile=${filename#$dir}
   if [ $filename != $script -a $dotfile != "." -a $dotfile != ".." -a $dotfile != ".git" -a $dotfile != ".config" ]
      then
#         ln -sf $filename ~/$dotfile
         echo $filename
         echo ~/$dotfile
   fi
done

# .config needs to be handled differently
dir="$dir.config/"
for filename in $dir* $dir.*; do
   dotfile=${filename#$dir}
   if [ $filename != $script -a $dotfile != "." -a $dotfile != ".." -a $dotfile != ".git" -a $dotfile != ".config" ]
      then
#         ln -sf $filename ~/.config/$dotfile
         echo $filename
         echo ~/.config/$dotfile
   fi
done
