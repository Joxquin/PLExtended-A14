package io.grpc.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class F extends C {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ K f9869e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(L l4, K k4) {
        super(l4.f9932c);
        this.f9869e = k4;
    }

    @Override // io.grpc.internal.C
    public final void a() {
        List<Runnable> list;
        K k4 = this.f9869e;
        k4.getClass();
        List arrayList = new ArrayList();
        while (true) {
            synchronized (k4) {
                if (k4.f9926c.isEmpty()) {
                    k4.f9926c = null;
                    k4.f9925b = true;
                    return;
                }
                list = k4.f9926c;
                k4.f9926c = arrayList;
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
            list.clear();
            arrayList = list;
        }
    }
}
