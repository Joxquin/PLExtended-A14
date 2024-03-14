package G1;

import android.os.IBinder;
import android.os.Parcel;
import android.window.RemoteTransition;
import android.window.TransitionFilter;
import com.android.wm.shell.transition.IShellTransitions;
/* loaded from: classes.dex */
public final class a implements IShellTransitions {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f507d;

    public a(IBinder iBinder) {
        this.f507d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f507d;
    }

    @Override // com.android.wm.shell.transition.IShellTransitions
    public final IBinder getShellApplyToken() {
        Parcel obtain = Parcel.obtain(this.f507d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.transition.IShellTransitions");
            this.f507d.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readStrongBinder();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.transition.IShellTransitions
    public final void registerRemote(RemoteTransition remoteTransition, TransitionFilter transitionFilter) {
        Parcel obtain = Parcel.obtain(this.f507d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.transition.IShellTransitions");
            obtain.writeTypedObject(transitionFilter, 0);
            obtain.writeTypedObject(remoteTransition, 0);
            this.f507d.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.transition.IShellTransitions
    public final void unregisterRemote(RemoteTransition remoteTransition) {
        Parcel obtain = Parcel.obtain(this.f507d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.transition.IShellTransitions");
            obtain.writeTypedObject(remoteTransition, 0);
            this.f507d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
