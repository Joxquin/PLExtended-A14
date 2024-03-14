package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.s;
/* loaded from: classes.dex */
public final class f implements kotlinx.coroutines.flow.e {

    /* renamed from: a  reason: collision with root package name */
    public final s f11415a;

    public f(s channel) {
        kotlin.jvm.internal.h.e(channel, "channel");
        this.f11415a = channel;
    }

    @Override // kotlinx.coroutines.flow.e
    public final Object emit(Object obj, kotlin.coroutines.c cVar) {
        Object q4 = this.f11415a.q(obj, cVar);
        return q4 == CoroutineSingletons.COROUTINE_SUSPENDED ? q4 : e3.f.f9037a;
    }
}
