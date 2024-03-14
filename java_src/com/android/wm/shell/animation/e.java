package com.android.wm.shell.animation;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final float f6261a;

    /* renamed from: b  reason: collision with root package name */
    public float f6262b;

    /* renamed from: c  reason: collision with root package name */
    public float f6263c;

    /* renamed from: d  reason: collision with root package name */
    public final float f6264d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e() {
        /*
            r3 = this;
            com.android.wm.shell.animation.e r0 = com.android.wm.shell.animation.m.f6302c
            float r1 = r0.f6261a
            float r2 = r0.f6262b
            float r0 = r0.f6263c
            r3.<init>(r1, r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.animation.e.<init>():void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return Float.compare(this.f6261a, eVar.f6261a) == 0 && Float.compare(this.f6262b, eVar.f6262b) == 0 && Float.compare(this.f6263c, eVar.f6263c) == 0 && Float.compare(this.f6264d, eVar.f6264d) == 0;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Float.hashCode(this.f6262b);
        int hashCode2 = Float.hashCode(this.f6263c);
        return Float.hashCode(this.f6264d) + ((hashCode2 + ((hashCode + (Float.hashCode(this.f6261a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        float f4 = this.f6262b;
        float f5 = this.f6263c;
        return "FlingConfig(friction=" + this.f6261a + ", min=" + f4 + ", max=" + f5 + ", startVelocity=" + this.f6264d + ")";
    }

    public e(float f4, float f5, float f6) {
        this.f6261a = f4;
        this.f6262b = f5;
        this.f6263c = f6;
        this.f6264d = 0.0f;
    }
}
