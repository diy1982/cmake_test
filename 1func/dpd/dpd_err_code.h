/**
 * ****************************************************************************
 * @file     dpd_err_code.h
 * @brief    DPD告警码定义
 * @author   wu di (wudi2504@163.com)
 * @version  1.0
 * @date     2021-05-23
 * 
 * @copyright Copyright (c) 2021
 * ****************************************************************************
 */
#ifndef DPD_ERR_CODE_
#define DPD_ERR_CODE_

#ifndef OK
#define OK 0
#endif

#define NULL 0

#define MEM_ALLOC_ERR 0x00000001


#define DPD_X_POW_PEAK_OVERFLOW_ERR 0x10000001
#define DPD_X_POW_AVG_OVERFLOW_ERR 0x10000002
#define DPD_X_POW_AVG_UNDERFLOW_ERR 0x10000002

#endif