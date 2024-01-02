#!/bin/bash

for num in {01..29}; do
    # ENMIN
    enmin_file="MDP/ENMIN/enmin.${num}.mdp"
    
    # Copy the content of the template file
    cp MDP/ENMIN/enmin.00.mdp "${enmin_file}"
    
    # Update the init-lambda-state line with the current value of num
    awk -v var="${num}" '/init-lambda-state/{gsub(/[0-9]+/, var)}1' "${enmin_file}" > "${enmin_file}.tmp" && mv "${enmin_file}.tmp" "${enmin_file}"

    # NVT
    nvt_file="MDP/NVT/nvt.${num}.mdp"
    
    # Copy the content of the template file
    cp MDP/NVT/nvt.00.mdp "${nvt_file}"
    
    # Update the init-lambda-state line with the current value of num
    awk -v var="${num}" '/init-lambda-state/{gsub(/[0-9]+/, var)}1' "${nvt_file}" > "${nvt_file}.tmp" && mv "${nvt_file}.tmp" "${nvt_file}"

    # NPT
    npt_file="MDP/NPT/npt.${num}.mdp"
    
    # Copy the content of the template file
    cp MDP/NPT/npt.00.mdp "${npt_file}"
    
    # Update the init-lambda-state line with the current value of num
    awk -v var="${num}" '/init-lambda-state/{gsub(/[0-9]+/, var)}1' "${npt_file}" > "${npt_file}.tmp" && mv "${npt_file}.tmp" "${npt_file}"

    # PROD
    prod_file="MDP/PROD/prod.${num}.mdp"
    
    # Copy the content of the template file
    cp MDP/PROD/prod.00.mdp "${prod_file}"
    
    # Update the init-lambda-state line with the current value of num
    awk -v var="${num}" '/init-lambda-state/{gsub(/[0-9]+/, var)}1' "${prod_file}" > "${prod_file}.tmp" && mv "${prod_file}.tmp" "${prod_file}"
done