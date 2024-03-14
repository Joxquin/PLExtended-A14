package com.android.wm.shell.splitscreen;

import android.os.IBinder;
/* loaded from: classes.dex */
public final class b implements ISplitScreenListener {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6358d;

    public b(IBinder iBinder) {
        this.f6358d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6358d;
    }
}
