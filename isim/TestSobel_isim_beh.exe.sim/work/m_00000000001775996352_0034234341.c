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
static const char *ng0 = "D:/university/fpga/project/image_processing/sobel.v";
static int ng1[] = {0, 0};
static int ng2[] = {2, 0};
static int ng3[] = {8, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {1U, 0U};



static void Cont_28_0(char *t0)
{
    char t4[16];
    char t8[16];
    char t11[8];
    char t19[16];
    char t20[16];
    char t24[8];
    char t32[8];
    char t35[8];
    char t50[8];
    char t51[16];
    char t54[16];
    char t58[16];
    char t61[8];
    char t69[16];
    char t70[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t4, 33, t3, t6, 2, t7, 32, 1);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t9 = (t11 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 6);
    t15 = (t14 & 1);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 >> 6);
    t18 = (t17 & 1);
    *((unsigned int *)t9) = t18;
    xsi_vlog_logic_neg(t8, 33, t11, 1);
    xsi_vlog_unsigned_add(t19, 33, t4, 33, t8, 33);
    t21 = ((char*)((ng1)));
    t22 = (t0 + 1048U);
    t23 = *((char **)t22);
    memset(t24, 0, 8);
    t22 = (t24 + 4);
    t25 = (t23 + 4);
    t26 = *((unsigned int *)t23);
    t27 = (t26 >> 1);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 1);
    t31 = (t30 & 1);
    *((unsigned int *)t22) = t31;
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    t33 = (t35 + 4);
    t36 = (t34 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 7);
    t39 = (t38 & 1);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 >> 7);
    t42 = (t41 & 1);
    *((unsigned int *)t33) = t42;
    memset(t32, 0, 8);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (~(t44));
    t46 = *((unsigned int *)t35);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t43) == 0)
        goto LAB4;

LAB6:    t49 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t49) = 1;

LAB7:    memset(t50, 0, 8);
    xsi_vlog_unsigned_add(t50, 1, t24, 1, t32, 1);
    xsi_vlogtype_concat(t20, 33, 33, 2U, t50, 1, t21, 32);
    xsi_vlog_unsigned_add(t51, 33, t19, 33, t20, 33);
    t52 = (t0 + 1048U);
    t53 = *((char **)t52);
    t52 = (t0 + 1008U);
    t55 = (t52 + 72U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t54, 33, t53, t56, 2, t57, 32, 1);
    t59 = (t0 + 1048U);
    t60 = *((char **)t59);
    memset(t61, 0, 8);
    t59 = (t61 + 4);
    t62 = (t60 + 4);
    t63 = *((unsigned int *)t60);
    t64 = (t63 >> 8);
    t65 = (t64 & 1);
    *((unsigned int *)t61) = t65;
    t66 = *((unsigned int *)t62);
    t67 = (t66 >> 8);
    t68 = (t67 & 1);
    *((unsigned int *)t59) = t68;
    xsi_vlog_logic_neg(t58, 33, t61, 1);
    xsi_vlog_unsigned_add(t69, 33, t54, 33, t58, 33);
    xsi_vlog_unsigned_add(t70, 33, t51, 33, t69, 33);
    t71 = (t0 + 3616);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    xsi_vlog_bit_copy(t75, 0, t70, 0, 5);
    xsi_driver_vfirst_trans(t71, 0, 4);
    t76 = (t0 + 3504);
    *((int *)t76) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t32) = 1;
    goto LAB7;

}

static void Cont_29_1(char *t0)
{
    char t4[16];
    char t8[16];
    char t11[8];
    char t19[16];
    char t20[16];
    char t24[8];
    char t32[8];
    char t35[8];
    char t50[8];
    char t51[16];
    char t54[16];
    char t58[16];
    char t61[8];
    char t69[16];
    char t70[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t4, 33, t3, t6, 2, t7, 32, 1);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t9 = (t11 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 6);
    t15 = (t14 & 1);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 >> 6);
    t18 = (t17 & 1);
    *((unsigned int *)t9) = t18;
    xsi_vlog_logic_neg(t8, 33, t11, 1);
    xsi_vlog_unsigned_add(t19, 33, t4, 33, t8, 33);
    t21 = ((char*)((ng1)));
    t22 = (t0 + 1048U);
    t23 = *((char **)t22);
    memset(t24, 0, 8);
    t22 = (t24 + 4);
    t25 = (t23 + 4);
    t26 = *((unsigned int *)t23);
    t27 = (t26 >> 5);
    t28 = (t27 & 1);
    *((unsigned int *)t24) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 5);
    t31 = (t30 & 1);
    *((unsigned int *)t22) = t31;
    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    t33 = (t35 + 4);
    t36 = (t34 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 3);
    t39 = (t38 & 1);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 >> 3);
    t42 = (t41 & 1);
    *((unsigned int *)t33) = t42;
    memset(t32, 0, 8);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (~(t44));
    t46 = *((unsigned int *)t35);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t43) == 0)
        goto LAB4;

