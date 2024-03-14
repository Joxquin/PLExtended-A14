package com.android.wm.shell.animation;

import androidx.dynamicanimation.animation.q;
/* loaded from: classes.dex */
public final class i implements androidx.dynamicanimation.animation.k {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l f6277a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f6278b;

    public i(l lVar, q qVar) {
        this.f6277a = lVar;
        this.f6278b = qVar;
    }

    @Override // androidx.dynamicanimation.animation.k
    public final void a(float f4, float f5) {
        l lVar = this.f6277a;
        int size = lVar.f6297j.size();
        for (int i4 = 0; i4 < size; i4++) {
            f fVar = (f) lVar.f6297j.get(i4);
            fVar.getClass();
            q property = this.f6278b;
            kotlin.jvm.internal.h.e(property, "property");
            if (fVar.f6266b.contains(property)) {
                fVar.f6271g.put(property, new b(f4, f5));
                fVar.a();
            }
        }
    }
}
