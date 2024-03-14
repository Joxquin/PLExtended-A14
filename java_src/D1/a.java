package D1;

import android.os.IBinder;
import android.os.Parcel;
import com.android.wm.shell.draganddrop.IDragAndDrop;
/* loaded from: classes.dex */
public final class a implements IDragAndDrop {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f317d;

    public a(IBinder iBinder) {
        this.f317d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f317d;
    }

    @Override // com.android.wm.shell.draganddrop.IDragAndDrop
    public final boolean isReadyToHandleDrag() {
        Parcel obtain = Parcel.obtain(this.f317d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.draganddrop.IDragAndDrop");
            this.f317d.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readBoolean();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
