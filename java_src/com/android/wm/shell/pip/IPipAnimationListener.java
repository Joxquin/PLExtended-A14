package com.android.wm.shell.pip;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IPipAnimationListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IPipAnimationListener {
        static final int TRANSACTION_onExpandPip = 3;
        static final int TRANSACTION_onPipAnimationStarted = 1;
        static final int TRANSACTION_onPipResourceDimensionsChanged = 2;

        public Stub() {
            attachInterface(this, "com.android.wm.shell.pip.IPipAnimationListener");
        }

        public static IPipAnimationListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.wm.shell.pip.IPipAnimationListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IPipAnimationListener)) ? new b(iBinder) : (IPipAnimationListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.pip.IPipAnimationListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.pip.IPipAnimationListener");
                return true;
            }
            if (i4 == 1) {
                onPipAnimationStarted();
            } else if (i4 == 2) {
                int readInt = parcel.readInt();
                int readInt2 = parcel.readInt();
                parcel.enforceNoDataAvail();
                onPipResourceDimensionsChanged(readInt, readInt2);
            } else if (i4 != 3) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                onExpandPip();
            }
            return true;
        }
    }

    void onExpandPip();

    void onPipAnimationStarted();

    void onPipResourceDimensionsChanged(int i4, int i5);
}
