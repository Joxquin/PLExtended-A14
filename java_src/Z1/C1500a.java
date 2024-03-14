package z1;

import android.os.IBinder;
import android.os.Parcel;
import com.android.wm.shell.bubbles.IBubbles;
import com.android.wm.shell.bubbles.IBubblesListener;
/* renamed from: z1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1500a implements IBubbles {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f12997d;

    public C1500a(IBinder iBinder) {
        this.f12997d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f12997d;
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void collapseBubbles() {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            this.f12997d.transact(7, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void onBubbleDrag(String str, boolean z4) {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            obtain.writeString(str);
            obtain.writeBoolean(z4);
            this.f12997d.transact(8, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void registerBubbleListener(IBubblesListener iBubblesListener) {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            obtain.writeStrongInterface(iBubblesListener);
            this.f12997d.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void removeAllBubbles() {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            this.f12997d.transact(6, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void removeBubble(String str) {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            obtain.writeString(str);
            this.f12997d.transact(5, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void showBubble(String str, int i4, int i5) {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            obtain.writeString(str);
            obtain.writeInt(i4);
            obtain.writeInt(i5);
            this.f12997d.transact(4, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.bubbles.IBubbles
    public final void unregisterBubbleListener(IBubblesListener iBubblesListener) {
        Parcel obtain = Parcel.obtain(this.f12997d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubbles");
            obtain.writeStrongInterface(iBubblesListener);
            this.f12997d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
