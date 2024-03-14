package com.android.launcher3;

import com.android.launcher3.util.SafeCloseable;
/* renamed from: com.android.launcher3.f0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0338f0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4589d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SafeCloseable f4590e;

    public /* synthetic */ RunnableC0338f0(SafeCloseable safeCloseable, int i4) {
        this.f4589d = i4;
        this.f4590e = safeCloseable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4589d) {
            case 0:
            default:
                this.f4590e.close();
                return;
        }
    }
}
