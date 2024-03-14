package com.android.wm.shell.splitscreen;

import android.os.IBinder;
/* loaded from: classes.dex */
public final class c implements ISplitSelectListener {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6359d;

    public c(IBinder iBinder) {
        this.f6359d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6359d;
    }
}
