package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
import com.google.protobuf.InterfaceC0774q0;
/* renamed from: f2.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0923u extends com.google.protobuf.E implements InterfaceC0774q0 {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0923u() {
        /*
            r1 = this;
            f2.w r0 = f2.C0925w.g()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f2.C0923u.<init>():void");
    }

    public final void a(int i4, boolean z4) {
        copyOnWrite();
        C0925w.a((C0925w) this.instance).put(Integer.valueOf(i4), Boolean.valueOf(z4));
    }

    public final void b(OneSearchEntryPoint oneSearchEntryPoint) {
        copyOnWrite();
        C0925w.b((C0925w) this.instance, oneSearchEntryPoint);
    }

    public final void c(boolean z4) {
        copyOnWrite();
        C0925w.c((C0925w) this.instance, z4);
    }

    public final void d(String str) {
        copyOnWrite();
        C0925w.d((C0925w) this.instance, str);
    }

    public final void e(long j4) {
        copyOnWrite();
        C0925w.e((C0925w) this.instance, j4);
    }

    public final void f() {
        copyOnWrite();
        C0925w.f((C0925w) this.instance);
    }
}
