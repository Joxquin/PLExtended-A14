package J2;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.systemui.qs.launcher.ILauncherTileListener;
import com.google.android.systemui.qs.launcher.ILauncherTileService;
/* loaded from: classes.dex */
public final class a implements ILauncherTileService {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f845d;

    public a(IBinder iBinder) {
        this.f845d = iBinder;
    }

    @Override // com.google.android.systemui.qs.launcher.ILauncherTileService
    public final void addTileListener(String str, ILauncherTileListener iLauncherTileListener) {
        Parcel obtain = Parcel.obtain(this.f845d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.systemui.qs.launcher.ILauncherTileService");
            obtain.writeString(str);
            obtain.writeStrongInterface(iLauncherTileListener);
            this.f845d.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f845d;
    }

    @Override // com.google.android.systemui.qs.launcher.ILauncherTileService
    public final void clearTileListeners(String str) {
        Parcel obtain = Parcel.obtain(this.f845d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.systemui.qs.launcher.ILauncherTileService");
            obtain.writeString(str);
            this.f845d.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.google.android.systemui.qs.launcher.ILauncherTileService
    public final void handleClick(String str) {
        Parcel obtain = Parcel.obtain(this.f845d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.systemui.qs.launcher.ILauncherTileService");
            obtain.writeString(str);
            this.f845d.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.google.android.systemui.qs.launcher.ILauncherTileService
    public final void handleLongClick(String str) {
        Parcel obtain = Parcel.obtain(this.f845d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.systemui.qs.launcher.ILauncherTileService");
            obtain.writeString(str);
            this.f845d.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
