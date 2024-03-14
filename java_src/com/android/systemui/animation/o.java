package com.android.systemui.animation;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final long f6098a;

    /* renamed from: b  reason: collision with root package name */
    public final long f6099b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6100c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6101d;

    /* renamed from: e  reason: collision with root package name */
    public final long f6102e;

    public o(long j4, long j5, long j6, long j7, long j8) {
        this.f6098a = j4;
        this.f6099b = j5;
        this.f6100c = j6;
        this.f6101d = j7;
        this.f6102e = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f6098a == oVar.f6098a && this.f6099b == oVar.f6099b && this.f6100c == oVar.f6100c && this.f6101d == oVar.f6101d && this.f6102e == oVar.f6102e;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f6099b);
        int hashCode2 = Long.hashCode(this.f6100c);
        int hashCode3 = Long.hashCode(this.f6101d);
        return Long.hashCode(this.f6102e) + ((hashCode3 + ((hashCode2 + ((hashCode + (Long.hashCode(this.f6098a) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Timings(totalDuration=" + this.f6098a + ", contentBeforeFadeOutDelay=" + this.f6099b + ", contentBeforeFadeOutDuration=" + this.f6100c + ", contentAfterFadeInDelay=" + this.f6101d + ", contentAfterFadeInDuration=" + this.f6102e + ")";
    }
}
