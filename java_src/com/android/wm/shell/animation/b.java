package com.android.wm.shell.animation;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final float f6259a;

    /* renamed from: b  reason: collision with root package name */
    public final float f6260b;

    public b(float f4, float f5) {
        this.f6259a = f4;
        this.f6260b = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Float.compare(this.f6259a, bVar.f6259a) == 0 && Float.compare(this.f6260b, bVar.f6260b) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.f6260b) + (Float.hashCode(this.f6259a) * 31);
    }

    public final String toString() {
        return "AnimationUpdate(value=" + this.f6259a + ", velocity=" + this.f6260b + ")";
    }
}