LAB6:    t49 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t49) = 1;

LAB7:    memset(t50, 0, 8);
    xsi_vlog_unsigned_add(t50, 1, t24, 1, t32, 1);
    xsi_vlogtype_concat(t20, 33, 33, 2U, t50, 1, t21, 32);
    xsi_vlog_unsigned_add(t51, 33, t19, 33, t20, 33);
    t52 = (t0 + 1048U);
    t53 = *((char **)t52);
    t52 = (t0 + 1008U);
    t55 = (t52 + 72U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t54, 33, t53, t56, 2, t57, 32, 1);
    t59 = (t0 + 1048U);
    t60 = *((char **)t59);
    memset(t61, 0, 8);
    t59 = (t61 + 4);
    t62 = (t60 + 4);
    t63 = *((unsigned int *)t60);
    t64 = (t63 >> 0);
    t65 = (t64 & 1);
    *((unsigned int *)t61) = t65;
    t66 = *((unsigned int *)t62);
    t67 = (t66 >> 0);
    t68 = (t67 & 1);
    *((unsigned int *)t59) = t68;
    xsi_vlog_logic_neg(t58, 33, t61, 1);
    xsi_vlog_unsigned_add(t69, 33, t54, 33, t58, 33);
    xsi_vlog_unsigned_add(t70, 33, t51, 33, t69, 33);
    t71 = (t0 + 3680);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    xsi_vlog_bit_copy(t75, 0, t70, 0, 5);
    xsi_driver_vfirst_trans(t71, 0, 4);
    t76 = (t0 + 3520);
    *((int *)t76) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t32) = 1;
    goto LAB7;

}

static void Cont_31_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char t9[8];
    char t24[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;

LAB0:    t1 = (t0 + 3184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    t6 = (t0 + 1528U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t2, 32, t7, 5);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t8);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t6 = (t5 + 4);
    t13 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB4;

LAB5:
LAB6:    t22 = ((char*)((ng2)));
    t23 = ((char*)((ng4)));
    memset(t24, 0, 8);
    xsi_vlog_signed_less(t24, 32, t22, 32, t23, 32);
    t26 = *((unsigned int *)t9);
    t27 = *((unsigned int *)t24);
    t28 = (t26 ^ t27);
    *((unsigned int *)t25) = t28;
    t29 = (t9 + 4);
    t30 = (t24 + 4);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t30);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB7;

LAB8:
LAB9:    memset(t4, 0, 8);
    t39 = (t25 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t25);
    t43 = (t42 & t41);
    t44 = (t43 & 4294967295U);
    if (t44 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t39) != 0)
        goto LAB12;

LAB13:    t46 = (t4 + 4);
    t47 = *((unsigned int *)t4);
    t48 = *((unsigned int *)t46);
    t49 = (t47 || t48);
    if (t49 > 0)
        goto LAB14;

LAB15:    t51 = *((unsigned int *)t4);
    t52 = (~(t51));
    t53 = *((unsigned int *)t46);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t46) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t4) > 0)
        goto LAB20;

LAB21:    memcpy(t3, t55, 8);

LAB22:    t56 = (t0 + 3744);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memset(t60, 0, 8);
    t61 = 1U;
    t62 = t61;
    t63 = (t3 + 4);
    t64 = *((unsigned int *)t3);
    t61 = (t61 & t64);
    t65 = *((unsigned int *)t63);
    t62 = (t62 & t65);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t67 | t61);
    t68 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t68 | t62);
    xsi_driver_vfirst_trans(t56, 0, 0);
    t69 = (t0 + 3536);
    *((int *)t69) = 1;

LAB1:    return;
LAB4:    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t9) = (t20 | t21);
    goto LAB6;

LAB7:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t37 | t38);
    goto LAB9;

LAB10:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t45 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB13;

LAB14:    t50 = ((char*)((ng5)));
    goto LAB15;

LAB16:    t55 = ((char*)((ng6)));
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t3, 1, t50, 1, t55, 1);
    goto LAB22;

LAB20:    memcpy(t3, t50, 8);
    goto LAB22;

}


extern void work_m_00000000001775996352_0034234341_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Cont_29_1,(void *)Cont_31_2};
	xsi_register_didat("work_m_00000000001775996352_0034234341", "isim/TestSobel_isim_beh.exe.sim/work/m_00000000001775996352_0034234341.didat");
	xsi_register_executes(pe);
}
