     read -p "p number:" p
     read -p "q number:" q
     
     if [ $p -gt $q ]
      then 
      echo "p>q"
     fi 
     if [ $p -eq $q ] 
     
     then
      echo "p=q"
       else
       echo "p<q"
       fi