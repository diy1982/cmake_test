/**
 * ****************************************************************************
 * @file     mem_alloc.h
 * @brief    空间管理模块在不同平台的封装
 * @author   wu di (wudi2504@163.com)
 * @version  1.0
 * @date     2021-04-24
 * 
 * @copyright Copyright (c) 2021
 * ****************************************************************************
 */
#ifndef MEM_ALLOC_H_
#define MEM_ALLOC_H_

#ifdef __cplusplus
extern "C"
{
#endif

    void *mem_alloc(int byte_num);
    void mem_free(void *ptr);

#ifdef __cplusplus
}
#endif

#endif