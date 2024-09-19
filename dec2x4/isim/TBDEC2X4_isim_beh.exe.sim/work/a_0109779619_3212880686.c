/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/korisnik/Desktop/VHDL/dec2x4/dec2x4.vhd";



static void work_a_0109779619_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4567);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 4539);
    t7 = xsi_mem_cmp(t1, t5, 2U);
    if (t7 == 1)
        goto LAB6;

LAB11:    t8 = (t0 + 4541);
    t10 = xsi_mem_cmp(t8, t5, 2U);
    if (t10 == 1)
        goto LAB7;

LAB12:    t11 = (t0 + 4543);
    t13 = xsi_mem_cmp(t11, t5, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 4545);
    t16 = xsi_mem_cmp(t14, t5, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4563);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(48, ng0);
    t17 = (t0 + 4547);
    t19 = (t0 + 2912);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 4U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB5;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4551);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4555);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4559);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB15:;
}


extern void work_a_0109779619_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0109779619_3212880686_p_0};
	xsi_register_didat("work_a_0109779619_3212880686", "isim/TBDEC2X4_isim_beh.exe.sim/work/a_0109779619_3212880686.didat");
	xsi_register_executes(pe);
}
