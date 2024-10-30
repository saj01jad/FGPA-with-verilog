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
static const char *ng0 = "C:/Users/ideapad 5 pro/Documents/uni/FPGA/verilog/code/4bit adder/fourBitAdder/fourBitAdder_tb.v";
static int ng1[] = {0, 0};



static void Initial_45_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 30000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(47, ng0);
    *((int *)t4) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t3 = (t4 + 4);
    *((int *)t3) = 0;
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    goto LAB5;

LAB7:    goto LAB1;

}

static void Initial_50_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB4:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2904);
    xsi_process_wait(t2, 30000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(52, ng0);
    *((int *)t4) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t3 = (t4 + 4);
    *((int *)t3) = 0;
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    goto LAB5;

LAB7:    goto LAB1;

}

static void Initial_55_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(55, ng0);

LAB2:    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}


extern void work_m_00000000002692777243_2574648842_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Initial_50_1,(void *)Initial_55_2};
	xsi_register_didat("work_m_00000000002692777243_2574648842", "isim/fourBitAdder_tb_isim_beh.exe.sim/work/m_00000000002692777243_2574648842.didat");
	xsi_register_executes(pe);
}
