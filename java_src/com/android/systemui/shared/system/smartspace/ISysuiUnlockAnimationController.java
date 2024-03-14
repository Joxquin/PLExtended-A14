package com.android.systemui.shared.system.smartspace;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController;
/* loaded from: classes.dex */
public interface ISysuiUnlockAnimationController extends IInterface {
    public static final String DESCRIPTOR = "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController";

    /* loaded from: classes.dex */
    public class Default implements ISysuiUnlockAnimationController {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController
        public void onLauncherSmartspaceStateUpdated(SmartspaceState smartspaceState) {
        }

        @Override // com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController
        public void setLauncherUnlockController(ILauncherUnlockAnimationController iLauncherUnlockAnimationController) {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ISysuiUnlockAnimationController {
        static final int TRANSACTION_onLauncherSmartspaceStateUpdated = 2;
        static final int TRANSACTION_setLauncherUnlockController = 1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class Proxy implements ISysuiUnlockAnimationController {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISysuiUnlockAnimationController.DESCRIPTOR;
            }

            @Override // com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController
            public void onLauncherSmartspaceStateUpdated(SmartspaceState smartspaceState) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISysuiUnlockAnimationController.DESCRIPTOR);
                    obtain.writeTypedObject(smartspaceState, 0);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController
            public void setLauncherUnlockController(ILauncherUnlockAnimationController iLauncherUnlockAnimationController) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISysuiUnlockAnimationController.DESCRIPTOR);
                    obtain.writeStrongInterface(iLauncherUnlockAnimationController);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ISysuiUnlockAnimationController.DESCRIPTOR);
        }

        public static ISysuiUnlockAnimationController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISysuiUnlockAnimationController.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISysuiUnlockAnimationController)) ? new Proxy(iBinder) : (ISysuiUnlockAnimationController) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface(ISysuiUnlockAnimationController.DESCRIPTOR);
            }
            if (i4 == 1598968902) {
                parcel2.writeString(ISysuiUnlockAnimationController.DESCRIPTOR);
                return true;
            }
            if (i4 == 1) {
                ILauncherUnlockAnimationController asInterface = ILauncherUnlockAnimationController.Stub.asInterface(parcel.readStrongBinder());
                parcel.enforceNoDataAvail();
                setLauncherUnlockController(asInterface);
            } else if (i4 != 2) {
                return super.onTransact(i4, parcel, parcel2, i5);
            } else {
                parcel.enforceNoDataAvail();
                onLauncherSmartspaceStateUpdated((SmartspaceState) parcel.readTypedObject(SmartspaceState.CREATOR));
            }
            return true;
        }
    }

    void onLauncherSmartspaceStateUpdated(SmartspaceState smartspaceState);

    void setLauncherUnlockController(ILauncherUnlockAnimationController iLauncherUnlockAnimationController);
}
