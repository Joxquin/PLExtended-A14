package io.grpc.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
/* renamed from: io.grpc.internal.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1050t0 {

    /* renamed from: a  reason: collision with root package name */
    public final Set f10376a = Collections.newSetFromMap(new IdentityHashMap());

    public abstract void a();

    public abstract void b();

    public final void c(Object obj, boolean z4) {
        Set set = this.f10376a;
        int size = set.size();
        if (z4) {
            set.add(obj);
            if (size == 0) {
                a();
            }
        } else if (set.remove(obj) && size == 1) {
            b();
        }
    }
}
