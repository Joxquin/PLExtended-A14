package C1;

import android.app.ActivityManager;
import android.os.IBinder;
import android.os.Parcel;
import com.android.wm.shell.desktopmode.IDesktopMode;
import com.android.wm.shell.desktopmode.IDesktopTaskListener;
/* loaded from: classes.dex */
public final class a implements IDesktopMode {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f131d;

    public a(IBinder iBinder) {
        this.f131d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f131d;
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final int getVisibleTaskCount(int i4) {
        Parcel obtain = Parcel.obtain(this.f131d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeInt(i4);
            this.f131d.transact(5, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void hideStashedDesktopApps(int i4) {
        Parcel obtain = Parcel.obtain(this.f131d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeInt(i4);
            this.f131d.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void onDesktopSplitSelectAnimComplete(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Parcel obtain = Parcel.obtain(this.f131d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeTypedObject(runningTaskInfo, 0);
            this.f131d.transact(6, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void setTaskListener(IDesktopTaskListener iDesktopTaskListener) {
        Parcel obtain = Parcel.obtain(this.f131d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeStrongInterface(iDesktopTaskListener);
            this.f131d.transact(7, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void showDesktopApp(int i4) {
        Parcel obtain = Parcel.obtain(this.f131d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeInt(i4);
            this.f131d.transact(4, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void showDesktopApps(int i4) {
        Parcel obtain = Parcel.obtain(this.f131d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeInt(i4);
            this.f131d.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.desktopmode.IDesktopMode
    public final void stashDesktopApps(int i4) {
        Parcel obtain = Parcel.obtain(this.f131d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.desktopmode.IDesktopMode");
            obtain.writeInt(i4);
            this.f131d.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
