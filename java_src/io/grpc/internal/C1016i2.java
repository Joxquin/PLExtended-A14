package io.grpc.internal;

import java.util.concurrent.Future;
/* renamed from: io.grpc.internal.i2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1016i2 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f10142a;

    /* renamed from: b  reason: collision with root package name */
    public Future f10143b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10144c;

    public C1016i2(Object obj) {
        this.f10142a = obj;
    }

    public final void a(Future future) {
        synchronized (this.f10142a) {
            if (!this.f10144c) {
                this.f10143b = future;
            }
        }
    }
}
