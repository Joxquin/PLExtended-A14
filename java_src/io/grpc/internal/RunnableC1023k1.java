package io.grpc.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: io.grpc.internal.k1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1023k1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10156d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1037o1 f10157e;

    public /* synthetic */ RunnableC1023k1(C1037o1 c1037o1, int i4) {
        this.f10156d = i4;
        this.f10157e = c1037o1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        switch (this.f10156d) {
            case 0:
                C1037o1 c1037o1 = this.f10157e;
                if (c1037o1.f10197g.f10296F == null) {
                    if (c1037o1.f10194d.get() == C1048s1.f10289p0) {
                        this.f10157e.f10194d.set(null);
                    }
                    this.f10157e.f10197g.f10300J.a(C1048s1.f10286m0);
                    return;
                }
                return;
            case 1:
                if (this.f10157e.f10194d.get() == C1048s1.f10289p0) {
                    this.f10157e.f10194d.set(null);
                }
                Collection<C1034n1> collection = this.f10157e.f10197g.f10296F;
                if (collection != null) {
                    for (C1034n1 c1034n1 : collection) {
                        c1034n1.a("Channel is forcefully shutdown", null);
                    }
                }
                C1045r1 c1045r1 = this.f10157e.f10197g.f10300J;
                X2.L0 l02 = C1048s1.f10285l0;
                c1045r1.a(l02);
                synchronized (c1045r1.f10247a) {
                    arrayList = new ArrayList(c1045r1.f10248b);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1052u) it.next()).g(l02);
                }
                c1045r1.f10250d.f10299I.d(l02);
                return;
            default:
                this.f10157e.f10197g.m();
                return;
        }
    }
}
