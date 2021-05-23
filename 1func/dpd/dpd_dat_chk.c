#include "mem_alloc.h"

#include "dpd_dat.h"
#include "dpd_dat_chk.h"
#include "dpd_err_code.h"

void cal_power(const DatF *const dat, float *const pow)
{
    int i;
    for (i = 0; i < dat->len; i++)
    {
        pow[i] = dat->data->real * dat->data->real + dat->data->imag + dat->data->imag;
    }
}
float cal_dat_max(const float *const dat, int len)
{
    int i;
    float max = 0;
    for (i = 0; i < len; i++)
    {
        if (max < dat[i])
        {
            max = dat[i];
        }
    }
    return max;
}
float cal_dat_avg(const float *const dat, int len)
{
    int i;
    float sum = 0;
    float avg;
    for (i = 0; i < len; i++)
    {
        sum += dat[i];
    }
    avg = sum / len;
    return avg;
}
int dpd_dat_chk(DpdDat *dat, DpdDatChkPara *para, DpdDatChkStatus *status)
{
    float *power;
    int len = dat->x.len;
    float x_pow_max, x_pow_avg, y_pow_max, y_pow_avg;
    power = (float *)mem_alloc(len * sizeof(CmplF));
    if (power == NULL)
    {
        return MEM_ALLOC_ERR;
    }
    cal_power(&dat->x, power);
    x_pow_max = cal_dat_max(power, len);
    x_pow_avg = cal_dat_avg(power, len);
    cal_power(&dat->y, power);
    y_pow_max = cal_dat_max(power, len);
    y_pow_avg = cal_dat_avg(power, len);
    mem_free(power);

    status->x_pow_peak = x_pow_max;
    status->x_pow_avg = x_pow_avg;
    status->y_pow_peak = y_pow_max;
    status->y_pow_avg = y_pow_avg;

    if (x_pow_max > para->x_pow_peak_max_thr)
    {
        status->x_pow_peak_max_err_cnt++;
        return -1;
    }
    if (x_pow_avg > para->x_pow_avg_max_thr)
    {
        status->x_pow_avg_max_err_cnt++;
        return -1;
    }
    if (x_pow_avg < para->x_pow_avg_min_thr)
    {
        status->x_pow_avg_min_err_cnt++;
        return -1;
    }

    if (y_pow_max > para->y_pow_peak_max_thr)
    {
        status->y_pow_peak_max_err_cnt++;
        return -1;
    }
    if (y_pow_avg > para->y_pow_avg_max_thr)
    {
        status->y_pow_avg_max_err_cnt++;
        return -1;
    }
    if (y_pow_avg < para->y_pow_avg_min_thr)
    {
        status->y_pow_avg_min_err_cnt++;
        return -1;
    }
    return OK;
}