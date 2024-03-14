package androidx.fragment.app;

import java.util.ArrayList;
/* renamed from: androidx.fragment.app.o0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0218o0 implements InterfaceC0216n0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f3443a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3444b = 1;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC0220p0 f3445c;

    public C0218o0(AbstractC0220p0 abstractC0220p0, int i4) {
        this.f3445c = abstractC0220p0;
        this.f3443a = i4;
    }

    @Override // androidx.fragment.app.InterfaceC0216n0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        K k4 = this.f3445c.f3487x;
        if (k4 == null || this.f3443a >= 0 || !k4.getChildFragmentManager().O()) {
            return this.f3445c.Q(arrayList, arrayList2, null, this.f3443a, this.f3444b);
        }
        return false;
    }
}
