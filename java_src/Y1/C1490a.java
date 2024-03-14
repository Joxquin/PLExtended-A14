package y1;

import android.os.IBinder;
import android.os.Parcel;
import android.view.IRemoteAnimationRunner;
import android.window.IOnBackInvokedCallback;
import com.android.internal.view.AppearanceRegion;
import com.android.wm.shell.back.IBackAnimation;
/* renamed from: y1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1490a implements IBackAnimation {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f12963d;

    public C1490a(IBinder iBinder) {
        this.f12963d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f12963d;
    }

    @Override // com.android.wm.shell.back.IBackAnimation
    public final void clearBackToLauncherCallback() {
        Parcel obtain = Parcel.obtain(this.f12963d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.back.IBackAnimation");
            this.f12963d.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.back.IBackAnimation
    public final void customizeStatusBarAppearance(AppearanceRegion appearanceRegion) {
        Parcel obtain = Parcel.obtain(this.f12963d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.back.IBackAnimation");
            obtain.writeTypedObject(appearanceRegion, 0);
            this.f12963d.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.back.IBackAnimation
    public final void setBackToLauncherCallback(IOnBackInvokedCallback iOnBackInvokedCallback, IRemoteAnimationRunner iRemoteAnimationRunner) {
        Parcel obtain = Parcel.obtain(this.f12963d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.back.IBackAnimation");
            obtain.writeStrongInterface(iOnBackInvokedCallback);
            obtain.writeStrongInterface(iRemoteAnimationRunner);
            this.f12963d.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
