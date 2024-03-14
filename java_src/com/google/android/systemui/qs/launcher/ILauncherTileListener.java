package com.google.android.systemui.qs.launcher;

import J2.c;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.launcher3.util.Executors;
import com.google.android.apps.nexuslauncher.allapps.R2;
import com.google.android.apps.nexuslauncher.allapps.TileLifeCycle;
/* loaded from: classes.dex */
public interface ILauncherTileListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ILauncherTileListener {
        public Stub() {
            attachInterface(this, "com.google.android.systemui.qs.launcher.ILauncherTileListener");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        public final int getMaxTransactionId() {
            return 0;
        }

        public final String getTransactionName(int i4) {
            if (i4 != 1) {
                return null;
            }
            return "onTileUpdated";
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.google.android.systemui.qs.launcher.ILauncherTileListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.google.android.systemui.qs.launcher.ILauncherTileListener");
                return true;
            } else if (i4 != 1) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                parcel.enforceNoDataAvail();
                Executors.MAIN_EXECUTOR.execute(new R2((TileLifeCycle) this, (c) parcel.readTypedObject(c.CREATOR), 0));
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
