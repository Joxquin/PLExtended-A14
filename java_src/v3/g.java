package v3;

import kotlinx.coroutines.T;
import kotlinx.coroutines.internal.E;
/* loaded from: classes.dex */
public class g extends T {

    /* renamed from: f  reason: collision with root package name */
    public final b f12668f;

    public g(int i4, int i5, long j4, String schedulerName) {
        kotlin.jvm.internal.h.e(schedulerName, "schedulerName");
        this.f12668f = new b(i4, i5, j4, schedulerName);
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(kotlin.coroutines.i context, Runnable block) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(block, "block");
        b bVar = this.f12668f;
        E e4 = b.f12653n;
        bVar.b(block, m.f12679g, false);
    }
}
