package x3;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f12908a;

    /* renamed from: b  reason: collision with root package name */
    public int f12909b;

    /* renamed from: c  reason: collision with root package name */
    public int f12910c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f12911d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12912e;

    /* renamed from: f  reason: collision with root package name */
    public l f12913f;

    /* renamed from: g  reason: collision with root package name */
    public l f12914g;

    public l() {
        this.f12908a = new byte[8192];
        this.f12912e = true;
        this.f12911d = false;
    }

    public final l a() {
        l lVar = this.f12913f;
        if (lVar == this) {
            lVar = null;
        }
        l lVar2 = this.f12914g;
        kotlin.jvm.internal.h.b(lVar2);
        lVar2.f12913f = this.f12913f;
        l lVar3 = this.f12913f;
        kotlin.jvm.internal.h.b(lVar3);
        lVar3.f12914g = this.f12914g;
        this.f12913f = null;
        this.f12914g = null;
        return lVar;
    }

    public final void b(l lVar) {
        lVar.f12914g = this;
        lVar.f12913f = this.f12913f;
        l lVar2 = this.f12913f;
        kotlin.jvm.internal.h.b(lVar2);
        lVar2.f12914g = lVar;
        this.f12913f = lVar;
    }

    public final l c() {
        this.f12911d = true;
        return new l(this.f12908a, this.f12909b, this.f12910c, true);
    }

    public final void d(l lVar, int i4) {
        if (!lVar.f12912e) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i5 = lVar.f12910c;
        int i6 = i5 + i4;
        byte[] bArr = lVar.f12908a;
        if (i6 > 8192) {
            if (lVar.f12911d) {
                throw new IllegalArgumentException();
            }
            int i7 = lVar.f12909b;
            if (i6 - i7 > 8192) {
                throw new IllegalArgumentException();
            }
            kotlin.collections.m.b(0, i7, i5, bArr, bArr);
            lVar.f12910c -= lVar.f12909b;
            lVar.f12909b = 0;
        }
        int i8 = lVar.f12910c;
        int i9 = this.f12909b;
        kotlin.collections.m.b(i8, i9, i9 + i4, this.f12908a, bArr);
        lVar.f12910c += i4;
        this.f12909b += i4;
    }

    public l(byte[] data, int i4, int i5, boolean z4) {
        kotlin.jvm.internal.h.e(data, "data");
        this.f12908a = data;
        this.f12909b = i4;
        this.f12910c = i5;
        this.f12911d = z4;
        this.f12912e = false;
    }
}
