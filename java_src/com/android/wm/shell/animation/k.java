package com.android.wm.shell.animation;

import android.util.ArrayMap;
import androidx.dynamicanimation.animation.q;
import androidx.dynamicanimation.animation.s;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class k implements d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ q f6282a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ float f6283b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ float f6284c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f6285d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ l f6286e;

    public k(q qVar, float f4, float f5, g gVar, l lVar) {
        this.f6282a = qVar;
        this.f6283b = f4;
        this.f6284c = f5;
        this.f6285d = gVar;
        this.f6286e = lVar;
    }

    @Override // com.android.wm.shell.animation.d
    public final void a(Object obj, q qVar, boolean z4, boolean z5, float f4, float f5, boolean z6) {
        q qVar2 = this.f6282a;
        if (kotlin.jvm.internal.h.a(qVar, qVar2) && z4 && !z5) {
            boolean z7 = Math.abs(f5) > 0.0f;
            float f6 = this.f6283b;
            int i4 = (f6 > f4 ? 1 : (f6 == f4 ? 0 : -1));
            float f7 = this.f6284c;
            boolean z8 = !(i4 <= 0 && f4 <= f7);
            if (z7 || z8) {
                g gVar = this.f6285d;
                gVar.f6275c = f5;
                float f8 = gVar.f6276d;
                WeakHashMap weakHashMap = m.f6300a;
                if (f8 == -3.4028235E38f) {
                    if (z7) {
                        if (f5 >= 0.0f) {
                            f6 = f7;
                        }
                        gVar.f6276d = f6;
                    } else if (z8) {
                        if (f4 >= f6) {
                            f6 = f7;
                        }
                        gVar.f6276d = f6;
                    }
                }
                l lVar = this.f6286e;
                ArrayMap arrayMap = lVar.f6289b;
                Object obj2 = arrayMap.get(qVar2);
                Object obj3 = obj2;
                if (obj2 == null) {
                    s sVar = new s(qVar2, obj);
                    lVar.c(sVar, qVar2);
                    arrayMap.put(qVar2, sVar);
                    obj3 = sVar;
                }
                s sVar2 = (s) obj3;
                gVar.a(sVar2);
                sVar2.h();
            }
        }
    }
}
