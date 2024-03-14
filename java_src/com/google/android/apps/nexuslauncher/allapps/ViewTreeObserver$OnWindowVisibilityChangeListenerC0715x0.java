package com.google.android.apps.nexuslauncher.allapps;

import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import android.view.ViewTreeObserver;
import androidx.slice.Slice;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import java.util.ArrayList;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.x0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 implements ViewTreeObserver.OnWindowVisibilityChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final Uri f7247d;

    /* renamed from: e  reason: collision with root package name */
    public final b0.n f7248e;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f7249f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public boolean f7250g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7251h = false;

    /* renamed from: i  reason: collision with root package name */
    public Slice f7252i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f7253j;

    public ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0(C0719y0 c0719y0, Uri uri) {
        this.f7253j = c0719y0;
        this.f7247d = uri;
        this.f7248e = new b0.n(c0719y0);
        ((ActivityContext) c0719y0.f7271d).getAppsView().getViewTreeObserver().addOnWindowVisibilityChangeListener(this);
        if (c0719y0.f7266F) {
            a();
        } else {
            b();
        }
    }

    public final void a() {
        if (this.f7250g) {
            return;
        }
        this.f7250g = true;
        this.f7249f.clear();
        ((ActivityContext) this.f7253j.f7271d).getAppsView().getViewTreeObserver().removeOnWindowVisibilityChangeListener(this);
    }

    public final void b() {
        final boolean z4 = (this.f7250g || ((ActivityContext) this.f7253j.f7271d).getAppsView().getWindowVisibility() != 0 || this.f7249f.isEmpty()) ? false : true;
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.w0
            @Override // java.lang.Runnable
            public final void run() {
                ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 = ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.this;
                boolean z5 = z4;
                if (viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7251h != z5) {
                    viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7251h = z5;
                    try {
                        if (z5) {
                            viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7248e.b(viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7247d, Executors.MAIN_EXECUTOR, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0);
                            Executors.THREAD_POOL_EXECUTOR.execute(new RunnableC0664k0(1, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0));
                            return;
                        }
                        b0.n nVar = viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7248e;
                        Uri uri = viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0.f7247d;
                        synchronized (nVar.f4178a) {
                            b0.l lVar = (b0.l) nVar.f4178a.remove(new Pair(uri, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0));
                            if (lVar != null) {
                                b0.m mVar = lVar.f4177g;
                                mVar.f4179b.getContentResolver().unregisterContentObserver(lVar.f4176f);
                                if (lVar.f4174d) {
                                    mVar.c(lVar.f4171a);
                                    lVar.f4174d = false;
                                }
                            }
                        }
                    } catch (IllegalStateException e4) {
                        Log.e("SearchSessionManager", "Failed to register or unregister slice callback.", e4);
                    }
                }
            }
        });
    }

    public final void onWindowVisibilityChanged(int i4) {
        b();
    }
}
