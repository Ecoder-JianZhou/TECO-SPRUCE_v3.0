#

import pandas as pd
import numpy  as np

# mod_path = "/Users/jianzhou/Documents/1_MyWorks/1_SPRUCE_cases/1_SPRUCE_DA/5_data_assimilation_acclimation/1_datasources/3_mcmc_8_modify/"
mod_path = "/mnt/d/3_case_SPRUCE_data_analysis/2_TECO-SPRUCE_data_assimilation/5_TECO-SPRUCE_v3_DA/1_outputs/6_acc_results/1_mcmc_2011-2013_no_initial_values/4_initial_6"
nsimu    = 1#5
com_path = "run_mcmc_"

plot_names = ["P04", "P06", "P07",  "P08", "P10", "P11", "P13", "P16", "P17", "P19", "P20"]

cleaf = [140, 90.3, 80]
cstem = [250, 45.2,	30]
croot   = [100, 50,   30]
clit	= 200		
clitcwd	= 300		
csoil	= [692, 47725.6, 40866.4]	

s_cLeaf = 2.682, 2.195, 1.589
s_cStem = 2.589, 3.848, 1.366
s_cRoot = 0.8318, 1.147, 1.26

f_fast = 0.004549
f_slow = 0.5733
s_soil = 0.7468

for idx, iplot in enumerate(plot_names):
    print("--------------------------------------")
    print(iplot)
    for i in range(nsimu):
        if i<9:    ifile = "00"+str(i+1)
        elif i<99: ifile = "0"+str(i+1)
        else:      ifile = str(i+1)
        dat_file = mod_path+"/"+com_path+iplot+"/results_csv_format/TECO-SPRUCE_run_mcmc_"+iplot+"_Daily_"+ifile+".csv"
        df_data  = pd.read_csv(dat_file)
        # 获取DataFrame的最后一行的索引
        last_index = df_data.index[-1]
        # 使用.loc[]通过索引和列名来定位最后一行的数据
        val_cleaf = [round(df_data.loc[last_index, 'cLeaf_Tree'],5), round(df_data.loc[last_index, 'cLeaf_Shrub'],5), round(df_data.loc[last_index, 'cLeaf_Sphagnum'],5)]  #		 		 		
        val_cstem = [round(df_data.loc[last_index, 'cStem_Tree'],5), round(df_data.loc[last_index, 'cStem_Shrub'],5), round(df_data.loc[last_index, 'cStem_Sphagnum'],5)]
        val_croot = [round(df_data.loc[last_index, 'cRoot_Tree'],5), round(df_data.loc[last_index, 'cRoot_Shrub'],5), round(df_data.loc[last_index, 'cRoot_Sphagnum'],5)]
        val_clit  = round(df_data.loc[last_index, 'cLitter'],5)
        val_clitcwd  = round(df_data.loc[last_index, 'cLitterCwd'],5)
        # cLitter	cLitterCwd	cSoil cSoilFast	cSoilSlow	cSoilPassive
        val_soilfast = round(df_data.loc[last_index, 'cSoilFast'],5)
        val_soilslow = round(df_data.loc[last_index, 'cSoilSlow'],5)
        val_soilpass = round(df_data.loc[last_index, 'cSoilPassive'],5)
        # ----------------------------------------------------
        ls_values       = np.round(np.array(val_cleaf)/np.array(cleaf),5)
        str_s_cLeaf     = "def_s_cLeaf = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cLeaf_min = "min_s_cLeaf = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cLeaf_max = "max_s_cLeaf = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        
        ls_values  = np.round(np.array(val_cstem)/np.array(cstem),5)
        str_s_cStem = "def_s_cStem = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cStem_min = "min_s_cStem = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cStem_max = "max_s_cStem = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])

        ls_values  = np.round(np.array(val_croot)/np.array(croot),5)
        str_s_cRoot = "def_s_cRoot = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cRoot_min = "min_s_cRoot = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])
        str_s_cRoot_max = "max_s_cRoot = " + str(ls_values[0]) + ","+ str(ls_values[1]) + ","+ str(ls_values[2])

        str_clit  = "cLit_m	= " + str(val_clit)
        str_clitcwd = "cLit_s	= " + str(val_clitcwd)

        a_value_soil = val_soilfast + val_soilslow + val_soilpass
        f_fast = round(val_soilfast/a_value_soil,7)
        f_slow = round(val_soilslow/a_value_soil,5)
        s_soil = round(a_value_soil/(692 + 47725.6 + 40866.4),5)
        str_f_fast = "f_fast = " + str(f_fast) + " , " + str(f_fast) + " , " + str(f_fast)
        str_f_slow = "f_slow = " + str(f_slow) + " , " + str(f_slow) + " , " + str(f_slow) 
        str_s_soil = "s_soil = " + str(s_soil) + " , " + str(s_soil) + " , " + str(s_soil)

        print(str_s_cLeaf)
        print(str_s_cLeaf_min)
        print(str_s_cLeaf_max)
        print(str_s_cStem)
        print(str_s_cStem_min)
        print(str_s_cStem_max)
        print(str_s_cRoot)
        print(str_s_cRoot_min)
        print(str_s_cRoot_max)
        print(str_clit)
        print(str_clitcwd)
        print(str_f_fast)
        print(str_f_slow)
        print(str_s_soil)
        # exit(0)