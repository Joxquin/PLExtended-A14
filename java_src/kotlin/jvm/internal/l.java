package kotlin.jvm.internal;

import j.C1080K;
import m3.m;
import m3.n;
import m3.o;
import m3.p;
import m3.q;
import m3.r;
import m3.s;
import m3.t;
import m3.u;
import m3.v;
import m3.w;
/* loaded from: classes.dex */
public final class l {
    public static void a(int i4, Object obj) {
        if (obj != null) {
            boolean z4 = false;
            if (obj instanceof e3.b) {
                if ((obj instanceof g ? ((g) obj).getArity() : obj instanceof m3.a ? 0 : obj instanceof m3.l ? 1 : obj instanceof p ? 2 : obj instanceof q ? 3 : obj instanceof r ? 4 : obj instanceof s ? 5 : obj instanceof t ? 6 : obj instanceof u ? 7 : obj instanceof v ? 8 : obj instanceof w ? 9 : obj instanceof m3.b ? 10 : obj instanceof m3.c ? 11 : obj instanceof m3.d ? 12 : obj instanceof m3.e ? 13 : obj instanceof m3.f ? 14 : obj instanceof m3.g ? 15 : obj instanceof m3.h ? 16 : obj instanceof m3.i ? 17 : obj instanceof m3.j ? 18 : obj instanceof m3.k ? 19 : obj instanceof m ? 20 : obj instanceof n ? 21 : obj instanceof o ? 22 : -1) == i4) {
                    z4 = true;
                }
            }
            if (z4) {
                return;
            }
            String a4 = C1080K.a("kotlin.jvm.functions.Function", i4);
            ClassCastException classCastException = new ClassCastException(obj.getClass().getName() + " cannot be cast to " + a4);
            h.f(l.class.getName(), classCastException);
            throw classCastException;
        }
    }
}
