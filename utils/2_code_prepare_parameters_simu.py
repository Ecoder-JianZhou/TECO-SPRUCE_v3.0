# the parameters from MCMC results to form the parameters file for simulations

import pandas as pd
import os

def read_nml_file(file_path):
    """ read nml file content """
    with open(file_path, "r") as file:
        lines = file.readlines()
    return lines

def parse_nml_lines(lines):
    """ parse the lines in a nml-format with multiple groups """
    data = {}
    current_group = None
    for line in lines:
        line = line.strip()
        if line.startswith('&'): # start a new group
            current_group = line[1:]
            data[current_group] = {}
        elif line.startswith('/'): # end current group
            current_group = None
        elif "=" in line and current_group:
            key, value = line.split('=', 1)
            data[current_group][key.strip()] = value.strip()
    return data

def update_nml_data(data, group, updates):
    """ update the nml date for the specified group, where the updates is a dictionary containing the key-value pairs to be updated  """
    if group in data:
        for key, value in updates.items():
            if key in data[group]:
                data[group][key] = value

def write_nml_file(file_path, data):
    """ re-write the updated nml data back to the file, keeping the group structure """
    with open(file_path, 'w') as file:
        for group, items in data.items():
            file.write(f'&{group}\n')
            for key, value in items.items():
                file.write(f'{key} = {value}\n')
            file.write('/\n')


def run_params4nml(file_params, org_data, file_path):
    # read the parameter file 
    df_dat = pd.read_csv(file_params).iloc[-2]

    df_dict = {}

    for idx in df_dat.index:
        if idx.split("_")[-1].rstrip() in ["Tree", "Shrub", "Sphagnum"]:
            item,_,_ = idx.rpartition('_')
            if item == "SLA": item = "SLAx"
            if item in df_dict.keys():
                df_dict[item] = df_dict[item] + ", " + str(df_dat[idx])
            else:
                df_dict[item] = str(df_dat[idx])
        else:
            df_dict[idx] = str(df_dat[idx])

    # update
    nml_name = ["nml_site_params", "nml_species_params"]
    # group_to_update = 'nml_species_params'  # 
    for group_to_update in nml_name:
        for ikey, item in df_dict.items():
            updates = {ikey.strip(): item}  # the content for updating
            update_nml_data(org_data, group_to_update, updates)

    write_nml_file(file_path, org_data)



ls_plots = ["P04", "P06", "P08", "P10", "P11", "P13", "P16", "P17", "P19", "P20"]
ls_chain = ["1_chain", "2_chain", "3_chain", "4_chain", "5_chain"]

for ichain in ls_chain:
    param_path = "/Users/jianzhou/MyDocs/1_works/1_proj_SPRUCE/1_SPRUCE_DA/1_datasets/1_parameters/2_mcmc_parameters/" + ichain + "/"
    param_opath = "utils/res/" + ichain + "/"
    if not os.path.exists(param_opath):
        os.makedirs(param_opath)

    # each plot        
    for idx_plot, iplot in enumerate(ls_plots):
        print(ichain + " / " + iplot)
        org_file = "configs/cfg_treat_mac/parameters_"+iplot+".nml"
        lines = read_nml_file(org_file)
        data = parse_nml_lines(lines)
        file_params = param_path  + "parameters_" + iplot + ".csv"
        file_path   = param_opath + "parameters_" + iplot + ".nml"
        run_params4nml(file_params, data, file_path)