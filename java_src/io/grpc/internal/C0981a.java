package io.grpc.internal;

import java.util.concurrent.atomic.AtomicLong;
/* renamed from: io.grpc.internal.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0981a implements Q0 {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicLong f10048a = new AtomicLong();

    @Override // io.grpc.internal.Q0
    public final void a() {
        this.f10048a.getAndAdd(1L);
    }
}
