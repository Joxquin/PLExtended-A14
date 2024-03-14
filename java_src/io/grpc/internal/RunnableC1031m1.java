package io.grpc.internal;

import X2.AbstractC0123k;
import java.util.Collection;
import java.util.concurrent.ScheduledFuture;
/* renamed from: io.grpc.internal.m1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1031m1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10175d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1034n1 f10176e;

    public /* synthetic */ RunnableC1031m1(C1034n1 c1034n1, int i4) {
        this.f10175d = i4;
        this.f10176e = c1034n1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10175d) {
            case 0:
                X2.C a4 = this.f10176e.f10181k.a();
                try {
                    C1034n1 c1034n1 = this.f10176e;
                    AbstractC0123k h4 = c1034n1.f10184n.h(c1034n1.f10182l, c1034n1.f10183m);
                    this.f10176e.f10181k.c(a4);
                    C1034n1 c1034n12 = this.f10176e;
                    synchronized (c1034n12) {
                        try {
                            AbstractC0123k abstractC0123k = c1034n12.f9935f;
                            if (abstractC0123k == null) {
                                O2.m.l("realCall already set to %s", abstractC0123k, abstractC0123k == null);
                                ScheduledFuture scheduledFuture = c1034n12.f9930a;
                                if (scheduledFuture != null) {
                                    scheduledFuture.cancel(false);
                                }
                                c1034n12.f9935f = h4;
                                c1034n12.i();
                            }
                        } finally {
                        }
                    }
                    C1034n1 c1034n13 = this.f10176e;
                    c1034n13.f10184n.f10197g.f10340r.execute(new RunnableC1031m1(c1034n13, 1));
                    return;
                } catch (Throwable th) {
                    this.f10176e.f10181k.c(a4);
                    throw th;
                }
            default:
                C1034n1 c1034n14 = this.f10176e;
                Collection collection = c1034n14.f10184n.f10197g.f10296F;
                if (collection != null) {
                    collection.remove(c1034n14);
                    if (this.f10176e.f10184n.f10197g.f10296F.isEmpty()) {
                        C1048s1 c1048s1 = this.f10176e.f10184n.f10197g;
                        c1048s1.f10323e0.c(c1048s1.f10297G, false);
                        C1048s1 c1048s12 = this.f10176e.f10184n.f10197g;
                        c1048s12.f10296F = null;
                        if (c1048s12.f10301K.get()) {
                            this.f10176e.f10184n.f10197g.f10300J.a(C1048s1.f10286m0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
