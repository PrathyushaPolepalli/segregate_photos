#!/bin/bash

for i in {10..19}
do
        mkdir 20${i}
        for file in 20${i}*.jpg; do
                mv "$file" 20${i}
        done
done

for i in {10..19}
do
        cd 20${i}
        for j in {1..12}
        do
                mkdir ${j}
                for file in *.jpg;
                do
                        if  [[ $file == 20${i}-${j}*.jpg ]]
                        then
                                mv "$file"  ${j}
                        fi
                done
        done
        cd ..
done

for i in {10..19}
do
        cd 20${i}
        for j in {1..12}
        do
                if [ "$(ls -A ${j})" ];
                then
                        continue
                else
                        rmdir ${j}
                 fi
	done
	cd ..
done
