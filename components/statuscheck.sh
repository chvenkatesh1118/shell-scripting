#!/bin/bash
statuscheck(){
 if [ $? -eq 0 ] 
    then 
   echo succesesschanti
 else 
    echo failurechanti
 fi
}