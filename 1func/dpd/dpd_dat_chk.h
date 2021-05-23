#ifndef DPD_DAT_CHK_
#define DPD_DAT_CHK_
typedef struct
{
    float x_pow_peak_max_thr;
    float x_pow_avg_max_thr;
    float x_pow_avg_min_thr;
    float y_pow_peak_max_thr;
    float y_pow_avg_max_thr;
    float y_pow_avg_min_thr;
} DpdDatChkPara;

typedef struct
{
    float x_pow_peak;
    float x_pow_avg;
    float y_pow_peak;
    float y_pow_avg;
    int x_pow_peak_max_err_cnt;
    int x_pow_avg_max_err_cnt;
    int x_pow_avg_min_err_cnt;
    int y_pow_peak_max_err_cnt;
    int y_pow_avg_max_err_cnt;
    int y_pow_avg_min_err_cnt;
    int dat_chk_statur;
}DpdDatChkStatus;

#endif