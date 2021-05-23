/**
 * ****************************************************************************
 * @file     dpd_init.c
 * @brief    DPD初始化
 * @author   wu di (wudi2504@163.com)
 * @version  1.0
 * @date     2021-05-23
 * 
 * @copyright Copyright (c) 2021
 * ****************************************************************************
 */
#include "dpd_para.h"
#include "dpd_dat.h"
CmplF g_x[DPD_DAT_LEN];
CmplF g_y[DPD_DAT_LEN];
DpdDat g_dpd_dat;
/**
 * ****************************************************************************
 * @brief    DPD初始化
 * 
 * ****************************************************************************
 */
void dpd_init()
{
    g_dpd_dat.x.data = g_x;
    g_dpd_dat.x.data = g_y;
}