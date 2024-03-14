package com.android.wm.shell.animation;

import androidx.dynamicanimation.animation.s;
import androidx.dynamicanimation.animation.t;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final float f6273a;

    /* renamed from: b  reason: collision with root package name */
    public final float f6274b;

    /* renamed from: c  reason: collision with root package name */
    public float f6275c;

    /* renamed from: d  reason: collision with root package name */
    public float f6276d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g() {
        /*
            r2 = this;
            com.android.wm.shell.animation.g r0 = com.android.wm.shell.animation.m.f6301b
            float r1 = r0.f6273a
            float r0 = r0.f6274b
            r2.<init>(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.animation.g.<init>():void");
    }

    public final void a(s sVar) {
        t tVar = sVar.f3211x;
        if (tVar == null) {
            tVar = new t();
        }
        tVar.b(this.f6273a);
        tVar.a(this.f6274b);
        tVar.f3222i = this.f6276d;
        sVar.f3211x = tVar;
        float f4 = this.f6275c;
        if (f4 == 0.0f) {
            return;
        }
        sVar.f3194a = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return Float.compare(this.f6273a, gVar.f6273a) == 0 && Float.compare(this.f6274b, gVar.f6274b) == 0 && Float.compare(this.f6275c, gVar.f6275c) == 0 && Float.compare(this.f6276d, gVar.f6276d) == 0;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Float.hashCode(this.f6274b);
        int hashCode2 = Float.hashCode(this.f6275c);
        return Float.hashCode(this.f6276d) + ((hashCode2 + ((hashCode + (Float.hashCode(this.f6273a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        float f4 = this.f6275c;
        float f5 = this.f6276d;
        return "SpringConfig(stiffness=" + this.f6273a + ", dampingRatio=" + this.f6274b + ", startVelocity=" + f4 + ", finalPosition=" + f5 + ")";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(float f4, float f5) {
        this(f4, f5, 0.0f, -3.4028235E38f);
        WeakHashMap weakHashMap = m.f6300a;
    }

    public g(float f4, float f5, float f6, float f7) {
        this.f6273a = f4;
        this.f6274b = f5;
        this.f6275c = f6;
        this.f6276d = f7;
    }
}
