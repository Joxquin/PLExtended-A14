package x1;

import android.os.Trace;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
/* renamed from: x1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1457a implements InterfaceC1405d {

    /* renamed from: d  reason: collision with root package name */
    public final String f12834d;

    public C1457a(String tracePrefix) {
        h.e(tracePrefix, "tracePrefix");
        this.f12834d = tracePrefix.concat("#FoldUnfoldTransitionInProgress");
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionFinished() {
        Trace.endAsyncSection(this.f12834d, 0);
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionProgress(float f4) {
        Trace.setCounter(this.f12834d, f4 * 100);
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionStarted() {
        Trace.beginAsyncSection(this.f12834d, 0);
    }
}
