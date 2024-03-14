package q3;
/* loaded from: classes.dex */
public class a implements Iterable {

    /* renamed from: d  reason: collision with root package name */
    public final int f12053d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12054e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12055f;

    public a(int i4, int i5, int i6) {
        if (i6 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i6 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f12053d = i4;
        if (i6 > 0) {
            if (i4 < i5) {
                int i7 = i5 % i6;
                int i8 = i4 % i6;
                int i9 = ((i7 < 0 ? i7 + i6 : i7) - (i8 < 0 ? i8 + i6 : i8)) % i6;
                i5 -= i9 < 0 ? i9 + i6 : i9;
            }
        } else if (i6 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            if (i4 > i5) {
                int i10 = -i6;
                int i11 = i4 % i10;
                int i12 = i5 % i10;
                int i13 = ((i11 < 0 ? i11 + i10 : i11) - (i12 < 0 ? i12 + i10 : i12)) % i10;
                i5 += i13 < 0 ? i13 + i10 : i13;
            }
        }
        this.f12054e = i5;
        this.f12055f = i6;
    }

    @Override // java.lang.Iterable
    /* renamed from: h */
    public final b iterator() {
        return new b(this.f12053d, this.f12054e, this.f12055f);
    }
}
