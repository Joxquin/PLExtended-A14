package com.android.wm.shell.recents;

import android.os.IBinder;
/* loaded from: classes.dex */
public final class b implements IRecentTasksListener {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6356d;

    public b(IBinder iBinder) {
        this.f6356d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6356d;
    }
}
