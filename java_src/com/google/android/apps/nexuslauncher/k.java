package com.google.android.apps.nexuslauncher;

import android.content.Context;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7365d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ u f7366e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f7367f;

    public /* synthetic */ k(Object obj, u uVar, int i4) {
        this.f7365d = i4;
        this.f7367f = obj;
        this.f7366e = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7365d) {
            case 0:
                ((Context) this.f7367f).getContentResolver().registerContentObserver(Settings.Secure.getUriFor("selected_search_engine"), true, this.f7366e.f7620j);
                return;
            default:
                if (kotlin.jvm.internal.h.a(((p) this.f7367f).f7503a, this.f7366e.f7619i.f7503a) && kotlin.jvm.internal.h.a(((p) this.f7367f).f7504b, this.f7366e.f7619i.f7504b)) {
                    return;
                }
                u uVar = this.f7366e;
                uVar.f7619i = (p) this.f7367f;
                Iterator it = ((ArrayList) uVar.f7622l).iterator();
                while (it.hasNext()) {
                    ((m) it.next()).c(uVar.f7619i);
                }
                return;
        }
    }
}
