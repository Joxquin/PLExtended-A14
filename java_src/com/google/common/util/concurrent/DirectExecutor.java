package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class DirectExecutor implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public static final DirectExecutor f8471d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ DirectExecutor[] f8472e;

    static {
        DirectExecutor directExecutor = new DirectExecutor();
        f8471d = directExecutor;
        f8472e = new DirectExecutor[]{directExecutor};
    }

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f8472e.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
