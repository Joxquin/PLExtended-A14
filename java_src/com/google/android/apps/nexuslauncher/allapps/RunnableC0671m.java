package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0671m implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7120d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0625a1 f7121e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f7122f;

    public /* synthetic */ RunnableC0671m(C0625a1 c0625a1, Object obj, int i4) {
        this.f7120d = i4;
        this.f7121e = c0625a1;
        this.f7122f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7120d) {
            case 0:
                this.f7121e.e((Query) this.f7122f);
                return;
            case 1:
                this.f7121e.e((Query) this.f7122f);
                return;
            default:
                this.f7121e.f((List) this.f7122f);
                return;
        }
    }
}
