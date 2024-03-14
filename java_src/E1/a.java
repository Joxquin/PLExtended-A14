package E1;

import android.os.IBinder;
import android.os.Parcel;
import com.android.wm.shell.onehanded.IOneHanded;
/* loaded from: classes.dex */
public final class a implements IOneHanded {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f341d;

    public a(IBinder iBinder) {
        this.f341d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f341d;
    }

    @Override // com.android.wm.shell.onehanded.IOneHanded
    public final void startOneHanded() {
        Parcel obtain = Parcel.obtain(this.f341d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.onehanded.IOneHanded");
            this.f341d.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.onehanded.IOneHanded
    public final void stopOneHanded() {
        Parcel obtain = Parcel.obtain(this.f341d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.onehanded.IOneHanded");
            this.f341d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
