package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.util.SafeCloseable;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0640e0 implements SafeCloseable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 f7032d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ androidx.lifecycle.z f7033e;

    public /* synthetic */ C0640e0(ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0, C0684p0 c0684p0) {
        this.f7032d = viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0;
        this.f7033e = c0684p0;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 = this.f7032d;
        viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7249f.remove(this.f7033e);
        viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.b();
    }
}
