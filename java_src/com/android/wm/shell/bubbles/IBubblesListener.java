package com.android.wm.shell.bubbles;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.launcher3.taskbar.bubbles.BubbleBarController;
/* loaded from: classes.dex */
public interface IBubblesListener extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IBubblesListener {
        public Stub() {
            attachInterface(this, "com.android.wm.shell.bubbles.IBubblesListener");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.bubbles.IBubblesListener");
            }
            if (i4 == 1598968902) {
                parcel2.writeString("com.android.wm.shell.bubbles.IBubblesListener");
                return true;
            } else if (i4 != 1) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                parcel.enforceNoDataAvail();
                ((BubbleBarController) this).onBubbleStateChange((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                return true;
            }
        }
    }
}
