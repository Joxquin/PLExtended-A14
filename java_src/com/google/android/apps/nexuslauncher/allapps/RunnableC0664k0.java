package com.google.android.apps.nexuslauncher.allapps;

import android.util.Log;
import com.android.launcher3.util.Executors;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0664k0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7106d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f7107e;

    public /* synthetic */ RunnableC0664k0(int i4, Object obj) {
        this.f7106d = i4;
        this.f7107e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7106d) {
            case 0:
                T0 t02 = (T0) this.f7107e;
                if (t02.f6873f != null) {
                    Log.d("OneSearchSuggestProvider", "Shut down the binder channel");
                    t02.f6873f.i();
                }
                W w4 = t02.f6875h;
                w4.f6962c = false;
                w4.f6963d = 0;
                return;
            default:
                ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 = (ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) this.f7107e;
                viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.getClass();
                try {
                    Executors.MAIN_EXECUTOR.execute(new X(5, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7248e.d(viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7247d)));
                    return;
                } catch (Exception e4) {
                    Log.d("SearchSessionManager", "Error fetching slice", e4);
                    return;
                }
        }
    }
}
