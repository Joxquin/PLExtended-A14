package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.Iterator;
/* renamed from: kotlinx.coroutines.internal.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1238e {

    /* renamed from: a  reason: collision with root package name */
    public static final Collection f11463a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.sequences.a] */
    static {
        Iterator a4 = C1237d.a();
        kotlin.jvm.internal.h.d(a4, "load(\n    CoroutineExcep….classLoader\n).iterator()");
        kotlin.sequences.m mVar = new kotlin.sequences.m(a4);
        if (!(mVar instanceof kotlin.sequences.a)) {
            mVar = new kotlin.sequences.a(mVar);
        }
        f11463a = kotlin.sequences.j.c(mVar);
    }
}
