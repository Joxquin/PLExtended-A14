package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.w;
/* loaded from: classes.dex */
public final class m extends c {

    /* renamed from: o  reason: collision with root package name */
    public final BufferOverflow f11380o;

    public m(int i4, BufferOverflow bufferOverflow, m3.l lVar) {
        super(i4, lVar);
        this.f11380o = bufferOverflow;
        if (!(bufferOverflow != BufferOverflow.SUSPEND)) {
            throw new IllegalArgumentException(E.c.a("This implementation does not support suspension for senders, use ", kotlin.jvm.internal.j.a(c.class).b(), " instead").toString());
        }
        if (i4 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i4 + " was specified").toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ec, code lost:
        return e3.f.f9037a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object C(java.lang.Object r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.m.C(java.lang.Object, boolean):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.c, kotlinx.coroutines.channels.s
    public final Object p(Object obj) {
        return C(obj, false);
    }

    @Override // kotlinx.coroutines.channels.c, kotlinx.coroutines.channels.s
    public final Object q(Object obj, kotlin.coroutines.c cVar) {
        UndeliveredElementException c4;
        Object C3 = C(obj, true);
        boolean z4 = C3 instanceof h;
        if (z4) {
            if (z4) {
                h hVar = (h) C3;
            }
            m3.l lVar = this.f11343e;
            if (lVar == null || (c4 = w.c(lVar, obj, null)) == null) {
                throw l();
            }
            e3.a.a(c4, l());
            throw c4;
        }
        return e3.f.f9037a;
    }

    @Override // kotlinx.coroutines.channels.c
    public final boolean t() {
        return this.f11380o == BufferOverflow.DROP_OLDEST;
    }
}
