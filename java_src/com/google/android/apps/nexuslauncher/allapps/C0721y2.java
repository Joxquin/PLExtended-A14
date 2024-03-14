package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchSession;
import java.lang.ref.WeakReference;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.y2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0721y2 implements SearchSession.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f7295a;

    public C0721y2(g3 g3Var) {
        this.f7295a = new WeakReference(g3Var);
    }

    public final void onTargetsAvailable(List list) {
        SearchSession.Callback callback = (SearchSession.Callback) this.f7295a.get();
        if (callback != null) {
            callback.onTargetsAvailable(list);
        }
    }
}
