package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class R0 {

    /* renamed from: a  reason: collision with root package name */
    public int f3869a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f3870b;

    /* renamed from: c  reason: collision with root package name */
    public int f3871c;

    /* renamed from: d  reason: collision with root package name */
    public int f3872d;

    /* renamed from: e  reason: collision with root package name */
    public int f3873e;

    public final boolean a() {
        int i4 = this.f3869a;
        int i5 = 2;
        if ((i4 & 7) != 0) {
            int i6 = this.f3872d;
            int i7 = this.f3870b;
            if ((((i6 > i7 ? 1 : i6 == i7 ? 2 : 4) << 0) & i4) == 0) {
                return false;
            }
        }
        if ((i4 & 112) != 0) {
            int i8 = this.f3872d;
            int i9 = this.f3871c;
            if ((((i8 > i9 ? 1 : i8 == i9 ? 2 : 4) << 4) & i4) == 0) {
                return false;
            }
        }
        if ((i4 & 1792) != 0) {
            int i10 = this.f3873e;
            int i11 = this.f3870b;
            if ((((i10 > i11 ? 1 : i10 == i11 ? 2 : 4) << 8) & i4) == 0) {
                return false;
            }
        }
        if ((i4 & 28672) != 0) {
            int i12 = this.f3873e;
            int i13 = this.f3871c;
            if (i12 > i13) {
                i5 = 1;
            } else if (i12 != i13) {
                i5 = 4;
            }
            if (((i5 << 12) & i4) == 0) {
                return false;
            }
        }
        return true;
    }
}
