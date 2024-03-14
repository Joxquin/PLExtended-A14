package com.android.wm.shell.recents;

import H1.c;
import android.app.ActivityManager;
import android.app.IApplicationThread;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.view.IRecentsAnimationRunner;
/* loaded from: classes.dex */
public final class a implements IRecentTasks {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6355d;

    public a(IBinder iBinder) {
        this.f6355d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6355d;
    }

    @Override // com.android.wm.shell.recents.IRecentTasks
    public final c[] getRecentTasks(int i4, int i5) {
        Parcel obtain = Parcel.obtain(this.f6355d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.recents.IRecentTasks");
            obtain.writeInt(i4);
            obtain.writeInt(2);
            obtain.writeInt(i5);
            this.f6355d.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return (c[]) obtain2.createTypedArray(c.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.recents.IRecentTasks
    public final ActivityManager.RunningTaskInfo[] getRunningTasks(int i4) {
        Parcel obtain = Parcel.obtain(this.f6355d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.recents.IRecentTasks");
            obtain.writeInt(i4);
            this.f6355d.transact(5, obtain, obtain2, 0);
            obtain2.readException();
            return (ActivityManager.RunningTaskInfo[]) obtain2.createTypedArray(ActivityManager.RunningTaskInfo.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.recents.IRecentTasks
    public final void registerRecentTasksListener(IRecentTasksListener iRecentTasksListener) {
        Parcel obtain = Parcel.obtain(this.f6355d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.recents.IRecentTasks");
            obtain.writeStrongInterface(iRecentTasksListener);
            this.f6355d.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.recents.IRecentTasks
    public final void startRecentsTransition(PendingIntent pendingIntent, Intent intent, Bundle bundle, IApplicationThread iApplicationThread, IRecentsAnimationRunner iRecentsAnimationRunner) {
        Parcel obtain = Parcel.obtain(this.f6355d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.recents.IRecentTasks");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeTypedObject(intent, 0);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeStrongInterface(iApplicationThread);
            obtain.writeStrongInterface(iRecentsAnimationRunner);
            this.f6355d.transact(6, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.recents.IRecentTasks
    public final void unregisterRecentTasksListener(IRecentTasksListener iRecentTasksListener) {
        Parcel obtain = Parcel.obtain(this.f6355d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.recents.IRecentTasks");
            obtain.writeStrongInterface(iRecentTasksListener);
            this.f6355d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
