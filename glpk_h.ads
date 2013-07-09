pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package glpk_h is

   --  unsupported macro: GLP_MAJOR_VERSION 4
   --  unsupported macro: GLP_MINOR_VERSION 45
   --  unsupported macro: GLP_MIN 1
   GLP_MIN : constant := 1;
   GLP_MAX : constant := 2;
   --  unsupported macro: GLP_MAX 2
   --  unsupported macro: GLP_CV 1
   GLP_CV : constant := 1;
   --  unsupported macro: GLP_IV 2
   GLP_IV : constant := 2;
   --  unsupported macro: GLP_BV 3
   GLP_BV : constant := 3;
   --  unsupported macro: GLP_FR 1
   GLP_FR : constant := 1;
   --  unsupported macro: GLP_LO 2
   GLP_LO : constant := 2;
   --  unsupported macro: GLP_UP 3
   GLP_UP : constant := 3;
   --  unsupported macro: GLP_DB 4
   GLP_DB : constant := 4;
   --  unsupported macro: GLP_FX 5
   GLP_FX : constant := 5;
   --  unsupported macro: GLP_BS 1
   --  unsupported macro: GLP_NL 2
   --  unsupported macro: GLP_NU 3
   --  unsupported macro: GLP_NF 4
   --  unsupported macro: GLP_NS 5
   --  unsupported macro: GLP_SF_GM 0x01
   --  unsupported macro: GLP_SF_EQ 0x10
   --  unsupported macro: GLP_SF_2N 0x20
   --  unsupported macro: GLP_SF_SKIP 0x40
   --  unsupported macro: GLP_SF_AUTO 0x80
   --  unsupported macro: GLP_SOL 1
   --  unsupported macro: GLP_IPT 2
   --  unsupported macro: GLP_MIP 3
   --  unsupported macro: GLP_UNDEF 1
   --  unsupported macro: GLP_FEAS 2
   --  unsupported macro: GLP_INFEAS 3
   --  unsupported macro: GLP_NOFEAS 4
   --  unsupported macro: GLP_OPT 5
   --  unsupported macro: GLP_UNBND 6
   --  unsupported macro: GLP_BF_FT 1
   --  unsupported macro: GLP_BF_BG 2
   --  unsupported macro: GLP_BF_GR 3
   --  unsupported macro: GLP_MSG_OFF 0
   GLP_MSG_OFF : constant := 0;
   --  unsupported macro: GLP_MSG_ERR 1
   GLP_MSG_ERR : constant := 1;
   --  unsupported macro: GLP_MSG_ON 2
   GLP_MSG_ON : constant := 2;
   --  unsupported macro: GLP_MSG_ALL 3
   GLP_MSG_All : constant := 3;
   --  unsupported macro: GLP_MSG_DBG 4
   --  unsupported macro: GLP_PRIMAL 1
   --  unsupported macro: GLP_DUALP 2
   --  unsupported macro: GLP_DUAL 3
   --  unsupported macro: GLP_PT_STD 0x11
   --  unsupported macro: GLP_PT_PSE 0x22
   --  unsupported macro: GLP_RT_STD 0x11
   --  unsupported macro: GLP_RT_HAR 0x22
   --  unsupported macro: GLP_ORD_NONE 0
   --  unsupported macro: GLP_ORD_QMD 1
   --  unsupported macro: GLP_ORD_AMD 2
   --  unsupported macro: GLP_ORD_SYMAMD 3
   --  unsupported macro: GLP_BR_FFV 1
   --  unsupported macro: GLP_BR_LFV 2
   --  unsupported macro: GLP_BR_MFV 3
   --  unsupported macro: GLP_BR_DTH 4
   --  unsupported macro: GLP_BR_PCH 5
   --  unsupported macro: GLP_BT_DFS 1
   --  unsupported macro: GLP_BT_BFS 2
   --  unsupported macro: GLP_BT_BLB 3
   --  unsupported macro: GLP_BT_BPH 4
   --  unsupported macro: GLP_PP_NONE 0
   --  unsupported macro: GLP_PP_ROOT 1
   --  unsupported macro: GLP_PP_ALL 2
   --  unsupported macro: GLP_RF_REG 0
   --  unsupported macro: GLP_RF_LAZY 1
   --  unsupported macro: GLP_RF_CUT 2
   --  unsupported macro: GLP_RF_GMI 1
   --  unsupported macro: GLP_RF_MIR 2
   --  unsupported macro: GLP_RF_COV 3
   --  unsupported macro: GLP_RF_CLQ 4
   --  unsupported macro: GLP_ON 1
   --  unsupported macro: GLP_OFF 0
   --  unsupported macro: GLP_IROWGEN 0x01
   --  unsupported macro: GLP_IBINGO 0x02
   --  unsupported macro: GLP_IHEUR 0x03
   --  unsupported macro: GLP_ICUTGEN 0x04
   --  unsupported macro: GLP_IBRANCH 0x05
   --  unsupported macro: GLP_ISELECT 0x06
   --  unsupported macro: GLP_IPREPRO 0x07
   --  unsupported macro: GLP_NO_BRNCH 0
   --  unsupported macro: GLP_DN_BRNCH 1
   --  unsupported macro: GLP_UP_BRNCH 2
   --  unsupported macro: GLP_EBADB 0x01
   --  unsupported macro: GLP_ESING 0x02
   --  unsupported macro: GLP_ECOND 0x03
   --  unsupported macro: GLP_EBOUND 0x04
   --  unsupported macro: GLP_EFAIL 0x05
   --  unsupported macro: GLP_EOBJLL 0x06
   --  unsupported macro: GLP_EOBJUL 0x07
   --  unsupported macro: GLP_EITLIM 0x08
   --  unsupported macro: GLP_ETMLIM 0x09
   --  unsupported macro: GLP_ENOPFS 0x0A
   --  unsupported macro: GLP_ENODFS 0x0B
   --  unsupported macro: GLP_EROOT 0x0C
   --  unsupported macro: GLP_ESTOP 0x0D
   --  unsupported macro: GLP_EMIPGAP 0x0E
   --  unsupported macro: GLP_ENOFEAS 0x0F
   --  unsupported macro: GLP_ENOCVG 0x10
   --  unsupported macro: GLP_EINSTAB 0x11
   --  unsupported macro: GLP_EDATA 0x12
   --  unsupported macro: GLP_ERANGE 0x13
   --  unsupported macro: GLP_KKT_PE 1
   --  unsupported macro: GLP_KKT_PB 2
   --  unsupported macro: GLP_KKT_DE 3
   --  unsupported macro: GLP_KKT_DB 4
   --  unsupported macro: GLP_KKT_CS 5
   --  unsupported macro: GLP_MPS_DECK 1
   --  unsupported macro: GLP_MPS_FILE 2
   --  unsupported macro: glp_error glp_error_(__FILE__, __LINE__)
   --  unsupported macro: glp_assert(expr) ((void)((expr) || (glp_assert_(#expr, __FILE__, __LINE__), 1)))
   --  unsupported macro: GLP_ASN_MIN 1
   --  unsupported macro: GLP_ASN_MAX 2
   --  unsupported macro: GLP_ASN_MMP 3
   --  unsupported macro: LPX glp_prob
   --  unsupported macro: LPX_LP 100
   --  unsupported macro: LPX_MIP 101
   --  unsupported macro: LPX_FR 110
   --  unsupported macro: LPX_LO 111
   --  unsupported macro: LPX_UP 112
   --  unsupported macro: LPX_DB 113
   --  unsupported macro: LPX_FX 114
   --  unsupported macro: LPX_MIN 120
   --  unsupported macro: LPX_MAX 121
   --  unsupported macro: LPX_P_UNDEF 132
   --  unsupported macro: LPX_P_FEAS 133
   --  unsupported macro: LPX_P_INFEAS 134
   --  unsupported macro: LPX_P_NOFEAS 135
   --  unsupported macro: LPX_D_UNDEF 136
   --  unsupported macro: LPX_D_FEAS 137
   --  unsupported macro: LPX_D_INFEAS 138
   --  unsupported macro: LPX_D_NOFEAS 139
   --  unsupported macro: LPX_BS 140
   --  unsupported macro: LPX_NL 141
   --  unsupported macro: LPX_NU 142
   --  unsupported macro: LPX_NF 143
   --  unsupported macro: LPX_NS 144
   --  unsupported macro: LPX_T_UNDEF 150
   --  unsupported macro: LPX_T_OPT 151
   --  unsupported macro: LPX_CV 160
   --  unsupported macro: LPX_IV 161
   --  unsupported macro: LPX_I_UNDEF 170
   --  unsupported macro: LPX_I_OPT 171
   --  unsupported macro: LPX_I_FEAS 172
   --  unsupported macro: LPX_I_NOFEAS 173
   --  unsupported macro: LPX_OPT 180
   --  unsupported macro: LPX_FEAS 181
   --  unsupported macro: LPX_INFEAS 182
   --  unsupported macro: LPX_NOFEAS 183
   --  unsupported macro: LPX_UNBND 184
   --  unsupported macro: LPX_UNDEF 185
   --  unsupported macro: LPX_E_OK 200
   --  unsupported macro: LPX_E_EMPTY 201
   --  unsupported macro: LPX_E_BADB 202
   --  unsupported macro: LPX_E_INFEAS 203
   --  unsupported macro: LPX_E_FAULT 204
   --  unsupported macro: LPX_E_OBJLL 205
   --  unsupported macro: LPX_E_OBJUL 206
   --  unsupported macro: LPX_E_ITLIM 207
   --  unsupported macro: LPX_E_TMLIM 208
   --  unsupported macro: LPX_E_NOFEAS 209
   --  unsupported macro: LPX_E_INSTAB 210
   --  unsupported macro: LPX_E_SING 211
   --  unsupported macro: LPX_E_NOCONV 212
   --  unsupported macro: LPX_E_NOPFS 213
   --  unsupported macro: LPX_E_NODFS 214
   --  unsupported macro: LPX_E_MIPGAP 215
   --  unsupported macro: LPX_K_MSGLEV 300
   --  unsupported macro: LPX_K_SCALE 301
   --  unsupported macro: LPX_K_DUAL 302
   --  unsupported macro: LPX_K_PRICE 303
   --  unsupported macro: LPX_K_RELAX 304
   --  unsupported macro: LPX_K_TOLBND 305
   --  unsupported macro: LPX_K_TOLDJ 306
   --  unsupported macro: LPX_K_TOLPIV 307
   --  unsupported macro: LPX_K_ROUND 308
   --  unsupported macro: LPX_K_OBJLL 309
   --  unsupported macro: LPX_K_OBJUL 310
   --  unsupported macro: LPX_K_ITLIM 311
   --  unsupported macro: LPX_K_ITCNT 312
   --  unsupported macro: LPX_K_TMLIM 313
   --  unsupported macro: LPX_K_OUTFRQ 314
   --  unsupported macro: LPX_K_OUTDLY 315
   --  unsupported macro: LPX_K_BRANCH 316
   --  unsupported macro: LPX_K_BTRACK 317
   --  unsupported macro: LPX_K_TOLINT 318
   --  unsupported macro: LPX_K_TOLOBJ 319
   --  unsupported macro: LPX_K_MPSINFO 320
   --  unsupported macro: LPX_K_MPSOBJ 321
   --  unsupported macro: LPX_K_MPSORIG 322
   --  unsupported macro: LPX_K_MPSWIDE 323
   --  unsupported macro: LPX_K_MPSFREE 324
   --  unsupported macro: LPX_K_MPSSKIP 325
   --  unsupported macro: LPX_K_LPTORIG 326
   --  unsupported macro: LPX_K_PRESOL 327
   --  unsupported macro: LPX_K_BINARIZE 328
   --  unsupported macro: LPX_K_USECUTS 329
   --  unsupported macro: LPX_K_BFTYPE 330
   --  unsupported macro: LPX_K_MIPGAP 331
   --  unsupported macro: LPX_C_COVER 0x01
   --  unsupported macro: LPX_C_CLIQUE 0x02
   --  unsupported macro: LPX_C_GOMORY 0x04
   --  unsupported macro: LPX_C_MIR 0x08
   --  unsupported macro: LPX_C_ALL 0xFF
   --  unsupported macro: lpx_create_prob _glp_lpx_create_prob
   --  unsupported macro: lpx_set_prob_name _glp_lpx_set_prob_name
   --  unsupported macro: lpx_set_obj_name _glp_lpx_set_obj_name
   --  unsupported macro: lpx_set_obj_dir _glp_lpx_set_obj_dir
   --  unsupported macro: lpx_add_rows _glp_lpx_add_rows
   --  unsupported macro: lpx_add_cols _glp_lpx_add_cols
   --  unsupported macro: lpx_set_row_name _glp_lpx_set_row_name
   --  unsupported macro: lpx_set_col_name _glp_lpx_set_col_name
   --  unsupported macro: lpx_set_row_bnds _glp_lpx_set_row_bnds
   --  unsupported macro: lpx_set_col_bnds _glp_lpx_set_col_bnds
   --  unsupported macro: lpx_set_obj_coef _glp_lpx_set_obj_coef
   --  unsupported macro: lpx_set_mat_row _glp_lpx_set_mat_row
   --  unsupported macro: lpx_set_mat_col _glp_lpx_set_mat_col
   --  unsupported macro: lpx_load_matrix _glp_lpx_load_matrix
   --  unsupported macro: lpx_del_rows _glp_lpx_del_rows
   --  unsupported macro: lpx_del_cols _glp_lpx_del_cols
   --  unsupported macro: lpx_delete_prob _glp_lpx_delete_prob
   --  unsupported macro: lpx_get_prob_name _glp_lpx_get_prob_name
   --  unsupported macro: lpx_get_obj_name _glp_lpx_get_obj_name
   --  unsupported macro: lpx_get_obj_dir _glp_lpx_get_obj_dir
   --  unsupported macro: lpx_get_num_rows _glp_lpx_get_num_rows
   --  unsupported macro: lpx_get_num_cols _glp_lpx_get_num_cols
   --  unsupported macro: lpx_get_row_name _glp_lpx_get_row_name
   --  unsupported macro: lpx_get_col_name _glp_lpx_get_col_name
   --  unsupported macro: lpx_get_row_type _glp_lpx_get_row_type
   --  unsupported macro: lpx_get_row_lb _glp_lpx_get_row_lb
   --  unsupported macro: lpx_get_row_ub _glp_lpx_get_row_ub
   --  unsupported macro: lpx_get_row_bnds _glp_lpx_get_row_bnds
   --  unsupported macro: lpx_get_col_type _glp_lpx_get_col_type
   --  unsupported macro: lpx_get_col_lb _glp_lpx_get_col_lb
   --  unsupported macro: lpx_get_col_ub _glp_lpx_get_col_ub
   --  unsupported macro: lpx_get_col_bnds _glp_lpx_get_col_bnds
   --  unsupported macro: lpx_get_obj_coef _glp_lpx_get_obj_coef
   --  unsupported macro: lpx_get_num_nz _glp_lpx_get_num_nz
   --  unsupported macro: lpx_get_mat_row _glp_lpx_get_mat_row
   --  unsupported macro: lpx_get_mat_col _glp_lpx_get_mat_col
   --  unsupported macro: lpx_create_index _glp_lpx_create_index
   --  unsupported macro: lpx_find_row _glp_lpx_find_row
   --  unsupported macro: lpx_find_col _glp_lpx_find_col
   --  unsupported macro: lpx_delete_index _glp_lpx_delete_index
   --  unsupported macro: lpx_scale_prob _glp_lpx_scale_prob
   --  unsupported macro: lpx_unscale_prob _glp_lpx_unscale_prob
   --  unsupported macro: lpx_set_row_stat _glp_lpx_set_row_stat
   --  unsupported macro: lpx_set_col_stat _glp_lpx_set_col_stat
   --  unsupported macro: lpx_std_basis _glp_lpx_std_basis
   --  unsupported macro: lpx_adv_basis _glp_lpx_adv_basis
   --  unsupported macro: lpx_cpx_basis _glp_lpx_cpx_basis
   --  unsupported macro: lpx_simplex _glp_lpx_simplex
   --  unsupported macro: lpx_exact _glp_lpx_exact
   --  unsupported macro: lpx_get_status _glp_lpx_get_status
   --  unsupported macro: lpx_get_prim_stat _glp_lpx_get_prim_stat
   --  unsupported macro: lpx_get_dual_stat _glp_lpx_get_dual_stat
   --  unsupported macro: lpx_get_obj_val _glp_lpx_get_obj_val
   --  unsupported macro: lpx_get_row_stat _glp_lpx_get_row_stat
   --  unsupported macro: lpx_get_row_prim _glp_lpx_get_row_prim
   --  unsupported macro: lpx_get_row_dual _glp_lpx_get_row_dual
   --  unsupported macro: lpx_get_row_info _glp_lpx_get_row_info
   --  unsupported macro: lpx_get_col_stat _glp_lpx_get_col_stat
   --  unsupported macro: lpx_get_col_prim _glp_lpx_get_col_prim
   --  unsupported macro: lpx_get_col_dual _glp_lpx_get_col_dual
   --  unsupported macro: lpx_get_col_info _glp_lpx_get_col_info
   --  unsupported macro: lpx_get_ray_info _glp_lpx_get_ray_info
   --  unsupported macro: lpx_check_kkt _glp_lpx_check_kkt
   --  unsupported macro: lpx_warm_up _glp_lpx_warm_up
   --  unsupported macro: lpx_eval_tab_row _glp_lpx_eval_tab_row
   --  unsupported macro: lpx_eval_tab_col _glp_lpx_eval_tab_col
   --  unsupported macro: lpx_transform_row _glp_lpx_transform_row
   --  unsupported macro: lpx_transform_col _glp_lpx_transform_col
   --  unsupported macro: lpx_prim_ratio_test _glp_lpx_prim_ratio_test
   --  unsupported macro: lpx_dual_ratio_test _glp_lpx_dual_ratio_test
   --  unsupported macro: lpx_interior _glp_lpx_interior
   --  unsupported macro: lpx_ipt_status _glp_lpx_ipt_status
   --  unsupported macro: lpx_ipt_obj_val _glp_lpx_ipt_obj_val
   --  unsupported macro: lpx_ipt_row_prim _glp_lpx_ipt_row_prim
   --  unsupported macro: lpx_ipt_row_dual _glp_lpx_ipt_row_dual
   --  unsupported macro: lpx_ipt_col_prim _glp_lpx_ipt_col_prim
   --  unsupported macro: lpx_ipt_col_dual _glp_lpx_ipt_col_dual
   --  unsupported macro: lpx_set_class _glp_lpx_set_class
   --  unsupported macro: lpx_get_class _glp_lpx_get_class
   --  unsupported macro: lpx_set_col_kind _glp_lpx_set_col_kind
   --  unsupported macro: lpx_get_col_kind _glp_lpx_get_col_kind
   --  unsupported macro: lpx_get_num_int _glp_lpx_get_num_int
   --  unsupported macro: lpx_get_num_bin _glp_lpx_get_num_bin
   --  unsupported macro: lpx_integer _glp_lpx_integer
   --  unsupported macro: lpx_intopt _glp_lpx_intopt
   --  unsupported macro: lpx_mip_status _glp_lpx_mip_status
   --  unsupported macro: lpx_mip_obj_val _glp_lpx_mip_obj_val
   --  unsupported macro: lpx_mip_row_val _glp_lpx_mip_row_val
   --  unsupported macro: lpx_mip_col_val _glp_lpx_mip_col_val
   --  unsupported macro: lpx_check_int _glp_lpx_check_int
   --  unsupported macro: lpx_reset_parms _glp_lpx_reset_parms
   --  unsupported macro: lpx_set_int_parm _glp_lpx_set_int_parm
   --  unsupported macro: lpx_get_int_parm _glp_lpx_get_int_parm
   --  unsupported macro: lpx_set_real_parm _glp_lpx_set_real_parm
   --  unsupported macro: lpx_get_real_parm _glp_lpx_get_real_parm
   --  unsupported macro: lpx_read_mps _glp_lpx_read_mps
   --  unsupported macro: lpx_write_mps _glp_lpx_write_mps
   --  unsupported macro: lpx_read_bas _glp_lpx_read_bas
   --  unsupported macro: lpx_write_bas _glp_lpx_write_bas
   --  unsupported macro: lpx_read_freemps _glp_lpx_read_freemps
   --  unsupported macro: lpx_write_freemps _glp_lpx_write_freemps
   --  unsupported macro: lpx_read_cpxlp _glp_lpx_read_cpxlp
   --  unsupported macro: lpx_write_cpxlp _glp_lpx_write_cpxlp
   --  unsupported macro: lpx_read_model _glp_lpx_read_model
   --  unsupported macro: lpx_print_prob _glp_lpx_print_prob
   --  unsupported macro: lpx_print_sol _glp_lpx_print_sol
   --  unsupported macro: lpx_print_sens_bnds _glp_lpx_print_sens_bnds
   --  unsupported macro: lpx_print_ips _glp_lpx_print_ips
   --  unsupported macro: lpx_print_mip _glp_lpx_print_mip
   --  unsupported macro: lpx_is_b_avail _glp_lpx_is_b_avail
   --  unsupported macro: lpx_write_pb _glp_lpx_write_pb
   --  unsupported macro: lpx_main _glp_lpx_main
  -- glpk.h  
  --**********************************************************************
  --*  This code is part of GLPK (GNU Linear Programming Kit).
  --*
  --*  Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008,
  --*  2009, 2010 Andrew Makhorin, Department for Applied Informatics,
  --*  Moscow Aviation Institute, Moscow, Russia. All rights reserved.
  --*  E-mail: <mao@gnu.org>.
  --*
  --*  GLPK is free software: you can redistribute it and/or modify it
  --*  under the terms of the GNU General Public License as published by
  --*  the Free Software Foundation, either version 3 of the License, or
  --*  (at your option) any later version.
  --*
  --*  GLPK is distributed in the hope that it will be useful, but WITHOUT
  --*  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
  --*  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
  --*  License for more details.
  --*
  --*  You should have received a copy of the GNU General Public License
  --*  along with GLPK. If not, see <http://www.gnu.org/licenses/>.
  --********************************************************************** 

  -- library version numbers:  
   type glp_prob_u_opaque_prob_array is array (0 .. 99) of aliased double;
   type glp_prob is record
      u_opaque_prob : aliased glp_prob_u_opaque_prob_array;  -- /usr/include/glpk.h:41
   end record;
   pragma Convention (C_Pass_By_Copy, glp_prob);  -- /usr/include/glpk.h:41

   --  skipped anonymous struct anon_0

  -- LP/MIP problem object  
  -- optimization direction flag:  
  -- kind of structural variable:  
  -- type of auxiliary/structural variable:  
  -- status of auxiliary/structural variable:  
  -- scaling options:  
  -- solution indicator:  
  -- solution status:  
  -- basis factorization control parameters  
  -- (reserved)  
   type glp_bfcp_foo_bar_array is array (0 .. 37) of aliased double;
   type glp_bfcp is record
      msg_lev : aliased int;  -- /usr/include/glpk.h:90
      c_type : aliased int;  -- /usr/include/glpk.h:91
      lu_size : aliased int;  -- /usr/include/glpk.h:95
      piv_tol : aliased double;  -- /usr/include/glpk.h:96
      piv_lim : aliased int;  -- /usr/include/glpk.h:97
      suhl : aliased int;  -- /usr/include/glpk.h:98
      eps_tol : aliased double;  -- /usr/include/glpk.h:99
      max_gro : aliased double;  -- /usr/include/glpk.h:100
      nfs_max : aliased int;  -- /usr/include/glpk.h:101
      upd_tol : aliased double;  -- /usr/include/glpk.h:102
      nrs_max : aliased int;  -- /usr/include/glpk.h:103
      rs_size : aliased int;  -- /usr/include/glpk.h:104
      foo_bar : aliased glp_bfcp_foo_bar_array;  -- /usr/include/glpk.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, glp_bfcp);  -- /usr/include/glpk.h:106

   --  skipped anonymous struct anon_1

  -- factorization type:  
  -- luf.sv_size  
  -- luf.piv_tol  
  -- luf.piv_lim  
  -- luf.suhl  
  -- luf.eps_tol  
  -- luf.max_gro  
  -- fhv.hh_max  
  -- fhv.upd_tol  
  -- lpf.n_max  
  -- lpf.v_size  
  -- (reserved)  
  -- simplex method control parameters  
  -- message level:  
   type glp_smcp_foo_bar_array is array (0 .. 35) of aliased double;
   type glp_smcp is record
      msg_lev : aliased int;  -- /usr/include/glpk.h:110
      meth : aliased int;  -- /usr/include/glpk.h:116
      pricing : aliased int;  -- /usr/include/glpk.h:120
      r_test : aliased int;  -- /usr/include/glpk.h:123
      tol_bnd : aliased double;  -- /usr/include/glpk.h:126
      tol_dj : aliased double;  -- /usr/include/glpk.h:127
      tol_piv : aliased double;  -- /usr/include/glpk.h:128
      obj_ll : aliased double;  -- /usr/include/glpk.h:129
      obj_ul : aliased double;  -- /usr/include/glpk.h:130
      it_lim : aliased int;  -- /usr/include/glpk.h:131
      tm_lim : aliased int;  -- /usr/include/glpk.h:132
      out_frq : aliased int;  -- /usr/include/glpk.h:133
      out_dly : aliased int;  -- /usr/include/glpk.h:134
      presolve : aliased int;  -- /usr/include/glpk.h:135
      foo_bar : aliased glp_smcp_foo_bar_array;  -- /usr/include/glpk.h:136
   end record;
   pragma Convention (C_Pass_By_Copy, glp_smcp);  -- /usr/include/glpk.h:137

   --  skipped anonymous struct anon_2

  -- simplex method option:  
  -- pricing technique:  
  -- ratio test technique:  
  -- spx.tol_bnd  
  -- spx.tol_dj  
  -- spx.tol_piv  
  -- spx.obj_ll  
  -- spx.obj_ul  
  -- spx.it_lim  
  -- spx.tm_lim (milliseconds)  
  -- spx.out_frq  
  -- spx.out_dly (milliseconds)  
  -- enable/disable using LP presolver  
  -- (reserved)  
  -- interior-point solver control parameters  
  -- message level (see glp_smcp)  
   type glp_iptcp_foo_bar_array is array (0 .. 47) of aliased double;
   type glp_iptcp is record
      msg_lev : aliased int;  -- /usr/include/glpk.h:141
      ord_alg : aliased int;  -- /usr/include/glpk.h:142
      foo_bar : aliased glp_iptcp_foo_bar_array;  -- /usr/include/glpk.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, glp_iptcp);  -- /usr/include/glpk.h:148

   --  skipped anonymous struct anon_3

  -- ordering algorithm:  
  -- (reserved)  
   type glp_tree_u_opaque_tree_array is array (0 .. 99) of aliased double;
   type glp_tree is record
      u_opaque_tree : aliased glp_tree_u_opaque_tree_array;  -- /usr/include/glpk.h:152
   end record;
   pragma Convention (C_Pass_By_Copy, glp_tree);  -- /usr/include/glpk.h:152

   --  skipped anonymous struct anon_4

  -- branch-and-bound tree  
  -- integer optimizer control parameters  
  -- message level (see glp_smcp)  
   type glp_iocp_foo_bar_array is array (0 .. 28) of aliased double;
   type glp_iocp is record
      msg_lev : aliased int;  -- /usr/include/glpk.h:158
      br_tech : aliased int;  -- /usr/include/glpk.h:159
      bt_tech : aliased int;  -- /usr/include/glpk.h:165
      tol_int : aliased double;  -- /usr/include/glpk.h:170
      tol_obj : aliased double;  -- /usr/include/glpk.h:171
      tm_lim : aliased int;  -- /usr/include/glpk.h:172
      out_frq : aliased int;  -- /usr/include/glpk.h:173
      out_dly : aliased int;  -- /usr/include/glpk.h:174
      cb_func : access procedure (arg1 : access glp_tree; arg2 : System.Address);  -- /usr/include/glpk.h:175
      cb_info : System.Address;  -- /usr/include/glpk.h:177
      cb_size : aliased int;  -- /usr/include/glpk.h:178
      pp_tech : aliased int;  -- /usr/include/glpk.h:179
      mip_gap : aliased double;  -- /usr/include/glpk.h:183
      mir_cuts : aliased int;  -- /usr/include/glpk.h:184
      gmi_cuts : aliased int;  -- /usr/include/glpk.h:185
      cov_cuts : aliased int;  -- /usr/include/glpk.h:186
      clq_cuts : aliased int;  -- /usr/include/glpk.h:187
      presolve : aliased int;  -- /usr/include/glpk.h:188
      binarize : aliased int;  -- /usr/include/glpk.h:189
      fp_heur : aliased int;  -- /usr/include/glpk.h:190
      alien : aliased int;  -- /usr/include/glpk.h:192
      foo_bar : aliased glp_iocp_foo_bar_array;  -- /usr/include/glpk.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, glp_iocp);  -- /usr/include/glpk.h:195

   --  skipped anonymous struct anon_5

  -- branching technique:  
  -- backtracking technique:  
  -- mip.tol_int  
  -- mip.tol_obj  
  -- mip.tm_lim (milliseconds)  
  -- mip.out_frq (milliseconds)  
  -- mip.out_dly (milliseconds)  
  -- mip.cb_func  
  -- mip.cb_info  
  -- mip.cb_size  
  -- preprocessing technique:  
  -- relative MIP gap tolerance  
  -- MIR cuts       (GLP_ON/GLP_OFF)  
  -- Gomory's cuts  (GLP_ON/GLP_OFF)  
  -- cover cuts     (GLP_ON/GLP_OFF)  
  -- clique cuts    (GLP_ON/GLP_OFF)  
  -- enable/disable using MIP presolver  
  -- try to binarize integer variables  
  -- feasibility pump heuristic  
  -- use alien solver  
  -- (reserved)  
  -- additional row attributes  
   type glp_attr_foo_bar_array is array (0 .. 6) of aliased double;
   type glp_attr is record
      level : aliased int;  -- /usr/include/glpk.h:199
      origin : aliased int;  -- /usr/include/glpk.h:201
      klass : aliased int;  -- /usr/include/glpk.h:206
      foo_bar : aliased glp_attr_foo_bar_array;  -- /usr/include/glpk.h:212
   end record;
   pragma Convention (C_Pass_By_Copy, glp_attr);  -- /usr/include/glpk.h:214

   --  skipped anonymous struct anon_6

  -- subproblem level at which the row was added  
  -- row origin flag:  
  -- row class descriptor:  
  -- (reserved)  
  -- enable/disable flag:  
  -- reason codes:  
  -- branch selection indicator:  
  -- return codes:  
  -- condition indicator:  
  -- MPS file format:  
  -- MPS format control parameters  
   type glp_mpscp_foo_bar_array is array (0 .. 16) of aliased double;
   type glp_mpscp is record
      blank : aliased int;  -- /usr/include/glpk.h:268
      obj_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:270
      tol_mps : aliased double;  -- /usr/include/glpk.h:272
      foo_bar : aliased glp_mpscp_foo_bar_array;  -- /usr/include/glpk.h:274
   end record;
   pragma Convention (C_Pass_By_Copy, glp_mpscp);  -- /usr/include/glpk.h:276

   --  skipped anonymous struct anon_7

  -- character code to replace blanks in symbolic names  
  -- objective row name  
  -- zero tolerance for MPS data  
  -- (reserved for use in the future)  
  -- CPLEX LP format control parameters  
   type glp_cpxcp_foo_bar_array is array (0 .. 19) of aliased double;
   type glp_cpxcp is record
      foo_bar : aliased glp_cpxcp_foo_bar_array;  -- /usr/include/glpk.h:280
   end record;
   pragma Convention (C_Pass_By_Copy, glp_cpxcp);  -- /usr/include/glpk.h:282

   --  skipped anonymous struct anon_8

  -- (reserved for use in the future)  
   type glp_tran_u_opaque_tran_array is array (0 .. 99) of aliased double;
   type glp_tran is record
      u_opaque_tran : aliased glp_tran_u_opaque_tran_array;  -- /usr/include/glpk.h:286
   end record;
   pragma Convention (C_Pass_By_Copy, glp_tran);  -- /usr/include/glpk.h:286

   --  skipped anonymous struct anon_9

  -- MathProg translator workspace  
   function glp_create_prob return access glp_prob;  -- /usr/include/glpk.h:290
   pragma Import (C, glp_create_prob, "glp_create_prob");

  -- create problem object  
   procedure glp_set_prob_name (P : access glp_prob; name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:293
   pragma Import (C, glp_set_prob_name, "glp_set_prob_name");

  -- assign (change) problem name  
   procedure glp_set_obj_name (P : access glp_prob; name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:296
   pragma Import (C, glp_set_obj_name, "glp_set_obj_name");

  -- assign (change) objective function name  
   procedure glp_set_obj_dir (P : access glp_prob; dir : int);  -- /usr/include/glpk.h:299
   pragma Import (C, glp_set_obj_dir, "glp_set_obj_dir");

  -- set (change) optimization direction flag  
   function glp_add_rows (P : access glp_prob; nrs : int) return int;  -- /usr/include/glpk.h:302
   pragma Import (C, glp_add_rows, "glp_add_rows");

  -- add new rows to problem object  
   function glp_add_cols (P : access glp_prob; ncs : int) return int;  -- /usr/include/glpk.h:305
   pragma Import (C, glp_add_cols, "glp_add_cols");

  -- add new columns to problem object  
   procedure glp_set_row_name
     (P : access glp_prob;
      i : int;
      name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:308
   pragma Import (C, glp_set_row_name, "glp_set_row_name");

  -- assign (change) row name  
   procedure glp_set_col_name
     (P : access glp_prob;
      j : int;
      name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:311
   pragma Import (C, glp_set_col_name, "glp_set_col_name");

  -- assign (change) column name  
   procedure glp_set_row_bnds
     (P : access glp_prob;
      i : int;
      c_type : int;
      lb : double;
      ub : double);  -- /usr/include/glpk.h:314
   pragma Import (C, glp_set_row_bnds, "glp_set_row_bnds");

  -- set (change) row bounds  
   procedure glp_set_col_bnds
     (P : access glp_prob;
      j : int;
      c_type : int;
      lb : double;
      ub : double);  -- /usr/include/glpk.h:318
   pragma Import (C, glp_set_col_bnds, "glp_set_col_bnds");

  -- set (change) column bounds  
   procedure glp_set_obj_coef
     (P : access glp_prob;
      j : int;
      coef : double);  -- /usr/include/glpk.h:322
   pragma Import (C, glp_set_obj_coef, "glp_set_obj_coef");

  -- set (change) obj. coefficient or constant term  
   procedure glp_set_mat_row
     (P : access glp_prob;
      i : int;
      len : int;
      ind : access int;
      val : access double);  -- /usr/include/glpk.h:325
   pragma Import (C, glp_set_mat_row, "glp_set_mat_row");

  -- set (replace) row of the constraint matrix  
   procedure glp_set_mat_col
     (P : access glp_prob;
      j : int;
      len : int;
      ind : access int;
      val : access double);  -- /usr/include/glpk.h:329
   pragma Import (C, glp_set_mat_col, "glp_set_mat_col");
   
   type Glp_Axis_Array is array (Natural range <>) of Int with Convention => C;
   type Glp_Matrix_Values_Array is array (Natural range <>) of Double with Convention => C;
  -- set (replace) column of the constraint matrix  
   procedure glp_load_matrix
     (P : access glp_prob;
      ne : int;
      ia : Glp_Axis_Array;
      ja : Glp_Axis_Array;
      ar : Glp_Matrix_Values_Array);  -- /usr/include/glpk.h:333
   pragma Import (C, glp_load_matrix, "glp_load_matrix");

  -- load (replace) the whole constraint matrix  
   function glp_check_dup
     (m : int;
      n : int;
      ne : int;
      ia : access int;
      ja : access int) return int;  -- /usr/include/glpk.h:337
   pragma Import (C, glp_check_dup, "glp_check_dup");

  -- check for duplicate elements in sparse matrix  
   procedure glp_sort_matrix (P : access glp_prob);  -- /usr/include/glpk.h:340
   pragma Import (C, glp_sort_matrix, "glp_sort_matrix");

  -- sort elements of the constraint matrix  
   procedure glp_del_rows
     (P : access glp_prob;
      nrs : int;
      num : access int);  -- /usr/include/glpk.h:343
   pragma Import (C, glp_del_rows, "glp_del_rows");

  -- delete specified rows from problem object  
   procedure glp_del_cols
     (P : access glp_prob;
      ncs : int;
      num : access int);  -- /usr/include/glpk.h:346
   pragma Import (C, glp_del_cols, "glp_del_cols");

  -- delete specified columns from problem object  
   procedure glp_copy_prob
     (dest : access glp_prob;
      prob : access glp_prob;
      names : int);  -- /usr/include/glpk.h:349
   pragma Import (C, glp_copy_prob, "glp_copy_prob");

  -- copy problem object content  
   procedure glp_erase_prob (P : access glp_prob);  -- /usr/include/glpk.h:352
   pragma Import (C, glp_erase_prob, "glp_erase_prob");

  -- erase problem object content  
   procedure glp_delete_prob (P : access glp_prob);  -- /usr/include/glpk.h:355
   pragma Import (C, glp_delete_prob, "glp_delete_prob");

  -- delete problem object  
   function glp_get_prob_name (P : access glp_prob) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:358
   pragma Import (C, glp_get_prob_name, "glp_get_prob_name");

  -- retrieve problem name  
   function glp_get_obj_name (P : access glp_prob) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:361
   pragma Import (C, glp_get_obj_name, "glp_get_obj_name");

  -- retrieve objective function name  
   function glp_get_obj_dir (P : access glp_prob) return int;  -- /usr/include/glpk.h:364
   pragma Import (C, glp_get_obj_dir, "glp_get_obj_dir");

  -- retrieve optimization direction flag  
   function glp_get_num_rows (P : access glp_prob) return int;  -- /usr/include/glpk.h:367
   pragma Import (C, glp_get_num_rows, "glp_get_num_rows");

  -- retrieve number of rows  
   function glp_get_num_cols (P : access glp_prob) return int;  -- /usr/include/glpk.h:370
   pragma Import (C, glp_get_num_cols, "glp_get_num_cols");

  -- retrieve number of columns  
   function glp_get_row_name (P : access glp_prob; i : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:373
   pragma Import (C, glp_get_row_name, "glp_get_row_name");

  -- retrieve row name  
   function glp_get_col_name (P : access glp_prob; j : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:376
   pragma Import (C, glp_get_col_name, "glp_get_col_name");

  -- retrieve column name  
   function glp_get_row_type (P : access glp_prob; i : int) return int;  -- /usr/include/glpk.h:379
   pragma Import (C, glp_get_row_type, "glp_get_row_type");

  -- retrieve row type  
   function glp_get_row_lb (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:382
   pragma Import (C, glp_get_row_lb, "glp_get_row_lb");

  -- retrieve row lower bound  
   function glp_get_row_ub (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:385
   pragma Import (C, glp_get_row_ub, "glp_get_row_ub");

  -- retrieve row upper bound  
   function glp_get_col_type (P : access glp_prob; j : int) return int;  -- /usr/include/glpk.h:388
   pragma Import (C, glp_get_col_type, "glp_get_col_type");

  -- retrieve column type  
   function glp_get_col_lb (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:391
   pragma Import (C, glp_get_col_lb, "glp_get_col_lb");

  -- retrieve column lower bound  
   function glp_get_col_ub (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:394
   pragma Import (C, glp_get_col_ub, "glp_get_col_ub");

  -- retrieve column upper bound  
   function glp_get_obj_coef (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:397
   pragma Import (C, glp_get_obj_coef, "glp_get_obj_coef");

  -- retrieve obj. coefficient or constant term  
   function glp_get_num_nz (P : access glp_prob) return int;  -- /usr/include/glpk.h:400
   pragma Import (C, glp_get_num_nz, "glp_get_num_nz");

  -- retrieve number of constraint coefficients  
   function glp_get_mat_row
     (P : access glp_prob;
      i : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:403
   pragma Import (C, glp_get_mat_row, "glp_get_mat_row");

  -- retrieve row of the constraint matrix  
   function glp_get_mat_col
     (P : access glp_prob;
      j : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:406
   pragma Import (C, glp_get_mat_col, "glp_get_mat_col");

  -- retrieve column of the constraint matrix  
   procedure glp_create_index (P : access glp_prob);  -- /usr/include/glpk.h:409
   pragma Import (C, glp_create_index, "glp_create_index");

  -- create the name index  
   function glp_find_row (P : access glp_prob; name : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:412
   pragma Import (C, glp_find_row, "glp_find_row");

  -- find row by its name  
   function glp_find_col (P : access glp_prob; name : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:415
   pragma Import (C, glp_find_col, "glp_find_col");

  -- find column by its name  
   procedure glp_delete_index (P : access glp_prob);  -- /usr/include/glpk.h:418
   pragma Import (C, glp_delete_index, "glp_delete_index");

  -- delete the name index  
   procedure glp_set_rii
     (P : access glp_prob;
      i : int;
      rii : double);  -- /usr/include/glpk.h:421
   pragma Import (C, glp_set_rii, "glp_set_rii");

  -- set (change) row scale factor  
   procedure glp_set_sjj
     (P : access glp_prob;
      j : int;
      sjj : double);  -- /usr/include/glpk.h:424
   pragma Import (C, glp_set_sjj, "glp_set_sjj");

  -- set (change) column scale factor  
   function glp_get_rii (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:427
   pragma Import (C, glp_get_rii, "glp_get_rii");

  -- retrieve row scale factor  
   function glp_get_sjj (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:430
   pragma Import (C, glp_get_sjj, "glp_get_sjj");

  -- retrieve column scale factor  
   procedure glp_scale_prob (P : access glp_prob; flags : int);  -- /usr/include/glpk.h:433
   pragma Import (C, glp_scale_prob, "glp_scale_prob");

  -- scale problem data  
   procedure glp_unscale_prob (P : access glp_prob);  -- /usr/include/glpk.h:436
   pragma Import (C, glp_unscale_prob, "glp_unscale_prob");

  -- unscale problem data  
   procedure glp_set_row_stat
     (P : access glp_prob;
      i : int;
      stat : int);  -- /usr/include/glpk.h:439
   pragma Import (C, glp_set_row_stat, "glp_set_row_stat");

  -- set (change) row status  
   procedure glp_set_col_stat
     (P : access glp_prob;
      j : int;
      stat : int);  -- /usr/include/glpk.h:442
   pragma Import (C, glp_set_col_stat, "glp_set_col_stat");

  -- set (change) column status  
   procedure glp_std_basis (P : access glp_prob);  -- /usr/include/glpk.h:445
   pragma Import (C, glp_std_basis, "glp_std_basis");

  -- construct standard initial LP basis  
   procedure glp_adv_basis (P : access glp_prob; flags : int);  -- /usr/include/glpk.h:448
   pragma Import (C, glp_adv_basis, "glp_adv_basis");

  -- construct advanced initial LP basis  
   procedure glp_cpx_basis (P : access glp_prob);  -- /usr/include/glpk.h:451
   pragma Import (C, glp_cpx_basis, "glp_cpx_basis");

  -- construct Bixby's initial LP basis  
   function glp_simplex (P : access glp_prob; parm : access constant glp_smcp) return int;  -- /usr/include/glpk.h:454
   pragma Import (C, glp_simplex, "glp_simplex");

  -- solve LP problem with the simplex method  
   function glp_exact (P : access glp_prob; parm : access constant glp_smcp) return int;  -- /usr/include/glpk.h:457
   pragma Import (C, glp_exact, "glp_exact");

  -- solve LP problem in exact arithmetic  
   procedure glp_init_smcp (parm : access glp_smcp);  -- /usr/include/glpk.h:460
   pragma Import (C, glp_init_smcp, "glp_init_smcp");

  -- initialize simplex method control parameters  
   function glp_get_status (P : access glp_prob) return int;  -- /usr/include/glpk.h:463
   pragma Import (C, glp_get_status, "glp_get_status");

  -- retrieve generic status of basic solution  
   function glp_get_prim_stat (P : access glp_prob) return int;  -- /usr/include/glpk.h:466
   pragma Import (C, glp_get_prim_stat, "glp_get_prim_stat");

  -- retrieve status of primal basic solution  
   function glp_get_dual_stat (P : access glp_prob) return int;  -- /usr/include/glpk.h:469
   pragma Import (C, glp_get_dual_stat, "glp_get_dual_stat");

  -- retrieve status of dual basic solution  
   function glp_get_obj_val (P : access glp_prob) return double;  -- /usr/include/glpk.h:472
   pragma Import (C, glp_get_obj_val, "glp_get_obj_val");

  -- retrieve objective value (basic solution)  
   function glp_get_row_stat (P : access glp_prob; i : int) return int;  -- /usr/include/glpk.h:475
   pragma Import (C, glp_get_row_stat, "glp_get_row_stat");

  -- retrieve row status  
   function glp_get_row_prim (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:478
   pragma Import (C, glp_get_row_prim, "glp_get_row_prim");

  -- retrieve row primal value (basic solution)  
   function glp_get_row_dual (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:481
   pragma Import (C, glp_get_row_dual, "glp_get_row_dual");

  -- retrieve row dual value (basic solution)  
   function glp_get_col_stat (P : access glp_prob; j : int) return int;  -- /usr/include/glpk.h:484
   pragma Import (C, glp_get_col_stat, "glp_get_col_stat");

  -- retrieve column status  
   function glp_get_col_prim (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:487
   pragma Import (C, glp_get_col_prim, "glp_get_col_prim");

  -- retrieve column primal value (basic solution)  
   function glp_get_col_dual (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:490
   pragma Import (C, glp_get_col_dual, "glp_get_col_dual");

  -- retrieve column dual value (basic solution)  
   function glp_get_unbnd_ray (P : access glp_prob) return int;  -- /usr/include/glpk.h:493
   pragma Import (C, glp_get_unbnd_ray, "glp_get_unbnd_ray");

  -- determine variable causing unboundedness  
   function glp_interior (P : access glp_prob; parm : access constant glp_iptcp) return int;  -- /usr/include/glpk.h:496
   pragma Import (C, glp_interior, "glp_interior");

  -- solve LP problem with the interior-point method  
   procedure glp_init_iptcp (parm : access glp_iptcp);  -- /usr/include/glpk.h:499
   pragma Import (C, glp_init_iptcp, "glp_init_iptcp");

  -- initialize interior-point solver control parameters  
   function glp_ipt_status (P : access glp_prob) return int;  -- /usr/include/glpk.h:502
   pragma Import (C, glp_ipt_status, "glp_ipt_status");

  -- retrieve status of interior-point solution  
   function glp_ipt_obj_val (P : access glp_prob) return double;  -- /usr/include/glpk.h:505
   pragma Import (C, glp_ipt_obj_val, "glp_ipt_obj_val");

  -- retrieve objective value (interior point)  
   function glp_ipt_row_prim (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:508
   pragma Import (C, glp_ipt_row_prim, "glp_ipt_row_prim");

  -- retrieve row primal value (interior point)  
   function glp_ipt_row_dual (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:511
   pragma Import (C, glp_ipt_row_dual, "glp_ipt_row_dual");

  -- retrieve row dual value (interior point)  
   function glp_ipt_col_prim (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:514
   pragma Import (C, glp_ipt_col_prim, "glp_ipt_col_prim");

  -- retrieve column primal value (interior point)  
   function glp_ipt_col_dual (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:517
   pragma Import (C, glp_ipt_col_dual, "glp_ipt_col_dual");

  -- retrieve column dual value (interior point)  
   procedure glp_set_col_kind
     (P : access glp_prob;
      j : int;
      kind : int);  -- /usr/include/glpk.h:520
   pragma Import (C, glp_set_col_kind, "glp_set_col_kind");

  -- set (change) column kind  
   function glp_get_col_kind (P : access glp_prob; j : int) return int;  -- /usr/include/glpk.h:523
   pragma Import (C, glp_get_col_kind, "glp_get_col_kind");

  -- retrieve column kind  
   function glp_get_num_int (P : access glp_prob) return int;  -- /usr/include/glpk.h:526
   pragma Import (C, glp_get_num_int, "glp_get_num_int");

  -- retrieve number of integer columns  
   function glp_get_num_bin (P : access glp_prob) return int;  -- /usr/include/glpk.h:529
   pragma Import (C, glp_get_num_bin, "glp_get_num_bin");

  -- retrieve number of binary columns  
   function glp_intopt (P : access glp_prob; parm : access constant glp_iocp) return int;  -- /usr/include/glpk.h:532
   pragma Import (C, glp_intopt, "glp_intopt");

  -- solve MIP problem with the branch-and-bound method  
   procedure glp_init_iocp (parm : access glp_iocp);  -- /usr/include/glpk.h:535
   pragma Import (C, glp_init_iocp, "glp_init_iocp");

  -- initialize integer optimizer control parameters  
   function glp_mip_status (P : access glp_prob) return int;  -- /usr/include/glpk.h:538
   pragma Import (C, glp_mip_status, "glp_mip_status");

  -- retrieve status of MIP solution  
   function glp_mip_obj_val (P : access glp_prob) return double;  -- /usr/include/glpk.h:541
   pragma Import (C, glp_mip_obj_val, "glp_mip_obj_val");

  -- retrieve objective value (MIP solution)  
   function glp_mip_row_val (P : access glp_prob; i : int) return double;  -- /usr/include/glpk.h:544
   pragma Import (C, glp_mip_row_val, "glp_mip_row_val");

  -- retrieve row value (MIP solution)  
   function glp_mip_col_val (P : access glp_prob; j : int) return double;  -- /usr/include/glpk.h:547
   pragma Import (C, glp_mip_col_val, "glp_mip_col_val");

  -- retrieve column value (MIP solution)  
   function glp_print_sol (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:550
   pragma Import (C, glp_print_sol, "glp_print_sol");

  -- write basic solution in printable format  
   function glp_read_sol (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:553
   pragma Import (C, glp_read_sol, "glp_read_sol");

  -- read basic solution from text file  
   function glp_write_sol (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:556
   pragma Import (C, glp_write_sol, "glp_write_sol");

  -- write basic solution to text file  
   function glp_print_ranges
     (P : access glp_prob;
      len : int;
      list : access int;
      flags : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:559
   pragma Import (C, glp_print_ranges, "glp_print_ranges");

  -- print sensitivity analysis report  
   function glp_print_ipt (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:563
   pragma Import (C, glp_print_ipt, "glp_print_ipt");

  -- write interior-point solution in printable format  
   function glp_read_ipt (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:566
   pragma Import (C, glp_read_ipt, "glp_read_ipt");

  -- read interior-point solution from text file  
   function glp_write_ipt (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:569
   pragma Import (C, glp_write_ipt, "glp_write_ipt");

  -- write interior-point solution to text file  
   function glp_print_mip (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:572
   pragma Import (C, glp_print_mip, "glp_print_mip");

  -- write MIP solution in printable format  
   function glp_read_mip (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:575
   pragma Import (C, glp_read_mip, "glp_read_mip");

  -- read MIP solution from text file  
   function glp_write_mip (P : access glp_prob; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:578
   pragma Import (C, glp_write_mip, "glp_write_mip");

  -- write MIP solution to text file  
   function glp_bf_exists (P : access glp_prob) return int;  -- /usr/include/glpk.h:581
   pragma Import (C, glp_bf_exists, "glp_bf_exists");

  -- check if the basis factorization exists  
   function glp_factorize (P : access glp_prob) return int;  -- /usr/include/glpk.h:584
   pragma Import (C, glp_factorize, "glp_factorize");

  -- compute the basis factorization  
   function glp_bf_updated (P : access glp_prob) return int;  -- /usr/include/glpk.h:587
   pragma Import (C, glp_bf_updated, "glp_bf_updated");

  -- check if the basis factorization has been updated  
   procedure glp_get_bfcp (P : access glp_prob; parm : access glp_bfcp);  -- /usr/include/glpk.h:590
   pragma Import (C, glp_get_bfcp, "glp_get_bfcp");

  -- retrieve basis factorization control parameters  
   procedure glp_set_bfcp (P : access glp_prob; parm : access constant glp_bfcp);  -- /usr/include/glpk.h:593
   pragma Import (C, glp_set_bfcp, "glp_set_bfcp");

  -- change basis factorization control parameters  
   function glp_get_bhead (P : access glp_prob; k : int) return int;  -- /usr/include/glpk.h:596
   pragma Import (C, glp_get_bhead, "glp_get_bhead");

  -- retrieve the basis header information  
   function glp_get_row_bind (P : access glp_prob; i : int) return int;  -- /usr/include/glpk.h:599
   pragma Import (C, glp_get_row_bind, "glp_get_row_bind");

  -- retrieve row index in the basis header  
   function glp_get_col_bind (P : access glp_prob; j : int) return int;  -- /usr/include/glpk.h:602
   pragma Import (C, glp_get_col_bind, "glp_get_col_bind");

  -- retrieve column index in the basis header  
   procedure glp_ftran (P : access glp_prob; x : access double);  -- /usr/include/glpk.h:605
   pragma Import (C, glp_ftran, "glp_ftran");

  -- perform forward transformation (solve system B*x = b)  
   procedure glp_btran (P : access glp_prob; x : access double);  -- /usr/include/glpk.h:608
   pragma Import (C, glp_btran, "glp_btran");

  -- perform backward transformation (solve system B'*x = b)  
   function glp_warm_up (P : access glp_prob) return int;  -- /usr/include/glpk.h:611
   pragma Import (C, glp_warm_up, "glp_warm_up");

  -- "warm up" LP basis  
   function glp_eval_tab_row
     (P : access glp_prob;
      k : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:614
   pragma Import (C, glp_eval_tab_row, "glp_eval_tab_row");

  -- compute row of the simplex tableau  
   function glp_eval_tab_col
     (P : access glp_prob;
      k : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:617
   pragma Import (C, glp_eval_tab_col, "glp_eval_tab_col");

  -- compute column of the simplex tableau  
   function glp_transform_row
     (P : access glp_prob;
      len : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:620
   pragma Import (C, glp_transform_row, "glp_transform_row");

  -- transform explicitly specified row  
   function glp_transform_col
     (P : access glp_prob;
      len : int;
      ind : access int;
      val : access double) return int;  -- /usr/include/glpk.h:623
   pragma Import (C, glp_transform_col, "glp_transform_col");

  -- transform explicitly specified column  
   function glp_prim_rtest
     (P : access glp_prob;
      len : int;
      ind : access int;
      val : access double;
      dir : int;
      eps : double) return int;  -- /usr/include/glpk.h:626
   pragma Import (C, glp_prim_rtest, "glp_prim_rtest");

  -- perform primal ratio test  
   function glp_dual_rtest
     (P : access glp_prob;
      len : int;
      ind : access int;
      val : access double;
      dir : int;
      eps : double) return int;  -- /usr/include/glpk.h:630
   pragma Import (C, glp_dual_rtest, "glp_dual_rtest");

  -- perform dual ratio test  
   procedure glp_analyze_bound
     (P : access glp_prob;
      k : int;
      value1 : access double;
      var1 : access int;
      value2 : access double;
      var2 : access int);  -- /usr/include/glpk.h:634
   pragma Import (C, glp_analyze_bound, "glp_analyze_bound");

  -- analyze active bound of non-basic variable  
   procedure glp_analyze_coef
     (P : access glp_prob;
      k : int;
      coef1 : access double;
      var1 : access int;
      value1 : access double;
      coef2 : access double;
      var2 : access int;
      value2 : access double);  -- /usr/include/glpk.h:638
   pragma Import (C, glp_analyze_coef, "glp_analyze_coef");

  -- analyze objective coefficient at basic variable  
   function glp_ios_reason (T : access glp_tree) return int;  -- /usr/include/glpk.h:642
   pragma Import (C, glp_ios_reason, "glp_ios_reason");

  -- determine reason for calling the callback routine  
   function glp_ios_get_prob (T : access glp_tree) return access glp_prob;  -- /usr/include/glpk.h:645
   pragma Import (C, glp_ios_get_prob, "glp_ios_get_prob");

  -- access the problem object  
   procedure glp_ios_tree_size
     (T : access glp_tree;
      a_cnt : access int;
      n_cnt : access int;
      t_cnt : access int);  -- /usr/include/glpk.h:648
   pragma Import (C, glp_ios_tree_size, "glp_ios_tree_size");

  -- determine size of the branch-and-bound tree  
   function glp_ios_curr_node (T : access glp_tree) return int;  -- /usr/include/glpk.h:652
   pragma Import (C, glp_ios_curr_node, "glp_ios_curr_node");

  -- determine current active subproblem  
   function glp_ios_next_node (T : access glp_tree; p : int) return int;  -- /usr/include/glpk.h:655
   pragma Import (C, glp_ios_next_node, "glp_ios_next_node");

  -- determine next active subproblem  
   function glp_ios_prev_node (T : access glp_tree; p : int) return int;  -- /usr/include/glpk.h:658
   pragma Import (C, glp_ios_prev_node, "glp_ios_prev_node");

  -- determine previous active subproblem  
   function glp_ios_up_node (T : access glp_tree; p : int) return int;  -- /usr/include/glpk.h:661
   pragma Import (C, glp_ios_up_node, "glp_ios_up_node");

  -- determine parent subproblem  
   function glp_ios_node_level (T : access glp_tree; p : int) return int;  -- /usr/include/glpk.h:664
   pragma Import (C, glp_ios_node_level, "glp_ios_node_level");

  -- determine subproblem level  
   function glp_ios_node_bound (T : access glp_tree; p : int) return double;  -- /usr/include/glpk.h:667
   pragma Import (C, glp_ios_node_bound, "glp_ios_node_bound");

  -- determine subproblem local bound  
   function glp_ios_best_node (T : access glp_tree) return int;  -- /usr/include/glpk.h:670
   pragma Import (C, glp_ios_best_node, "glp_ios_best_node");

  -- find active subproblem with best local bound  
   function glp_ios_mip_gap (T : access glp_tree) return double;  -- /usr/include/glpk.h:673
   pragma Import (C, glp_ios_mip_gap, "glp_ios_mip_gap");

  -- compute relative MIP gap  
   function glp_ios_node_data (T : access glp_tree; p : int) return System.Address;  -- /usr/include/glpk.h:676
   pragma Import (C, glp_ios_node_data, "glp_ios_node_data");

  -- access subproblem application-specific data  
   procedure glp_ios_row_attr
     (T : access glp_tree;
      i : int;
      attr : access glp_attr);  -- /usr/include/glpk.h:679
   pragma Import (C, glp_ios_row_attr, "glp_ios_row_attr");

  -- retrieve additional row attributes  
   function glp_ios_pool_size (T : access glp_tree) return int;  -- /usr/include/glpk.h:682
   pragma Import (C, glp_ios_pool_size, "glp_ios_pool_size");

  -- determine current size of the cut pool  
   function glp_ios_add_row
     (T : access glp_tree;
      name : Interfaces.C.Strings.chars_ptr;
      klass : int;
      flags : int;
      len : int;
      ind : access int;
      val : access double;
      c_type : int;
      rhs : double) return int;  -- /usr/include/glpk.h:685
   pragma Import (C, glp_ios_add_row, "glp_ios_add_row");

  -- add row (constraint) to the cut pool  
   procedure glp_ios_del_row (T : access glp_tree; i : int);  -- /usr/include/glpk.h:690
   pragma Import (C, glp_ios_del_row, "glp_ios_del_row");

  -- remove row (constraint) from the cut pool  
   procedure glp_ios_clear_pool (T : access glp_tree);  -- /usr/include/glpk.h:693
   pragma Import (C, glp_ios_clear_pool, "glp_ios_clear_pool");

  -- remove all rows (constraints) from the cut pool  
   function glp_ios_can_branch (T : access glp_tree; j : int) return int;  -- /usr/include/glpk.h:696
   pragma Import (C, glp_ios_can_branch, "glp_ios_can_branch");

  -- check if can branch upon specified variable  
   procedure glp_ios_branch_upon
     (T : access glp_tree;
      j : int;
      sel : int);  -- /usr/include/glpk.h:699
   pragma Import (C, glp_ios_branch_upon, "glp_ios_branch_upon");

  -- choose variable to branch upon  
   procedure glp_ios_select_node (T : access glp_tree; p : int);  -- /usr/include/glpk.h:702
   pragma Import (C, glp_ios_select_node, "glp_ios_select_node");

  -- select subproblem to continue the search  
   function glp_ios_heur_sol (T : access glp_tree; x : access double) return int;  -- /usr/include/glpk.h:705
   pragma Import (C, glp_ios_heur_sol, "glp_ios_heur_sol");

  -- provide solution found by heuristic  
   procedure glp_ios_terminate (T : access glp_tree);  -- /usr/include/glpk.h:708
   pragma Import (C, glp_ios_terminate, "glp_ios_terminate");

  -- terminate the solution process  
   procedure glp_init_mpscp (parm : access glp_mpscp);  -- /usr/include/glpk.h:711
   pragma Import (C, glp_init_mpscp, "glp_init_mpscp");

  -- initialize MPS format control parameters  
   function glp_read_mps
     (P : access glp_prob;
      fmt : int;
      parm : access constant glp_mpscp;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:714
   pragma Import (C, glp_read_mps, "glp_read_mps");

  -- read problem data in MPS format  
   function glp_write_mps
     (P : access glp_prob;
      fmt : int;
      parm : access constant glp_mpscp;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:718
   pragma Import (C, glp_write_mps, "glp_write_mps");

  -- write problem data in MPS format  
   procedure glp_init_cpxcp (parm : access glp_cpxcp);  -- /usr/include/glpk.h:722
   pragma Import (C, glp_init_cpxcp, "glp_init_cpxcp");

  -- initialize CPLEX LP format control parameters  
   function glp_read_lp
     (P : access glp_prob;
      parm : access constant glp_cpxcp;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:725
   pragma Import (C, glp_read_lp, "glp_read_lp");

  -- read problem data in CPLEX LP format  
   function glp_write_lp
     (P : access glp_prob;
      parm : access constant glp_cpxcp;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:728
   pragma Import (C, glp_write_lp, "glp_write_lp");

  -- write problem data in CPLEX LP format  
   function glp_read_prob
     (P : access glp_prob;
      flags : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:731
   pragma Import (C, glp_read_prob, "glp_read_prob");

  -- read problem data in GLPK format  
   function glp_write_prob
     (P : access glp_prob;
      flags : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:734
   pragma Import (C, glp_write_prob, "glp_write_prob");

  -- write problem data in GLPK format  
   function glp_mpl_alloc_wksp return access glp_tran;  -- /usr/include/glpk.h:737
   pragma Import (C, glp_mpl_alloc_wksp, "glp_mpl_alloc_wksp");

  -- allocate the MathProg translator workspace  
   function glp_mpl_read_model
     (tran : access glp_tran;
      fname : Interfaces.C.Strings.chars_ptr;
      skip : int) return int;  -- /usr/include/glpk.h:740
   pragma Import (C, glp_mpl_read_model, "glp_mpl_read_model");

  -- read and translate model section  
   function glp_mpl_read_data (tran : access glp_tran; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:743
   pragma Import (C, glp_mpl_read_data, "glp_mpl_read_data");

  -- read and translate data section  
   function glp_mpl_generate (tran : access glp_tran; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:746
   pragma Import (C, glp_mpl_generate, "glp_mpl_generate");

  -- generate the model  
   procedure glp_mpl_build_prob (tran : access glp_tran; prob : access glp_prob);  -- /usr/include/glpk.h:749
   pragma Import (C, glp_mpl_build_prob, "glp_mpl_build_prob");

  -- build LP/MIP problem instance from the model  
   function glp_mpl_postsolve
     (tran : access glp_tran;
      prob : access glp_prob;
      sol : int) return int;  -- /usr/include/glpk.h:752
   pragma Import (C, glp_mpl_postsolve, "glp_mpl_postsolve");

  -- postsolve the model  
   procedure glp_mpl_free_wksp (tran : access glp_tran);  -- /usr/include/glpk.h:755
   pragma Import (C, glp_mpl_free_wksp, "glp_mpl_free_wksp");

  -- free the MathProg translator workspace  
   function glp_main (argc : int; argv : System.Address) return int;  -- /usr/include/glpk.h:758
   pragma Import (C, glp_main, "glp_main");

  -- stand-alone LP/MIP solver  
  --******************************************************************** 
   type glp_long is record
      lo : aliased int;  -- /usr/include/glpk.h:765
      hi : aliased int;  -- /usr/include/glpk.h:765
   end record;
   pragma Convention (C_Pass_By_Copy, glp_long);  -- /usr/include/glpk.h:765

   --  skipped anonymous struct anon_10

  -- long integer data type  
   function glp_init_env return int;  -- /usr/include/glpk.h:769
   pragma Import (C, glp_init_env, "glp_init_env");

  -- initialize GLPK environment  
   function glp_version return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:772
   pragma Import (C, glp_version, "glp_version");

  -- determine library version  
   function glp_free_env return int;  -- /usr/include/glpk.h:775
   pragma Import (C, glp_free_env, "glp_free_env");

  -- free GLPK environment  
   procedure glp_printf (fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/glpk.h:778
   pragma Import (C, glp_printf, "glp_printf");

  -- write formatted output to terminal  
   procedure glp_vprintf (fmt : Interfaces.C.Strings.chars_ptr; arg : access System.Address);  -- /usr/include/glpk.h:781
   pragma Import (C, glp_vprintf, "glp_vprintf");

  -- write formatted output to terminal  
   function glp_term_out (flag : int) return int;  -- /usr/include/glpk.h:784
   pragma Import (C, glp_term_out, "glp_term_out");

  -- enable/disable terminal output  
   procedure glp_term_hook (func : access function (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int; info : System.Address);  -- /usr/include/glpk.h:787
   pragma Import (C, glp_term_hook, "glp_term_hook");

  -- install hook to intercept terminal output  
   function glp_open_tee (fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:790
   pragma Import (C, glp_open_tee, "glp_open_tee");

  -- start copying terminal output to text file  
   function glp_close_tee return int;  -- /usr/include/glpk.h:793
   pragma Import (C, glp_close_tee, "glp_close_tee");

  -- stop copying terminal output to text file  
   type u_glp_error is access procedure (arg1 : Interfaces.C.Strings.chars_ptr  -- , ...
         );
   pragma Convention (C, u_glp_error);  -- /usr/include/glpk.h:798

   function glp_error_u (file : Interfaces.C.Strings.chars_ptr; line : int) return u_glp_error;  -- /usr/include/glpk.h:802
   pragma Import (C, glp_error_u, "glp_error_");

  -- display error message and terminate execution  
   procedure glp_assert_u
     (expr : Interfaces.C.Strings.chars_ptr;
      file : Interfaces.C.Strings.chars_ptr;
      line : int);  -- /usr/include/glpk.h:807
   pragma Import (C, glp_assert_u, "glp_assert_");

  -- check for logical condition  
   procedure glp_error_hook (func : access procedure (arg1 : System.Address); info : System.Address);  -- /usr/include/glpk.h:810
   pragma Import (C, glp_error_hook, "glp_error_hook");

  -- install hook to intercept abnormal termination  
   function glp_malloc (size : int) return System.Address;  -- /usr/include/glpk.h:813
   pragma Import (C, glp_malloc, "glp_malloc");

  -- allocate memory block  
   function glp_calloc (n : int; size : int) return System.Address;  -- /usr/include/glpk.h:816
   pragma Import (C, glp_calloc, "glp_calloc");

  -- allocate memory block  
   procedure glp_free (ptr : System.Address);  -- /usr/include/glpk.h:819
   pragma Import (C, glp_free, "glp_free");

  -- free memory block  
   procedure glp_mem_limit (limit : int);  -- /usr/include/glpk.h:822
   pragma Import (C, glp_mem_limit, "glp_mem_limit");

  -- set memory usage limit  
   procedure glp_mem_usage
     (count : access int;
      cpeak : access int;
      total : access glp_long;
      tpeak : access glp_long);  -- /usr/include/glpk.h:825
   pragma Import (C, glp_mem_usage, "glp_mem_usage");

  -- get memory usage information  
   function glp_time return glp_long;  -- /usr/include/glpk.h:829
   pragma Import (C, glp_time, "glp_time");

  -- determine current universal time  
   function glp_difftime (t1 : glp_long; t0 : glp_long) return double;  -- /usr/include/glpk.h:832
   pragma Import (C, glp_difftime, "glp_difftime");

  -- compute difference between two time values  
  --******************************************************************** 
   type glp_data_u_opaque_data_array is array (0 .. 99) of aliased double;
   type glp_data is record
      u_opaque_data : aliased glp_data_u_opaque_data_array;  -- /usr/include/glpk.h:839
   end record;
   pragma Convention (C_Pass_By_Copy, glp_data);  -- /usr/include/glpk.h:839

   --  skipped anonymous struct anon_11

  -- plain data file  
   function glp_sdf_open_file (fname : Interfaces.C.Strings.chars_ptr) return access glp_data;  -- /usr/include/glpk.h:843
   pragma Import (C, glp_sdf_open_file, "glp_sdf_open_file");

  -- open plain data file  
   procedure glp_sdf_set_jump (data : access glp_data; jump : System.Address);  -- /usr/include/glpk.h:846
   pragma Import (C, glp_sdf_set_jump, "glp_sdf_set_jump");

  -- set up error handling  
   procedure glp_sdf_error (data : access glp_data; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/glpk.h:849
   pragma Import (C, glp_sdf_error, "glp_sdf_error");

  -- print error message  
   procedure glp_sdf_warning (data : access glp_data; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/glpk.h:852
   pragma Import (C, glp_sdf_warning, "glp_sdf_warning");

  -- print warning message  
   function glp_sdf_read_int (data : access glp_data) return int;  -- /usr/include/glpk.h:855
   pragma Import (C, glp_sdf_read_int, "glp_sdf_read_int");

  -- read integer number  
   function glp_sdf_read_num (data : access glp_data) return double;  -- /usr/include/glpk.h:858
   pragma Import (C, glp_sdf_read_num, "glp_sdf_read_num");

  -- read floating-point number  
   function glp_sdf_read_item (data : access glp_data) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:861
   pragma Import (C, glp_sdf_read_item, "glp_sdf_read_item");

  -- read data item  
   function glp_sdf_read_text (data : access glp_data) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:864
   pragma Import (C, glp_sdf_read_text, "glp_sdf_read_text");

  -- read text until end of line  
   function glp_sdf_line (data : access glp_data) return int;  -- /usr/include/glpk.h:867
   pragma Import (C, glp_sdf_line, "glp_sdf_line");

  -- determine current line number  
   procedure glp_sdf_close_file (data : access glp_data);  -- /usr/include/glpk.h:870
   pragma Import (C, glp_sdf_close_file, "glp_sdf_close_file");

  -- close plain data file  
  --******************************************************************** 
   type u_glp_graph;
   subtype glp_graph is u_glp_graph;

   type u_glp_vertex;
   type u_glp_arc;
   subtype glp_vertex is u_glp_vertex;

   subtype glp_arc is u_glp_arc;

  -- graph descriptor  
  -- DMP *pool;  
   type u_glp_graph is record
      pool : System.Address;  -- /usr/include/glpk.h:881
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:883
      nv_max : aliased int;  -- /usr/include/glpk.h:886
      nv : aliased int;  -- /usr/include/glpk.h:888
      na : aliased int;  -- /usr/include/glpk.h:890
      v : System.Address;  -- /usr/include/glpk.h:892
      index : System.Address;  -- /usr/include/glpk.h:894
      v_size : aliased int;  -- /usr/include/glpk.h:897
      a_size : aliased int;  -- /usr/include/glpk.h:899
   end record;
   pragma Convention (C_Pass_By_Copy, u_glp_graph);  -- /usr/include/glpk.h:879

  -- memory pool to store graph components  
  -- graph name (1 to 255 chars); NULL means no name is assigned
  --         to the graph  

  -- length of the vertex list (enlarged automatically)  
  -- number of vertices in the graph, 0 <= nv <= nv_max  
  -- number of arcs in the graph, na >= 0  
  -- glp_vertex *v[1+nv_max];  
  -- v[i], 1 <= i <= nv, is a pointer to i-th vertex  
  -- AVL *index;  
  -- vertex index to find vertices by their names; NULL means the
  --         index does not exist  

  -- size of data associated with each vertex (0 to 256 bytes)  
  -- size of data associated with each arc (0 to 256 bytes)  
  -- vertex descriptor  
   type u_glp_vertex is record
      i : aliased int;  -- /usr/include/glpk.h:905
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/glpk.h:907
      c_entry : System.Address;  -- /usr/include/glpk.h:910
      data : System.Address;  -- /usr/include/glpk.h:914
      temp : System.Address;  -- /usr/include/glpk.h:916
      c_in : access glp_arc;  -- /usr/include/glpk.h:918
      c_out : access glp_arc;  -- /usr/include/glpk.h:920
   end record;
   pragma Convention (C_Pass_By_Copy, u_glp_vertex);  -- /usr/include/glpk.h:903

  -- vertex ordinal number, 1 <= i <= nv  
  -- vertex name (1 to 255 chars); NULL means no name is assigned
  --         to the vertex  

  -- AVLNODE *entry;  
  -- pointer to corresponding entry in the vertex index; NULL means
  --         that either the index does not exist or the vertex has no name
  --         assigned  

  -- pointer to data associated with the vertex  
  -- working pointer  
  -- pointer to the (unordered) list of incoming arcs  
  -- pointer to the (unordered) list of outgoing arcs  
  -- arc descriptor  
   type u_glp_arc is record
      tail : access glp_vertex;  -- /usr/include/glpk.h:926
      head : access glp_vertex;  -- /usr/include/glpk.h:928
      data : System.Address;  -- /usr/include/glpk.h:930
      temp : System.Address;  -- /usr/include/glpk.h:932
      t_prev : access glp_arc;  -- /usr/include/glpk.h:934
      t_next : access glp_arc;  -- /usr/include/glpk.h:936
      h_prev : access glp_arc;  -- /usr/include/glpk.h:938
      h_next : access glp_arc;  -- /usr/include/glpk.h:940
   end record;
   pragma Convention (C_Pass_By_Copy, u_glp_arc);  -- /usr/include/glpk.h:924

  -- pointer to the tail endpoint  
  -- pointer to the head endpoint  
  -- pointer to data associated with the arc  
  -- working pointer  
  -- pointer to previous arc having the same tail endpoint  
  -- pointer to next arc having the same tail endpoint  
  -- pointer to previous arc having the same head endpoint  
  -- pointer to next arc having the same head endpoint  
   function glp_create_graph (v_size : int; a_size : int) return access glp_graph;  -- /usr/include/glpk.h:944
   pragma Import (C, glp_create_graph, "glp_create_graph");

  -- create graph  
   procedure glp_set_graph_name (G : access glp_graph; name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:947
   pragma Import (C, glp_set_graph_name, "glp_set_graph_name");

  -- assign (change) graph name  
   function glp_add_vertices (G : access glp_graph; nadd : int) return int;  -- /usr/include/glpk.h:950
   pragma Import (C, glp_add_vertices, "glp_add_vertices");

  -- add new vertices to graph  
   procedure glp_set_vertex_name
     (G : access glp_graph;
      i : int;
      name : Interfaces.C.Strings.chars_ptr);  -- /usr/include/glpk.h:953
   pragma Import (C, glp_set_vertex_name, "glp_set_vertex_name");

  -- assign (change) vertex name  
   function glp_add_arc
     (G : access glp_graph;
      i : int;
      j : int) return access glp_arc;  -- /usr/include/glpk.h:956
   pragma Import (C, glp_add_arc, "glp_add_arc");

  -- add new arc to graph  
   procedure glp_del_vertices
     (G : access glp_graph;
      ndel : int;
      num : access int);  -- /usr/include/glpk.h:959
   pragma Import (C, glp_del_vertices, "glp_del_vertices");

  -- delete vertices from graph  
   procedure glp_del_arc (G : access glp_graph; a : access glp_arc);  -- /usr/include/glpk.h:962
   pragma Import (C, glp_del_arc, "glp_del_arc");

  -- delete arc from graph  
   procedure glp_erase_graph
     (G : access glp_graph;
      v_size : int;
      a_size : int);  -- /usr/include/glpk.h:965
   pragma Import (C, glp_erase_graph, "glp_erase_graph");

  -- erase graph content  
   procedure glp_delete_graph (G : access glp_graph);  -- /usr/include/glpk.h:968
   pragma Import (C, glp_delete_graph, "glp_delete_graph");

  -- delete graph  
   procedure glp_create_v_index (G : access glp_graph);  -- /usr/include/glpk.h:971
   pragma Import (C, glp_create_v_index, "glp_create_v_index");

  -- create vertex name index  
   function glp_find_vertex (G : access glp_graph; name : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:974
   pragma Import (C, glp_find_vertex, "glp_find_vertex");

  -- find vertex by its name  
   procedure glp_delete_v_index (G : access glp_graph);  -- /usr/include/glpk.h:977
   pragma Import (C, glp_delete_v_index, "glp_delete_v_index");

  -- delete vertex name index  
   function glp_read_graph (G : access glp_graph; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:980
   pragma Import (C, glp_read_graph, "glp_read_graph");

  -- read graph from plain text file  
   function glp_write_graph (G : access glp_graph; fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:983
   pragma Import (C, glp_write_graph, "glp_write_graph");

  -- write graph to plain text file  
   procedure glp_mincost_lp
     (P : access glp_prob;
      G : access glp_graph;
      names : int;
      v_rhs : int;
      a_low : int;
      a_cap : int;
      a_cost : int);  -- /usr/include/glpk.h:986
   pragma Import (C, glp_mincost_lp, "glp_mincost_lp");

  -- convert minimum cost flow problem to LP  
   function glp_mincost_okalg
     (G : access glp_graph;
      v_rhs : int;
      a_low : int;
      a_cap : int;
      a_cost : int;
      sol : access double;
      a_x : int;
      v_pi : int) return int;  -- /usr/include/glpk.h:990
   pragma Import (C, glp_mincost_okalg, "glp_mincost_okalg");

  -- find minimum-cost flow with out-of-kilter algorithm  
   procedure glp_maxflow_lp
     (P : access glp_prob;
      G : access glp_graph;
      names : int;
      s : int;
      t : int;
      a_cap : int);  -- /usr/include/glpk.h:994
   pragma Import (C, glp_maxflow_lp, "glp_maxflow_lp");

  -- convert maximum flow problem to LP  
   function glp_maxflow_ffalg
     (G : access glp_graph;
      s : int;
      t : int;
      a_cap : int;
      sol : access double;
      a_x : int;
      v_cut : int) return int;  -- /usr/include/glpk.h:998
   pragma Import (C, glp_maxflow_ffalg, "glp_maxflow_ffalg");

  -- find maximal flow with Ford-Fulkerson algorithm  
   function glp_check_asnprob (G : access glp_graph; v_set : int) return int;  -- /usr/include/glpk.h:1002
   pragma Import (C, glp_check_asnprob, "glp_check_asnprob");

  -- check correctness of assignment problem data  
  -- assignment problem formulation:  
   function glp_asnprob_lp
     (P : access glp_prob;
      form : int;
      G : access glp_graph;
      names : int;
      v_set : int;
      a_cost : int) return int;  -- /usr/include/glpk.h:1010
   pragma Import (C, glp_asnprob_lp, "glp_asnprob_lp");

  -- convert assignment problem to LP  
   function glp_asnprob_okalg
     (form : int;
      G : access glp_graph;
      v_set : int;
      a_cost : int;
      sol : access double;
      a_x : int) return int;  -- /usr/include/glpk.h:1014
   pragma Import (C, glp_asnprob_okalg, "glp_asnprob_okalg");

  -- solve assignment problem with out-of-kilter algorithm  
   function glp_asnprob_hall
     (G : access glp_graph;
      v_set : int;
      a_x : int) return int;  -- /usr/include/glpk.h:1018
   pragma Import (C, glp_asnprob_hall, "glp_asnprob_hall");

  -- find bipartite matching of maximum cardinality  
   function glp_cpp
     (G : access glp_graph;
      v_t : int;
      v_es : int;
      v_ls : int) return double;  -- /usr/include/glpk.h:1021
   pragma Import (C, glp_cpp, "glp_cpp");

  -- solve critical path problem  
   function glp_read_mincost
     (G : access glp_graph;
      v_rhs : int;
      a_low : int;
      a_cap : int;
      a_cost : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1024
   pragma Import (C, glp_read_mincost, "glp_read_mincost");

  -- read min-cost flow problem data in DIMACS format  
   function glp_write_mincost
     (G : access glp_graph;
      v_rhs : int;
      a_low : int;
      a_cap : int;
      a_cost : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1028
   pragma Import (C, glp_write_mincost, "glp_write_mincost");

  -- write min-cost flow problem data in DIMACS format  
   function glp_read_maxflow
     (G : access glp_graph;
      s : access int;
      t : access int;
      a_cap : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1032
   pragma Import (C, glp_read_maxflow, "glp_read_maxflow");

  -- read maximum flow problem data in DIMACS format  
   function glp_write_maxflow
     (G : access glp_graph;
      s : int;
      t : int;
      a_cap : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1036
   pragma Import (C, glp_write_maxflow, "glp_write_maxflow");

  -- write maximum flow problem data in DIMACS format  
   function glp_read_asnprob
     (G : access glp_graph;
      v_set : int;
      a_cost : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1040
   pragma Import (C, glp_read_asnprob, "glp_read_asnprob");

  -- read assignment problem data in DIMACS format  
   function glp_write_asnprob
     (G : access glp_graph;
      v_set : int;
      a_cost : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1044
   pragma Import (C, glp_write_asnprob, "glp_write_asnprob");

  -- write assignment problem data in DIMACS format  
   function glp_read_ccdata
     (G : access glp_graph;
      v_wgt : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1048
   pragma Import (C, glp_read_ccdata, "glp_read_ccdata");

  -- read graph in DIMACS clique/coloring format  
   function glp_write_ccdata
     (G : access glp_graph;
      v_wgt : int;
      fname : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/glpk.h:1051
   pragma Import (C, glp_write_ccdata, "glp_write_ccdata");

  -- write graph in DIMACS clique/coloring format  
   function glp_netgen
     (G : access glp_graph;
      v_rhs : int;
      a_cap : int;
      a_cost : int;
      parm : access int) return int;  -- /usr/include/glpk.h:1054
   pragma Import (C, glp_netgen, "glp_netgen");

  -- Klingman's network problem generator  
   function glp_gridgen
     (G : access glp_graph;
      v_rhs : int;
      a_cap : int;
      a_cost : int;
      parm : access int) return int;  -- /usr/include/glpk.h:1058
   pragma Import (C, glp_gridgen, "glp_gridgen");

  -- grid-like network problem generator  
   function glp_rmfgen
     (G : access glp_graph;
      s : access int;
      t : access int;
      a_cap : int;
      parm : access int) return int;  -- /usr/include/glpk.h:1062
   pragma Import (C, glp_rmfgen, "glp_rmfgen");

  -- Goldfarb's maximum flow problem generator  
   function glp_weak_comp (G : access glp_graph; v_num : int) return int;  -- /usr/include/glpk.h:1066
   pragma Import (C, glp_weak_comp, "glp_weak_comp");

  -- find all weakly connected components of graph  
   function glp_strong_comp (G : access glp_graph; v_num : int) return int;  -- /usr/include/glpk.h:1069
   pragma Import (C, glp_strong_comp, "glp_strong_comp");

  -- find all strongly connected components of graph  
   function glp_top_sort (G : access glp_graph; v_num : int) return int;  -- /usr/include/glpk.h:1072
   pragma Import (C, glp_top_sort, "glp_top_sort");

  -- topological sorting of acyclic digraph  
   function glp_wclique_exact
     (G : access glp_graph;
      v_wgt : int;
      sol : access double;
      v_set : int) return int;  -- /usr/include/glpk.h:1075
   pragma Import (C, glp_wclique_exact, "glp_wclique_exact");

  -- find maximum weight clique with exact algorithm  
  --**********************************************************************
  --*  NOTE: All symbols defined below are obsolete and kept here only for
  --*        backward compatibility.
  --********************************************************************** 

  -- problem class:  
  -- type of auxiliary/structural variable:  
  -- optimization direction flag:  
  -- status of primal basic solution:  
  -- status of dual basic solution:  
  -- status of auxiliary/structural variable:  
  -- status of interior-point solution:  
  -- kind of structural variable:  
  -- status of integer solution:  
  -- status codes reported by the routine lpx_get_status:  
  -- exit codes returned by solver routines:  
  -- control parameter identifiers:  
  -- this structure contains results reported by the routines which
  --         checks Karush-Kuhn-Tucker conditions (for details see comments
  --         to those routines)  

  ---------------------------------------------------------------- 
  -- xR - A * xS = 0 (KKT.PE)  
   type LPXKKT is record
      pe_ae_max : aliased double;  -- /usr/include/glpk.h:1205
      pe_ae_row : aliased int;  -- /usr/include/glpk.h:1207
      pe_re_max : aliased double;  -- /usr/include/glpk.h:1209
      pe_re_row : aliased int;  -- /usr/include/glpk.h:1211
      pe_quality : aliased int;  -- /usr/include/glpk.h:1213
      pb_ae_max : aliased double;  -- /usr/include/glpk.h:1221
      pb_ae_ind : aliased int;  -- /usr/include/glpk.h:1223
      pb_re_max : aliased double;  -- /usr/include/glpk.h:1225
      pb_re_ind : aliased int;  -- /usr/include/glpk.h:1227
      pb_quality : aliased int;  -- /usr/include/glpk.h:1229
      de_ae_max : aliased double;  -- /usr/include/glpk.h:1237
      de_ae_col : aliased int;  -- /usr/include/glpk.h:1239
      de_re_max : aliased double;  -- /usr/include/glpk.h:1241
      de_re_col : aliased int;  -- /usr/include/glpk.h:1243
      de_quality : aliased int;  -- /usr/include/glpk.h:1245
      db_ae_max : aliased double;  -- /usr/include/glpk.h:1253
      db_ae_ind : aliased int;  -- /usr/include/glpk.h:1255
      db_re_max : aliased double;  -- /usr/include/glpk.h:1257
      db_re_ind : aliased int;  -- /usr/include/glpk.h:1259
      db_quality : aliased int;  -- /usr/include/glpk.h:1261
      cs_ae_max : aliased double;  -- /usr/include/glpk.h:1269
      cs_ae_ind : aliased int;  -- /usr/include/glpk.h:1271
      cs_re_max : aliased double;  -- /usr/include/glpk.h:1273
      cs_re_ind : aliased int;  -- /usr/include/glpk.h:1275
      cs_quality : aliased int;  -- /usr/include/glpk.h:1277
   end record;
   pragma Convention (C_Pass_By_Copy, LPXKKT);  -- /usr/include/glpk.h:1283

   --  skipped anonymous struct anon_12

  -- largest absolute error  
  -- number of row with largest absolute error  
  -- largest relative error  
  -- number of row with largest relative error  
  -- quality of primal solution:
  --         'H' - high
  --         'M' - medium
  --         'L' - low
  --         '?' - primal solution is wrong  

  ---------------------------------------------------------------- 
  -- l[k] <= x[k] <= u[k] (KKT.PB)  
  -- largest absolute error  
  -- number of variable with largest absolute error  
  -- largest relative error  
  -- number of variable with largest relative error  
  -- quality of primal feasibility:
  --         'H' - high
  --         'M' - medium
  --         'L' - low
  --         '?' - primal solution is infeasible  

  ---------------------------------------------------------------- 
  -- A' * (dR - cR) + (dS - cS) = 0 (KKT.DE)  
  -- largest absolute error  
  -- number of column with largest absolute error  
  -- largest relative error  
  -- number of column with largest relative error  
  -- quality of dual solution:
  --         'H' - high
  --         'M' - medium
  --         'L' - low
  --         '?' - dual solution is wrong  

  ---------------------------------------------------------------- 
  -- d[k] >= 0 or d[k] <= 0 (KKT.DB)  
  -- largest absolute error  
  -- number of variable with largest absolute error  
  -- largest relative error  
  -- number of variable with largest relative error  
  -- quality of dual feasibility:
  --         'H' - high
  --         'M' - medium
  --         'L' - low
  --         '?' - dual solution is infeasible  

  ---------------------------------------------------------------- 
  -- (x[k] - bound of x[k]) * d[k] = 0 (KKT.CS)  
  -- largest absolute error  
  -- number of variable with largest absolute error  
  -- largest relative error  
  -- number of variable with largest relative error  
  -- quality of complementary slackness:
  --         'H' - high
  --         'M' - medium
  --         'L' - low
  --         '?' - primal and dual solutions are not complementary  

   --  skipped func _glp_lpx_create_prob

  -- create problem object  
   --  skipped func _glp_lpx_set_prob_name

  -- assign (change) problem name  
   --  skipped func _glp_lpx_set_obj_name

  -- assign (change) objective function name  
   --  skipped func _glp_lpx_set_obj_dir

  -- set (change) optimization direction flag  
   --  skipped func _glp_lpx_add_rows

  -- add new rows to problem object  
   --  skipped func _glp_lpx_add_cols

  -- add new columns to problem object  
   --  skipped func _glp_lpx_set_row_name

  -- assign (change) row name  
   --  skipped func _glp_lpx_set_col_name

  -- assign (change) column name  
   --  skipped func _glp_lpx_set_row_bnds

  -- set (change) row bounds  
   --  skipped func _glp_lpx_set_col_bnds

  -- set (change) column bounds  
   --  skipped func _glp_lpx_set_obj_coef

  -- set (change) obj. coefficient or constant term  
   --  skipped func _glp_lpx_set_mat_row

  -- set (replace) row of the constraint matrix  
   --  skipped func _glp_lpx_set_mat_col

  -- set (replace) column of the constraint matrix  
   --  skipped func _glp_lpx_load_matrix

  -- load (replace) the whole constraint matrix  
   --  skipped func _glp_lpx_del_rows

  -- delete specified rows from problem object  
   --  skipped func _glp_lpx_del_cols

  -- delete specified columns from problem object  
   --  skipped func _glp_lpx_delete_prob

  -- delete problem object  
   --  skipped func _glp_lpx_get_prob_name

  -- retrieve problem name  
   --  skipped func _glp_lpx_get_obj_name

  -- retrieve objective function name  
   --  skipped func _glp_lpx_get_obj_dir

  -- retrieve optimization direction flag  
   --  skipped func _glp_lpx_get_num_rows

  -- retrieve number of rows  
   --  skipped func _glp_lpx_get_num_cols

  -- retrieve number of columns  
   --  skipped func _glp_lpx_get_row_name

  -- retrieve row name  
   --  skipped func _glp_lpx_get_col_name

  -- retrieve column name  
   --  skipped func _glp_lpx_get_row_type

  -- retrieve row type  
   --  skipped func _glp_lpx_get_row_lb

  -- retrieve row lower bound  
   --  skipped func _glp_lpx_get_row_ub

  -- retrieve row upper bound  
   --  skipped func _glp_lpx_get_row_bnds

  -- retrieve row bounds  
   --  skipped func _glp_lpx_get_col_type

  -- retrieve column type  
   --  skipped func _glp_lpx_get_col_lb

  -- retrieve column lower bound  
   --  skipped func _glp_lpx_get_col_ub

  -- retrieve column upper bound  
   --  skipped func _glp_lpx_get_col_bnds

  -- retrieve column bounds  
   --  skipped func _glp_lpx_get_obj_coef

  -- retrieve obj. coefficient or constant term  
   --  skipped func _glp_lpx_get_num_nz

  -- retrieve number of constraint coefficients  
   --  skipped func _glp_lpx_get_mat_row

  -- retrieve row of the constraint matrix  
   --  skipped func _glp_lpx_get_mat_col

  -- retrieve column of the constraint matrix  
   --  skipped func _glp_lpx_create_index

  -- create the name index  
   --  skipped func _glp_lpx_find_row

  -- find row by its name  
   --  skipped func _glp_lpx_find_col

  -- find column by its name  
   --  skipped func _glp_lpx_delete_index

  -- delete the name index  
   --  skipped func _glp_lpx_scale_prob

  -- scale problem data  
   --  skipped func _glp_lpx_unscale_prob

  -- unscale problem data  
   --  skipped func _glp_lpx_set_row_stat

  -- set (change) row status  
   --  skipped func _glp_lpx_set_col_stat

  -- set (change) column status  
   --  skipped func _glp_lpx_std_basis

  -- construct standard initial LP basis  
   --  skipped func _glp_lpx_adv_basis

  -- construct advanced initial LP basis  
   --  skipped func _glp_lpx_cpx_basis

  -- construct Bixby's initial LP basis  
   --  skipped func _glp_lpx_simplex

  -- easy-to-use driver to the simplex method  
   --  skipped func _glp_lpx_exact

  -- easy-to-use driver to the exact simplex method  
   --  skipped func _glp_lpx_get_status

  -- retrieve generic status of basic solution  
   --  skipped func _glp_lpx_get_prim_stat

  -- retrieve primal status of basic solution  
   --  skipped func _glp_lpx_get_dual_stat

  -- retrieve dual status of basic solution  
   --  skipped func _glp_lpx_get_obj_val

  -- retrieve objective value (basic solution)  
   --  skipped func _glp_lpx_get_row_stat

  -- retrieve row status (basic solution)  
   --  skipped func _glp_lpx_get_row_prim

  -- retrieve row primal value (basic solution)  
   --  skipped func _glp_lpx_get_row_dual

  -- retrieve row dual value (basic solution)  
   --  skipped func _glp_lpx_get_row_info

  -- obtain row solution information  
   --  skipped func _glp_lpx_get_col_stat

  -- retrieve column status (basic solution)  
   --  skipped func _glp_lpx_get_col_prim

  -- retrieve column primal value (basic solution)  
   --  skipped func _glp_lpx_get_col_dual

  -- retrieve column dual value (basic solution)  
   --  skipped func _glp_lpx_get_col_info

  -- obtain column solution information (obsolete)  
   --  skipped func _glp_lpx_get_ray_info

  -- determine what causes primal unboundness  
   --  skipped func _glp_lpx_check_kkt

  -- check Karush-Kuhn-Tucker conditions  
   --  skipped func _glp_lpx_warm_up

  -- "warm up" LP basis  
   --  skipped func _glp_lpx_eval_tab_row

  -- compute row of the simplex table  
   --  skipped func _glp_lpx_eval_tab_col

  -- compute column of the simplex table  
   --  skipped func _glp_lpx_transform_row

  -- transform explicitly specified row  
   --  skipped func _glp_lpx_transform_col

  -- transform explicitly specified column  
   --  skipped func _glp_lpx_prim_ratio_test

  -- perform primal ratio test  
   --  skipped func _glp_lpx_dual_ratio_test

  -- perform dual ratio test  
   --  skipped func _glp_lpx_interior

  -- easy-to-use driver to the interior point method  
   --  skipped func _glp_lpx_ipt_status

  -- retrieve status of interior-point solution  
   --  skipped func _glp_lpx_ipt_obj_val

  -- retrieve objective value (interior point)  
   --  skipped func _glp_lpx_ipt_row_prim

  -- retrieve row primal value (interior point)  
   --  skipped func _glp_lpx_ipt_row_dual

  -- retrieve row dual value (interior point)  
   --  skipped func _glp_lpx_ipt_col_prim

  -- retrieve column primal value (interior point)  
   --  skipped func _glp_lpx_ipt_col_dual

  -- retrieve column dual value (interior point)  
   --  skipped func _glp_lpx_set_class

  -- set problem class  
   --  skipped func _glp_lpx_get_class

  -- determine problem klass  
   --  skipped func _glp_lpx_set_col_kind

  -- set (change) column kind  
   --  skipped func _glp_lpx_get_col_kind

  -- retrieve column kind  
   --  skipped func _glp_lpx_get_num_int

  -- retrieve number of integer columns  
   --  skipped func _glp_lpx_get_num_bin

  -- retrieve number of binary columns  
   --  skipped func _glp_lpx_integer

  -- easy-to-use driver to the branch-and-bound method  
   --  skipped func _glp_lpx_intopt

  -- easy-to-use driver to the branch-and-bound method  
   --  skipped func _glp_lpx_mip_status

  -- retrieve status of MIP solution  
   --  skipped func _glp_lpx_mip_obj_val

  -- retrieve objective value (MIP solution)  
   --  skipped func _glp_lpx_mip_row_val

  -- retrieve row value (MIP solution)  
   --  skipped func _glp_lpx_mip_col_val

  -- retrieve column value (MIP solution)  
   --  skipped func _glp_lpx_check_int

  -- check integer feasibility conditions  
   --  skipped func _glp_lpx_reset_parms

  -- reset control parameters to default values  
   --  skipped func _glp_lpx_set_int_parm

  -- set (change) integer control parameter  
   --  skipped func _glp_lpx_get_int_parm

  -- query integer control parameter  
   --  skipped func _glp_lpx_set_real_parm

  -- set (change) real control parameter  
   --  skipped func _glp_lpx_get_real_parm

  -- query real control parameter  
   --  skipped func _glp_lpx_read_mps

  -- read problem data in fixed MPS format  
   --  skipped func _glp_lpx_write_mps

  -- write problem data in fixed MPS format  
   --  skipped func _glp_lpx_read_bas

  -- read LP basis in fixed MPS format  
   --  skipped func _glp_lpx_write_bas

  -- write LP basis in fixed MPS format  
   --  skipped func _glp_lpx_read_freemps

  -- read problem data in free MPS format  
   --  skipped func _glp_lpx_write_freemps

  -- write problem data in free MPS format  
   --  skipped func _glp_lpx_read_cpxlp

  -- read problem data in CPLEX LP format  
   --  skipped func _glp_lpx_write_cpxlp

  -- write problem data in CPLEX LP format  
   --  skipped func _glp_lpx_read_model

  -- read LP/MIP model written in GNU MathProg language  
   --  skipped func _glp_lpx_print_prob

  -- write problem data in plain text format  
   --  skipped func _glp_lpx_print_sol

  -- write LP problem solution in printable format  
   --  skipped func _glp_lpx_print_sens_bnds

  -- write bounds sensitivity information  
   --  skipped func _glp_lpx_print_ips

  -- write interior point solution in printable format  
   --  skipped func _glp_lpx_print_mip

  -- write MIP problem solution in printable format  
   --  skipped func _glp_lpx_is_b_avail

  -- check if LP basis is available  
   --  skipped func _glp_lpx_write_pb

  -- write problem data in (normalized) OPB format  
   --  skipped func _glp_lpx_main

  -- stand-alone LP/MIP solver  
  -- eof  
end glpk_h;
