package com.android.wm.shell.startingsurface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IStartingWindowListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IStartingWindowListener {
        public Stub() {
            attachInterface(this, "com.android.wm.shell.startingsurface.IStartingWindowListener");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.startingsurface.IStartingWindowListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.startingsurface.IStartingWindowListener");
                return true;
            } else if (i4 != 1) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                int readInt = parcel.readInt();
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                parcel.enforceNoDataAvail();
                onTaskLaunching(readInt, readInt2, readInt3);
                return true;
            }
        }
    }

    void onTaskLaunching(int i4, int i5, int i6);
}
