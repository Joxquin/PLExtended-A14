package com.android.wm.shell.splitscreen;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface ISplitScreenListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ISplitScreenListener {
        static final int TRANSACTION_onStagePositionChanged = 1;
        static final int TRANSACTION_onTaskStageChanged = 2;

        public Stub() {
            attachInterface(this, "com.android.wm.shell.splitscreen.ISplitScreenListener");
        }

        public static ISplitScreenListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.wm.shell.splitscreen.ISplitScreenListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISplitScreenListener)) ? new b(iBinder) : (ISplitScreenListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.splitscreen.ISplitScreenListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.splitscreen.ISplitScreenListener");
                return true;
            }
            if (i4 == 1) {
                int readInt = parcel.readInt();
                int readInt2 = parcel.readInt();
                parcel.enforceNoDataAvail();
                onStagePositionChanged(readInt, readInt2);
            } else if (i4 != 2) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                int readInt3 = parcel.readInt();
                int readInt4 = parcel.readInt();
                boolean readBoolean = parcel.readBoolean();
                parcel.enforceNoDataAvail();
                onTaskStageChanged(readInt3, readInt4, readBoolean);
            }
            return true;
        }
    }

    void onStagePositionChanged(int i4, int i5);

    void onTaskStageChanged(int i4, int i5, boolean z4);
}
