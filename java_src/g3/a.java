package g3;

import kotlin.coroutines.i;
/* loaded from: classes.dex */
public final class a implements kotlin.coroutines.c {

    /* renamed from: d  reason: collision with root package name */
    public static final a f9480d = new a();

    @Override // kotlin.coroutines.c
    public final i getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
