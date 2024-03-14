package com.android.quickstep;

import android.content.Intent;
import android.graphics.Region;
import android.os.Binder;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class T1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5525d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Binder f5526e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5527f;

    public /* synthetic */ T1(Binder binder, Object obj, int i4) {
        this.f5525d = i4;
        this.f5526e = binder;
        this.f5527f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5525d) {
            case 0:
                TouchInteractionService.AnonymousClass1.a((TouchInteractionService.AnonymousClass1) this.f5526e, (Intent) this.f5527f);
                return;
            case 1:
                TouchInteractionService.TISBinder.n((TouchInteractionService.TISBinder) this.f5526e, (Region) this.f5527f);
                return;
            default:
                TouchInteractionService.TISBinder.k((TouchInteractionService.TISBinder) this.f5526e, (Consumer) this.f5527f);
                return;
        }
    }
}
