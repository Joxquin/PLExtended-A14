package androidx.fragment.app;

import android.util.Log;
/* renamed from: androidx.fragment.app.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0205i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0215n f3418d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ S0 f3419e;

    public /* synthetic */ RunnableC0205i(C0215n c0215n, S0 s02) {
        this.f3418d = c0215n;
        this.f3419e = s02;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0215n transitionInfo = this.f3418d;
        S0 operation = this.f3419e;
        kotlin.jvm.internal.h.e(transitionInfo, "$transitionInfo");
        kotlin.jvm.internal.h.e(operation, "$operation");
        transitionInfo.a();
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Transition for operation " + operation + " has completed");
        }
    }
}
