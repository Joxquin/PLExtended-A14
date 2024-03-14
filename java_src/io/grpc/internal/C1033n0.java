package io.grpc.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: io.grpc.internal.n0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1033n0 implements F2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10180a;

    public final Object a() {
        switch (this.f10180a) {
            case 0:
                return Executors.newCachedThreadPool(C1044r0.b("grpc-default-executor-%d"));
            default:
                ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, C1044r0.b("grpc-timer-%d"));
                try {
                    newScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(newScheduledThreadPool, Boolean.TRUE);
                } catch (NoSuchMethodException unused) {
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception e5) {
                    throw new RuntimeException(e5);
                }
                return Executors.unconfigurableScheduledExecutorService(newScheduledThreadPool);
        }
    }

    public final String toString() {
        switch (this.f10180a) {
            case 0:
                return "grpc-default-executor";
            default:
                return super.toString();
        }
    }
}
