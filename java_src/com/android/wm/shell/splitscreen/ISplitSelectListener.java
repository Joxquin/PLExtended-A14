package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface ISplitSelectListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ISplitSelectListener {
        static final int TRANSACTION_onRequestSplitSelect = 1;

        public Stub() {
            attachInterface(this, "com.android.wm.shell.splitscreen.ISplitSelectListener");
        }

        public static ISplitSelectListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.wm.shell.splitscreen.ISplitSelectListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISplitSelectListener)) ? new c(iBinder) : (ISplitSelectListener) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.splitscreen.ISplitSelectListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.splitscreen.ISplitSelectListener");
                return true;
            } else if (i4 != 1) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                parcel.enforceNoDataAvail();
                boolean onRequestSplitSelect = onRequestSplitSelect((ActivityManager.RunningTaskInfo) parcel.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR), parcel.readInt(), (Rect) parcel.readTypedObject(Rect.CREATOR));
                parcel2.writeNoException();
                parcel2.writeBoolean(onRequestSplitSelect);
                return true;
            }
        }
    }

    boolean onRequestSplitSelect(ActivityManager.RunningTaskInfo runningTaskInfo, int i4, Rect rect);
}
