package com.android.wm.shell.recents;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IRecentTasksListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IRecentTasksListener {
        static final int TRANSACTION_onRecentTasksChanged = 1;
        static final int TRANSACTION_onRunningTaskAppeared = 2;
        static final int TRANSACTION_onRunningTaskVanished = 3;

        public Stub() {
            attachInterface(this, "com.android.wm.shell.recents.IRecentTasksListener");
        }

        public static IRecentTasksListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.wm.shell.recents.IRecentTasksListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IRecentTasksListener)) ? new b(iBinder) : (IRecentTasksListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.recents.IRecentTasksListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.recents.IRecentTasksListener");
                return true;
            }
            if (i4 == 1) {
                onRecentTasksChanged();
            } else if (i4 == 2) {
                parcel.enforceNoDataAvail();
                onRunningTaskAppeared((ActivityManager.RunningTaskInfo) parcel.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR));
            } else if (i4 != 3) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                parcel.enforceNoDataAvail();
                onRunningTaskVanished((ActivityManager.RunningTaskInfo) parcel.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR));
            }
            return true;
        }
    }

    void onRecentTasksChanged();

    void onRunningTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo);

    void onRunningTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo);
}
