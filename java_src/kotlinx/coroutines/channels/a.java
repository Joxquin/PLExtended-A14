package kotlinx.coroutines.channels;

import kotlinx.coroutines.C1232h;
import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.D;
import kotlinx.coroutines.internal.E;
import kotlinx.coroutines.w0;
/* loaded from: classes.dex */
public final class a implements g, w0 {

    /* renamed from: d  reason: collision with root package name */
    public Object f11339d = d.f11368p;

    /* renamed from: e  reason: collision with root package name */
    public C1232h f11340e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ c f11341f;

    public a(c cVar) {
        this.f11341f = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x011f, code lost:
        if (r2 != null) goto L62;
     */
    @Override // kotlinx.coroutines.channels.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.c r17) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.a.a(kotlin.coroutines.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.w0
    public final void b(B b4, int i4) {
        C1232h c1232h = this.f11340e;
        if (c1232h != null) {
            c1232h.b(b4, i4);
        }
    }

    @Override // kotlinx.coroutines.channels.g
    public final Object next() {
        Object obj = this.f11339d;
        E e4 = d.f11368p;
        if (obj != e4) {
            this.f11339d = e4;
            if (obj != d.f11364l) {
                return obj;
            }
            Throwable k4 = this.f11341f.k();
            if (k4 == null) {
                k4 = new ClosedReceiveChannelException("Channel was closed");
            }
            int i4 = D.f11442a;
            throw k4;
        }
        throw new IllegalStateException("`hasNext()` has not been invoked".toString());
    }
}
