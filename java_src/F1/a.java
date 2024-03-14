package F1;

import android.os.IBinder;
import android.os.Parcel;
import com.android.wm.shell.startingsurface.IStartingWindow;
import com.android.wm.shell.startingsurface.IStartingWindowListener;
/* loaded from: classes.dex */
public final class a implements IStartingWindow {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f355d;

    public a(IBinder iBinder) {
        this.f355d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f355d;
    }

    @Override // com.android.wm.shell.startingsurface.IStartingWindow
    public final void setStartingWindowListener(IStartingWindowListener iStartingWindowListener) {
        Parcel obtain = Parcel.obtain(this.f355d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.startingsurface.IStartingWindow");
            obtain.writeStrongInterface(iStartingWindowListener);
            this.f355d.transact(44, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
