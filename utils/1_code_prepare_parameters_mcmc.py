# This code is used to prepare data for MCMC based on the range of parameters

import pandas as pd
# import f90nml

def read_nml_file(file_path):
    """ read the nml-file content """
    with open(file_path, 'r') as file:
        lines = file.readlines()
    return lines

def parse_nml_lines(lines):
    """ parse the nml-file containing multiple lines """
    data = {}
    current_group = None
    for line in lines:
        line = line.strip()
        if line.startswith('&'):  # start new group
            current_group = line[1:]
            data[current_group] = {}
        elif line.startswith('/'):  # end current group
            current_group = None
        elif '=' in line and current_group:
            key, value = line.split('=', 1)
            if "!" in line:
                value = value.split("!")[0]
            # print(key, value)
            # exit(0)
            data[current_group][key.strip()] = value.strip()
    return data

def update_nml_data(data, group, updates, num):
    """ Update NML data for the specified group, where 'updates' is a dictionary containing the key-value pairs to be updated. """
    if group in data:
        for key, value in updates.items():
            if key in data[group]:
                if key.split("_")[0] == "def": 
                    data[group][key] = value
                    num = num + 1
                else:
                    original_string = data[group][key]
                    parts = original_string.split(",", 1)
                    second_part = parts[1]
                    new_string = value + "," + second_part
                    data[group][key] = new_string
                    num = num + 1
    return num

def write_nml_file(file_path, data):
    """ Write the updated NML data back to the file, preserving the structure of the groups. """
    with open(file_path, 'w') as file:
        for group, items in data.items():
            file.write(f'&{group}\n')
            for key, value in items.items():
                file.write(f'{key} = {value}\n')
            file.write('/\n')

import pandas as pd

# 1. read the orginal file of mcmc_config.nml
file_path = "configs/mcmc_configs_used.nml"
lines     = read_nml_file(file_path)
data      = parse_nml_lines(lines)

# print(data)#.keys())

# 2. read the file
ls_plots = ["P04", "P06", "P08", "P10", "P11", "P13", "P16", "P17", "P19", "P20"]
param_path = "/mnt/d/3_case_SPRUCE_data_analysis/2_TECO-SPRUCE_data_assimilation/5_TECO-SPRUCE_v3_DA/0_bak_data/2_outputs/outputs_0129_m_2/run_mcmc_"
out_path   = "/mnt/d/3_case_SPRUCE_data_analysis/2_TECO-SPRUCE_data_assimilation/5_TECO-SPRUCE_v3_DA/2_create_parameters/1_parameters_20240306/"

for idx, iplot in enumerate(ls_plots):
    file_param = param_path + iplot + "/results_mcmc/sel_parameter_sets.csv"
    df_param = pd.read_csv(file_param).loc[0,:]
    # print(df_param)
    df_dict  = {}
    for idx_param in df_param.index:
        if idx_param.split("_")[-1].rstrip() in ["Tree", "Shrub", "Sphagnum"]:
            item,_,_ = idx_param.rpartition('_')
            if item == "SLA": item = "SLAx"
            item_new = "def_" + item
            # print(item, idx_param)
            if item_new in df_dict.keys():
                print(item_new)
                df_dict[item_new] = df_dict[item_new] + "," + str(df_param[idx_param]) 
            else:
                df_dict[item_new] = str(df_param[idx_param]) 
        else:
            df_dict[idx_param.strip()] = str(df_param[idx_param])
    print(df_dict)

    # renew the value
    nml_name = ["nml_site_params", "nml_species_params"]
    num = 0
    for group_to_update in nml_name:
        for ikey, item in df_dict.items():
            updates = {ikey.strip(): item}  # content
            num = update_nml_data(data, group_to_update, updates, num)
    print(num)
    # write
    write_nml_file(out_path + "mcmc_configs_1119_"+iplot+".nml", data)
    # exit(0)