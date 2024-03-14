package v1;

import android.os.IBinder;
import android.os.Parcel;
import com.android.systemui.unfold.progress.IUnfoldAnimation;
import com.android.systemui.unfold.progress.IUnfoldTransitionListener;
/* renamed from: v1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1431a implements IUnfoldAnimation {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f12630d;

    public C1431a(IBinder iBinder) {
        this.f12630d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f12630d;
    }

    @Override // com.android.systemui.unfold.progress.IUnfoldAnimation
    public final void setListener(IUnfoldTransitionListener iUnfoldTransitionListener) {
        Parcel obtain = Parcel.obtain(this.f12630d);
        try {
            obtain.writeInterfaceToken("com.android.systemui.unfold.progress.IUnfoldAnimation");
            obtain.writeStrongInterface(iUnfoldTransitionListener);
            this.f12630d.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
