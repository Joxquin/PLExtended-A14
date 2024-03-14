package io.grpc.internal;

import X2.AbstractC0114f0;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.z1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1069z1 extends AbstractC1022k0 {

    /* renamed from: f  reason: collision with root package name */
    public static final ReferenceQueue f10447f = new ReferenceQueue();

    /* renamed from: g  reason: collision with root package name */
    public static final ConcurrentMap f10448g = new ConcurrentHashMap();

    /* renamed from: h  reason: collision with root package name */
    public static final Logger f10449h = Logger.getLogger(C1069z1.class.getName());

    /* renamed from: e  reason: collision with root package name */
    public final C1066y1 f10450e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1069z1(C1048s1 c1048s1) {
        super(c1048s1);
        ReferenceQueue referenceQueue = f10447f;
        ConcurrentMap concurrentMap = f10448g;
        this.f10450e = new C1066y1(this, c1048s1, referenceQueue, concurrentMap);
    }

    @Override // X2.AbstractC0114f0
    public final AbstractC0114f0 i() {
        C1066y1 c1066y1 = this.f10450e;
        if (!c1066y1.f10438e.getAndSet(true)) {
            c1066y1.clear();
        }
        return this.f10155d.i();
    }
}
