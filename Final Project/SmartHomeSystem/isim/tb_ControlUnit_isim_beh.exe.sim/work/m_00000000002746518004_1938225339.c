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
static const char *ng0 = "C:/Users/ipchi/Desktop/SmartHomeSystem/ControlUnit.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {7U, 0U};
static unsigned int ng8[] = {4U, 0U};



static void Always_51_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4944);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 1864U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(60, ng0);

LAB16:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3704);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB17:    t6 = ((char*)((ng3)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t6, 3);
    if (t31 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng4)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng5)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng8)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng6)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng7)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB28;

LAB29:
LAB30:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(54, ng0);

LAB15:    xsi_set_current_line(55, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 3384);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 35);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB14;

LAB18:    xsi_set_current_line(62, ng0);

LAB31:    xsi_set_current_line(63, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 3544);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2184U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB32;

LAB33:
LAB34:    goto LAB30;

LAB20:    xsi_set_current_line(66, ng0);

LAB35:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 2184U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t3) == 0)
        goto LAB36;

LAB38:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB39:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB41;

LAB40:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB47:
LAB44:    goto LAB30;

LAB22:    xsi_set_current_line(78, ng0);

LAB52:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 2184U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t3) == 0)
        goto LAB53;

LAB55:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB56:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB58;

LAB57:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB64:
LAB61:    goto LAB30;

LAB24:    xsi_set_current_line(88, ng0);

LAB66:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 2184U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB70;

LAB68:    if (*((unsigned int *)t3) == 0)
        goto LAB67;

LAB69:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB70:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB72;

LAB71:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB73;

LAB74:    xsi_set_current_line(91, ng0);

LAB76:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2824U);
    t3 = *((char **)t2);
    t2 = (t0 + 3384);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 35);

LAB75:    goto LAB30;

LAB26:    xsi_set_current_line(95, ng0);

LAB77:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 2184U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB81;

LAB79:    if (*((unsigned int *)t3) == 0)
        goto LAB78;

LAB80:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB81:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB83;

LAB82:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB84;

LAB85:
LAB86:    goto LAB30;

LAB28:    xsi_set_current_line(99, ng0);

LAB87:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 2344U);
    t6 = *((char **)t3);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB88;

LAB89:
LAB90:    goto LAB30;

LAB32:    xsi_set_current_line(64, ng0);
    t6 = ((char*)((ng4)));
    t12 = (t0 + 3704);
    xsi_vlogvar_assign_value(t12, t6, 0, 0, 3);
    goto LAB34;

LAB36:    *((unsigned int *)t4) = 1;
    goto LAB39;

LAB41:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB40;

LAB42:    xsi_set_current_line(67, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 3704);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB44;

LAB45:    xsi_set_current_line(69, ng0);

LAB48:    xsi_set_current_line(70, ng0);
    t6 = (t0 + 2984U);
    t12 = *((char **)t6);
    t6 = (t0 + 3544);
    xsi_vlogvar_assign_value(t6, t12, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB51:    goto LAB47;

LAB49:    xsi_set_current_line(72, ng0);
    t13 = ((char*)((ng5)));
    t14 = (t0 + 3704);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 3);
    goto LAB51;

LAB53:    *((unsigned int *)t4) = 1;
    goto LAB56;

LAB58:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB57;

LAB59:    xsi_set_current_line(79, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 3704);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB61;

LAB62:    xsi_set_current_line(81, ng0);

LAB65:    xsi_set_current_line(83, ng0);
    t6 = (t0 + 2824U);
    t12 = *((char **)t6);
    t6 = (t0 + 3384);
    xsi_vlogvar_assign_value(t6, t12, 0, 0, 35);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB64;

LAB67:    *((unsigned int *)t4) = 1;
    goto LAB70;

LAB72:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB71;

LAB73:    xsi_set_current_line(89, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 3704);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB75;

LAB78:    *((unsigned int *)t4) = 1;
    goto LAB81;

LAB83:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB82;

LAB84:    xsi_set_current_line(97, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 3704);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB86;

LAB88:    xsi_set_current_line(101, ng0);

LAB91:    xsi_set_current_line(102, ng0);
    t12 = (t0 + 3544);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t23 = (t14 + 4);
    t15 = *((unsigned int *)t23);
    t16 = (~(t15));
    t17 = *((unsigned int *)t14);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB92;

LAB93:    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB94:    goto LAB90;

LAB92:    xsi_set_current_line(102, ng0);
    t29 = ((char*)((ng5)));
    t30 = (t0 + 3704);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB94;

}


extern void work_m_00000000002746518004_1938225339_init()
{
	static char *pe[] = {(void *)Always_51_0};
	xsi_register_didat("work_m_00000000002746518004_1938225339", "isim/tb_ControlUnit_isim_beh.exe.sim/work/m_00000000002746518004_1938225339.didat");
	xsi_register_executes(pe);
}
