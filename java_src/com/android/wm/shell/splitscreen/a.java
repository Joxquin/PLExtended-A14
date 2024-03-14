package com.android.wm.shell.splitscreen;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.UserHandle;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.window.RemoteTransition;
import com.android.internal.logging.InstanceId;
/* loaded from: classes.dex */
public final class a implements ISplitScreen {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6357d;

    public a(IBinder iBinder) {
        this.f6357d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6357d;
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final RemoteAnimationTarget[] onGoingToRecentsLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedArray(remoteAnimationTargetArr, 0);
            this.f6357d.transact(14, obtain, obtain2, 0);
            obtain2.readException();
            return (RemoteAnimationTarget[]) obtain2.createTypedArray(RemoteAnimationTarget.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final RemoteAnimationTarget[] onStartingSplitLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedArray(remoteAnimationTargetArr, 0);
            this.f6357d.transact(15, obtain, obtain2, 0);
            obtain2.readException();
            return (RemoteAnimationTarget[]) obtain2.createTypedArray(RemoteAnimationTarget.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void registerSplitScreenListener(ISplitScreenListener iSplitScreenListener) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeStrongInterface(iSplitScreenListener);
            this.f6357d.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void registerSplitSelectListener(ISplitSelectListener iSplitSelectListener) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeStrongInterface(iSplitSelectListener);
            this.f6357d.transact(21, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void removeFromSideStage(int i4) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeInt(i4);
            this.f6357d.transact(5, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startIntent(PendingIntent pendingIntent, int i4, Intent intent, int i5, Bundle bundle, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(intent, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(10, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startIntentAndTask(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteTransition, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(17, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startIntentAndTaskWithLegacyTransition(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteAnimationAdapter, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(13, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startIntents(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(shortcutInfo, 0);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeTypedObject(pendingIntent2, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(shortcutInfo2, 0);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteTransition, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(20, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startIntentsWithLegacyTransition(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(pendingIntent, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(shortcutInfo, 0);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeTypedObject(pendingIntent2, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(shortcutInfo2, 0);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteAnimationAdapter, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(19, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startShortcut(String str, String str2, int i4, Bundle bundle, UserHandle userHandle, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeTypedObject(userHandle, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(9, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startShortcutAndTask(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(shortcutInfo, 0);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i5);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteTransition, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(18, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startShortcutAndTaskWithLegacyTransition(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeTypedObject(shortcutInfo, 0);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i5);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteAnimationAdapter, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(16, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startTasks(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteTransition, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(11, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void startTasksWithLegacyTransition(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeInt(i4);
            obtain.writeTypedObject(bundle, 0);
            obtain.writeInt(i5);
            obtain.writeTypedObject(bundle2, 0);
            obtain.writeInt(i6);
            obtain.writeFloat(f4);
            obtain.writeTypedObject(remoteAnimationAdapter, 0);
            obtain.writeTypedObject(instanceId, 0);
            this.f6357d.transact(12, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void unregisterSplitScreenListener(ISplitScreenListener iSplitScreenListener) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeStrongInterface(iSplitScreenListener);
            this.f6357d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.splitscreen.ISplitScreen
    public final void unregisterSplitSelectListener(ISplitSelectListener iSplitSelectListener) {
        Parcel obtain = Parcel.obtain(this.f6357d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreen");
            obtain.writeStrongInterface(iSplitSelectListener);
            this.f6357d.transact(22, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
