package androidx.slice;

import i0.e;
/* loaded from: classes.dex */
public final class SliceSpec implements e {

    /* renamed from: a  reason: collision with root package name */
    public String f4071a;

    /* renamed from: b  reason: collision with root package name */
    public int f4072b;

    public SliceSpec() {
        this.f4072b = 1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SliceSpec) {
            SliceSpec sliceSpec = (SliceSpec) obj;
            return this.f4071a.equals(sliceSpec.f4071a) && this.f4072b == sliceSpec.f4072b;
        }
        return false;
    }

    public final int hashCode() {
        return this.f4071a.hashCode() + this.f4072b;
    }

    public final String toString() {
        return String.format("SliceSpec{%s,%d}", this.f4071a, Integer.valueOf(this.f4072b));
    }

    public SliceSpec(String str, int i4) {
        this.f4071a = str;
        this.f4072b = i4;
    }
}
