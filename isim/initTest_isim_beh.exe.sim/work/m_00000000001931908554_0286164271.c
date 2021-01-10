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
static const char *ng0 = "D:/university/fpga/project/image_processing/main.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {1, 0, 0, 0, 0, 0, 0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {2, 0, 0, 0, 0, 0, 0, 0};
static int ng5[] = {0, 0};
static int ng6[] = {70, 0};
static unsigned int ng7[] = {255U, 0U};



static void Always_52_0(char *t0)
{
    char t4[8];
    char t28[24];
    char t29[16];
    char t33[32];
    char t34[8];
    char t37[8];
    char t38[8];
    char t45[8];
    char t46[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;

LAB0:    t1 = (t0 + 6208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 6528);
    *((int *)t2) = 1;
    t3 = (t0 + 6240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 255U);
    t16 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t16, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 8);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 8);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t8 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 16);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 16);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t8 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 24);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 24);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t8 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t9 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t9, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 8);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 8);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t9 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t9, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 16);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 16);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t9 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t9, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 8);
    t8 = (t5 + 12);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 24);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t9 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t9, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 16);
    t8 = (t5 + 20);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t9 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t9, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t15 = (t13 ^ t14);
    t17 = (t12 | t15);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t6);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t4) = 1;

LAB9:    t8 = (t4 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t17 = (t12 | t15);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB21;

LAB18:    if (t20 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t4) = 1;

LAB21:    t16 = (t4 + 4);
    t23 = *((unsigned int *)t16);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB2;

LAB8:    t7 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(63, ng0);

LAB13:    xsi_set_current_line(64, ng0);
    t9 = (t0 + 1688U);
    t16 = *((char **)t9);
    t9 = (t0 + 2728);
    t30 = (t9 + 56U);
    t31 = *((char **)t30);
    xsi_vlog_get_part_select_value(t29, 48, t31, 47, 0);
    xsi_vlogtype_concat(t28, 72, 72, 2U, t29, 48, t16, 24);
    t32 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t32, t28, 0, 0, 72, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    xsi_vlog_unsigned_add(t33, 101, t5, 101, t6, 32);
    t7 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t7, t33, 0, 0, 101, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3368);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 11, t5, 8, t8, 8);
    t9 = ((char*)((ng3)));
    t16 = (t0 + 3528);
    t30 = (t16 + 56U);
    t31 = *((char **)t30);
    t32 = (t0 + 3848);
    t35 = (t32 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_minus(t37, 8, t31, 8, t36, 8);
    xsi_vlogtype_concat(t34, 11, 9, 2U, t37, 8, t9, 1);
    memset(t38, 0, 8);
    xsi_vlog_unsigned_add(t38, 11, t4, 11, t34, 11);
    t39 = (t0 + 4008);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t0 + 4328);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_minus(t45, 11, t41, 8, t44, 8);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_add(t46, 11, t38, 11, t45, 11);
    t47 = (t0 + 4968);
    xsi_vlogvar_assign_value(t47, t46, 0, 0, 11);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 11, t5, 8, t8, 8);
    t9 = ((char*)((ng3)));
    t16 = (t0 + 4168);
    t30 = (t16 + 56U);
    t31 = *((char **)t30);
    t32 = (t0 + 3208);
    t35 = (t32 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_minus(t37, 8, t31, 8, t36, 8);
    xsi_vlogtype_concat(t34, 11, 9, 2U, t37, 8, t9, 1);
    memset(t38, 0, 8);
    xsi_vlog_unsigned_add(t38, 11, t4, 11, t34, 11);
    t39 = (t0 + 4328);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t0 + 3368);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_minus(t45, 11, t41, 8, t44, 8);
    memset(t46, 0, 8);
    xsi_vlog_unsigned_add(t46, 11, t38, 11, t45, 11);
    t47 = (t0 + 5128);
    xsi_vlogvar_assign_value(t47, t46, 0, 0, 11);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    xsi_vlog_unsigned_equal(t33, 101, t5, 101, t6, 32);
    t7 = (t33 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t33);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB14;

LAB15:
LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(68, ng0);

LAB17:    xsi_set_current_line(69, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 1, 0LL);
    goto LAB16;

LAB20:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(72, ng0);

LAB25:    xsi_set_current_line(73, ng0);
    t30 = (t0 + 4968);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t35 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t36 = (t32 + 4);
    if (*((unsigned int *)t36) != 0)
        goto LAB27;

LAB26:    t39 = (t35 + 4);
    if (*((unsigned int *)t39) != 0)
        goto LAB27;

LAB30:    if (*((unsigned int *)t32) < *((unsigned int *)t35))
        goto LAB28;

LAB29:    t41 = (t34 + 4);
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = *((unsigned int *)t34);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 11, 0LL);

LAB33:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB35;

LAB34:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB35;

LAB38:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB36;

LAB37:    t16 = (t4 + 4);
    t10 = *((unsigned int *)t16);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 11, 0LL);

LAB41:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4808);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 11, t8, 11);
    t9 = ((char*)((ng6)));
    memset(t34, 0, 8);
    t16 = (t4 + 4);
    if (*((unsigned int *)t16) != 0)
        goto LAB43;

LAB42:    t30 = (t9 + 4);
    if (*((unsigned int *)t30) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t4) > *((unsigned int *)t9))
        goto LAB45;

LAB44:    *((unsigned int *)t34) = 1;

LAB45:    t32 = (t34 + 4);
    t10 = *((unsigned int *)t32);
    t11 = (~(t10));
    t12 = *((unsigned int *)t34);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB49:    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    goto LAB24;

LAB27:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB29;

LAB28:    *((unsigned int *)t34) = 1;
    goto LAB29;

LAB31:    xsi_set_current_line(74, ng0);
    t42 = (t0 + 4968);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_unary_minus(t37, 11, t44, 11);
    t47 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t47, t37, 0, 0, 11, 0LL);
    goto LAB33;

LAB35:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB37;

LAB36:    *((unsigned int *)t4) = 1;
    goto LAB37;

LAB39:    xsi_set_current_line(78, ng0);
    t30 = (t0 + 5128);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memset(t34, 0, 8);
    xsi_vlog_unsigned_unary_minus(t34, 11, t32, 11);
    t35 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t35, t34, 0, 0, 11, 0LL);
    goto LAB41;

LAB43:    t31 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB45;

LAB47:    xsi_set_current_line(82, ng0);
    t35 = ((char*)((ng5)));
    t36 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t36, t35, 0, 0, 8, 0LL);
    goto LAB49;

}


extern void work_m_00000000001931908554_0286164271_init()
{
	static char *pe[] = {(void *)Always_52_0};
	xsi_register_didat("work_m_00000000001931908554_0286164271", "isim/initTest_isim_beh.exe.sim/work/m_00000000001931908554_0286164271.didat");
	xsi_register_executes(pe);
}
