package io.grpc.internal;

import io.grpc.ConnectivityState;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f9830a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public volatile ConnectivityState f9831b = ConnectivityState.IDLE;

    public final void a(ConnectivityState connectivityState) {
        O2.m.h(connectivityState, "newState");
        if (this.f9831b == connectivityState || this.f9831b == ConnectivityState.SHUTDOWN) {
            return;
        }
        this.f9831b = connectivityState;
        if (this.f9830a.isEmpty()) {
            return;
        }
        ArrayList arrayList = this.f9830a;
        this.f9830a = new ArrayList();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            ((A) it.next()).getClass();
            throw null;
        }
    }
}
