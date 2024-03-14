package com.android.systemui.shared.system.smartspace;

import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface ILauncherUnlockAnimationController extends IInterface {
    public static final String DESCRIPTOR = "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController";

    /* loaded from: classes.dex */
    public class Default implements ILauncherUnlockAnimationController {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void dispatchSmartspaceStateToSysui() {
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void playUnlockAnimation(boolean z4, long j4, long j5) {
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void prepareForUnlock(boolean z4, Rect rect, int i4) {
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void setSmartspaceSelectedPage(int i4) {
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void setSmartspaceVisibility(int i4) {
        }

        @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
        public void setUnlockAmount(float f4, boolean z4) {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ILauncherUnlockAnimationController {
        static final int TRANSACTION_dispatchSmartspaceStateToSysui = 6;
        static final int TRANSACTION_playUnlockAnimation = 3;
        static final int TRANSACTION_prepareForUnlock = 1;
        static final int TRANSACTION_setSmartspaceSelectedPage = 4;
        static final int TRANSACTION_setSmartspaceVisibility = 5;
        static final int TRANSACTION_setUnlockAmount = 2;

        /* loaded from: classes.dex */
        class Proxy implements ILauncherUnlockAnimationController {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void dispatchSmartspaceStateToSysui() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return ILauncherUnlockAnimationController.DESCRIPTOR;
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void playUnlockAnimation(boolean z4, long j4, long j5) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    obtain.writeLong(j4);
                    obtain.writeLong(j5);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void prepareForUnlock(boolean z4, Rect rect, int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    obtain.writeTypedObject(rect, 0);
                    obtain.writeInt(i4);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void setSmartspaceSelectedPage(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void setSmartspaceVisibility(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
            public void setUnlockAmount(float f4, boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ILauncherUnlockAnimationController.DESCRIPTOR);
                    obtain.writeFloat(f4);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ILauncherUnlockAnimationController.DESCRIPTOR);
        }

        public static ILauncherUnlockAnimationController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ILauncherUnlockAnimationController.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ILauncherUnlockAnimationController)) ? new Proxy(iBinder) : (ILauncherUnlockAnimationController) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface(ILauncherUnlockAnimationController.DESCRIPTOR);
            }
            if (i4 == 1598968902) {
                parcel2.writeString(ILauncherUnlockAnimationController.DESCRIPTOR);
                return true;
            }
            switch (i4) {
                case 1:
                    int readInt = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    prepareForUnlock(parcel.readBoolean(), (Rect) parcel.readTypedObject(Rect.CREATOR), readInt);
                    parcel2.writeNoException();
                    break;
                case 2:
                    float readFloat = parcel.readFloat();
                    boolean readBoolean = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    setUnlockAmount(readFloat, readBoolean);
                    break;
                case 3:
                    boolean readBoolean2 = parcel.readBoolean();
                    long readLong = parcel.readLong();
                    long readLong2 = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    playUnlockAnimation(readBoolean2, readLong, readLong2);
                    break;
                case 4:
                    int readInt2 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setSmartspaceSelectedPage(readInt2);
                    break;
                case 5:
                    int readInt3 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setSmartspaceVisibility(readInt3);
                    parcel2.writeNoException();
                    break;
                case 6:
                    dispatchSmartspaceStateToSysui();
                    break;
                default:
                    return super.onTransact(i4, parcel, parcel2, i5);
            }
            return true;
        }
    }

    void dispatchSmartspaceStateToSysui();

    void playUnlockAnimation(boolean z4, long j4, long j5);

    void prepareForUnlock(boolean z4, Rect rect, int i4);

    void setSmartspaceSelectedPage(int i4);

    void setSmartspaceVisibility(int i4);

    void setUnlockAmount(float f4, boolean z4);
}
