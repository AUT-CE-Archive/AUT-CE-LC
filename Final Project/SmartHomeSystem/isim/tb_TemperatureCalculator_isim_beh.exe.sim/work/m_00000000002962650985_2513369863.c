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
static const char *ng0 = "F:/SmartHomeSystem/FA.v";



static void Cont_28_0(char *t0)
{
    char t5[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t19);
    t23 = (t21 ^ t22);
    *((unsigned int *)t20) = t23;
    t18 = (t5 + 4);
    t24 = (t19 + 4);
    t25 = (t20 + 4);
    t26 = *((unsigned int *)t18);
    t27 = *((unsigned int *)t24);
    t28 = (t26 | t27);
    *((unsigned int *)t25) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB7;

LAB8:
LAB9:    t33 = (t0 + 3512);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memset(t37, 0, 8);
    t38 = 1U;
    t39 = t38;
    t40 = (t20 + 4);
    t41 = *((unsigned int *)t20);
    t38 = (t38 & t41);
    t42 = *((unsigned int *)t40);
    t39 = (t39 & t42);
    t43 = (t37 + 4);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t44 | t38);
    t45 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t45 | t39);
    xsi_driver_vfirst_trans(t33, 0, 0);
    t46 = (t0 + 3416);
    *((int *)t46) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    goto LAB6;

LAB7:    t31 = *((unsigned int *)t20);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t20) = (t31 | t32);
    goto LAB9;

}

static void Cont_28_1(char *t0)
{
    char t6[8];
    char t33[8];
    char t68[8];
    char t99[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t5);
    t9 = (t7 | t8);
    *((unsigned int *)t6) = t9;
    t2 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t10);
    t14 = (t12 | t13);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t11);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB4;

LAB5:
LAB6:    t34 = *((unsigned int *)t3);
    t35 = *((unsigned int *)t6);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t37 = (t3 + 4);
    t38 = (t6 + 4);
    t39 = (t33 + 4);
    t40 = *((unsigned int *)t37);
    t41 = *((unsigned int *)t38);
    t42 = (t40 | t41);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB7;

LAB8:
LAB9:    t65 = (t0 + 1208U);
    t66 = *((char **)t65);
    t65 = (t0 + 1368U);
    t67 = *((char **)t65);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 & t70);
    *((unsigned int *)t68) = t71;
    t65 = (t66 + 4);
    t72 = (t67 + 4);
    t73 = (t68 + 4);
    t74 = *((unsigned int *)t65);
    t75 = *((unsigned int *)t72);
    t76 = (t74 | t75);
    *((unsigned int *)t73) = t76;
    t77 = *((unsigned int *)t73);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB10;

LAB11:
LAB12:    t100 = *((unsigned int *)t33);
    t101 = *((unsigned int *)t68);
    t102 = (t100 | t101);
    *((unsigned int *)t99) = t102;
    t103 = (t33 + 4);
    t104 = (t68 + 4);
    t105 = (t99 + 4);
    t106 = *((unsigned int *)t103);
    t107 = *((unsigned int *)t104);
    t108 = (t106 | t107);
    *((unsigned int *)t105) = t108;
    t109 = *((unsigned int *)t105);
    t110 = (t109 != 0);
    if (t110 == 1)
        goto LAB13;

LAB14:
LAB15:    t127 = (t0 + 3576);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    t130 = (t129 + 56U);
    t131 = *((char **)t130);
    memset(t131, 0, 8);
    t132 = 1U;
    t133 = t132;
    t134 = (t99 + 4);
    t135 = *((unsigned int *)t99);
    t132 = (t132 & t135);
    t136 = *((unsigned int *)t134);
    t133 = (t133 & t136);
    t137 = (t131 + 4);
    t138 = *((unsigned int *)t131);
    *((unsigned int *)t131) = (t138 | t132);
    t139 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t139 | t133);
    xsi_driver_vfirst_trans(t127, 0, 0);
    t140 = (t0 + 3432);
    *((int *)t140) = 1;

LAB1:    return;
LAB4:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t6) = (t17 | t18);
    t19 = (t4 + 4);
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = *((unsigned int *)t20);
    t26 = (~(t25));
    t27 = *((unsigned int *)t5);
    t28 = (t27 & t26);
    t29 = (~(t24));
    t30 = (~(t28));
    t31 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t31 & t29);
    t32 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t32 & t30);
    goto LAB6;

LAB7:    t45 = *((unsigned int *)t33);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t33) = (t45 | t46);
    t47 = (t3 + 4);
    t48 = (t6 + 4);
    t49 = *((unsigned int *)t3);
    t50 = (~(t49));
    t51 = *((unsigned int *)t47);
    t52 = (~(t51));
    t53 = *((unsigned int *)t6);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (~(t55));
    t57 = (t50 & t52);
    t58 = (t54 & t56);
    t59 = (~(t57));
    t60 = (~(t58));
    t61 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t61 & t59);
    t62 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t62 & t60);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    t64 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t64 & t60);
    goto LAB9;

LAB10:    t79 = *((unsigned int *)t68);
    t80 = *((unsigned int *)t73);
    *((unsigned int *)t68) = (t79 | t80);
    t81 = (t66 + 4);
    t82 = (t67 + 4);
    t83 = *((unsigned int *)t66);
    t84 = (~(t83));
    t85 = *((unsigned int *)t81);
    t86 = (~(t85));
    t87 = *((unsigned int *)t67);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (~(t89));
    t91 = (t84 & t86);
    t92 = (t88 & t90);
    t93 = (~(t91));
    t94 = (~(t92));
    t95 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t95 & t93);
    t96 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t96 & t94);
    t97 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t97 & t93);
    t98 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t98 & t94);
    goto LAB12;

LAB13:    t111 = *((unsigned int *)t99);
    t112 = *((unsigned int *)t105);
    *((unsigned int *)t99) = (t111 | t112);
    t113 = (t33 + 4);
    t114 = (t68 + 4);
    t115 = *((unsigned int *)t113);
    t116 = (~(t115));
    t117 = *((unsigned int *)t33);
    t118 = (t117 & t116);
    t119 = *((unsigned int *)t114);
    t120 = (~(t119));
    t121 = *((unsigned int *)t68);
    t122 = (t121 & t120);
    t123 = (~(t118));
    t124 = (~(t122));
    t125 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t125 & t123);
    t126 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t126 & t124);
    goto LAB15;

}


extern void work_m_00000000002962650985_2513369863_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Cont_28_1};
	xsi_register_didat("work_m_00000000002962650985_2513369863", "isim/tb_TemperatureCalculator_isim_beh.exe.sim/work/m_00000000002962650985_2513369863.didat");
	xsi_register_executes(pe);
}
