package com.android.wm.shell.desktopmode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IDesktopTaskListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IDesktopTaskListener {
        public Stub() {
            attachInterface(this, "com.android.wm.shell.desktopmode.IDesktopTaskListener");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.desktopmode.IDesktopTaskListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.desktopmode.IDesktopTaskListener");
                return true;
            }
            if (i4 == 1) {
                int readInt = parcel.readInt();
                boolean readBoolean = parcel.readBoolean();
                parcel.enforceNoDataAvail();
                onVisibilityChanged(readInt, readBoolean);
            } else if (i4 != 2) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                int readInt2 = parcel.readInt();
                boolean readBoolean2 = parcel.readBoolean();
                parcel.enforceNoDataAvail();
                onStashedChanged(readInt2, readBoolean2);
            }
            return true;
        }
    }

    void onStashedChanged(int i4, boolean z4);

    void onVisibilityChanged(int i4, boolean z4);
}
