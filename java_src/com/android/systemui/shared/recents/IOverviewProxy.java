package com.android.systemui.shared.recents;

import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.SurfaceControl;
/* loaded from: classes.dex */
public interface IOverviewProxy extends IInterface {
    public static final String DESCRIPTOR = "com.android.systemui.shared.recents.IOverviewProxy";

    /* loaded from: classes.dex */
    public class Default implements IOverviewProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void disable(int i4, int i5, int i6, boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void enterStageSplitFromRunningApp(boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onActiveNavBarRegionChanges(Region region) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantAvailable(boolean z4, boolean z5) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantOverrideInvoked(int i4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantVisibilityChanged(float f4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onInitialize(Bundle bundle) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onNavButtonsDarkIntensityChanged(float f4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onNavigationBarSurface(SurfaceControl surfaceControl) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewHidden(boolean z4, boolean z5) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewShown(boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewToggle() {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onRotationProposal(int i4, boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemBarAttributesChanged(int i4, int i5) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemUiStateChanged(int i4) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onTaskbarToggled() {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IOverviewProxy {
        static final int TRANSACTION_disable = 20;
        static final int TRANSACTION_enterStageSplitFromRunningApp = 26;
        static final int TRANSACTION_onActiveNavBarRegionChanges = 12;
        static final int TRANSACTION_onAssistantAvailable = 14;
        static final int TRANSACTION_onAssistantOverrideInvoked = 29;
        static final int TRANSACTION_onAssistantVisibilityChanged = 15;
        static final int TRANSACTION_onInitialize = 13;
        static final int TRANSACTION_onNavButtonsDarkIntensityChanged = 23;
        static final int TRANSACTION_onNavigationBarSurface = 27;
        static final int TRANSACTION_onOverviewHidden = 9;
        static final int TRANSACTION_onOverviewShown = 8;
        static final int TRANSACTION_onOverviewToggle = 7;
        static final int TRANSACTION_onRotationProposal = 19;
        static final int TRANSACTION_onSystemBarAttributesChanged = 21;
        static final int TRANSACTION_onSystemUiStateChanged = 17;
        static final int TRANSACTION_onTaskbarToggled = 28;

        /* loaded from: classes.dex */
        class Proxy implements IOverviewProxy {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void disable(int i4, int i5, int i6, boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    obtain.writeInt(i6);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void enterStageSplitFromRunningApp(boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(26, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IOverviewProxy.DESCRIPTOR;
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onActiveNavBarRegionChanges(Region region) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(region, 0);
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onAssistantAvailable(boolean z4, boolean z5) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    obtain.writeBoolean(z5);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onAssistantOverrideInvoked(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(29, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onAssistantVisibilityChanged(float f4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeFloat(f4);
                    this.mRemote.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onInitialize(Bundle bundle) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bundle, 0);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onNavButtonsDarkIntensityChanged(float f4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeFloat(f4);
                    this.mRemote.transact(23, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onNavigationBarSurface(SurfaceControl surfaceControl) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(surfaceControl, 0);
                    this.mRemote.transact(27, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewHidden(boolean z4, boolean z5) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    obtain.writeBoolean(z5);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewShown(boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onOverviewToggle() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onRotationProposal(int i4, boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onSystemBarAttributesChanged(int i4, int i5) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.mRemote.transact(21, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onSystemUiStateChanged(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.IOverviewProxy
            public void onTaskbarToggled() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    this.mRemote.transact(28, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOverviewProxy.DESCRIPTOR);
        }

        public static IOverviewProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOverviewProxy.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IOverviewProxy)) ? new Proxy(iBinder) : (IOverviewProxy) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface(IOverviewProxy.DESCRIPTOR);
            }
            if (i4 == 1598968902) {
                parcel2.writeString(IOverviewProxy.DESCRIPTOR);
                return true;
            }
            switch (i4) {
                case 7:
                    onOverviewToggle();
                    break;
                case 8:
                    boolean readBoolean = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    onOverviewShown(readBoolean);
                    break;
                case 9:
                    boolean readBoolean2 = parcel.readBoolean();
                    boolean readBoolean3 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    onOverviewHidden(readBoolean2, readBoolean3);
                    break;
                case 10:
                case 11:
                case 16:
                case 18:
                case 22:
                case 24:
                case 25:
                default:
                    return super.onTransact(i4, parcel, parcel2, i5);
                case 12:
                    parcel.enforceNoDataAvail();
                    onActiveNavBarRegionChanges((Region) parcel.readTypedObject(Region.CREATOR));
                    break;
                case 13:
                    parcel.enforceNoDataAvail();
                    onInitialize((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    break;
                case 14:
                    boolean readBoolean4 = parcel.readBoolean();
                    boolean readBoolean5 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    onAssistantAvailable(readBoolean4, readBoolean5);
                    break;
                case 15:
                    float readFloat = parcel.readFloat();
                    parcel.enforceNoDataAvail();
                    onAssistantVisibilityChanged(readFloat);
                    break;
                case 17:
                    int readInt = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    onSystemUiStateChanged(readInt);
                    break;
                case 19:
                    int readInt2 = parcel.readInt();
                    boolean readBoolean6 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    onRotationProposal(readInt2, readBoolean6);
                    break;
                case 20:
                    int readInt3 = parcel.readInt();
                    int readInt4 = parcel.readInt();
                    int readInt5 = parcel.readInt();
                    boolean readBoolean7 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    disable(readInt3, readInt4, readInt5, readBoolean7);
                    break;
                case 21:
                    int readInt6 = parcel.readInt();
                    int readInt7 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    onSystemBarAttributesChanged(readInt6, readInt7);
                    break;
                case 23:
                    float readFloat2 = parcel.readFloat();
                    parcel.enforceNoDataAvail();
                    onNavButtonsDarkIntensityChanged(readFloat2);
                    break;
                case 26:
                    boolean readBoolean8 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    enterStageSplitFromRunningApp(readBoolean8);
                    break;
                case 27:
                    parcel.enforceNoDataAvail();
                    onNavigationBarSurface((SurfaceControl) parcel.readTypedObject(SurfaceControl.CREATOR));
                    break;
                case 28:
                    onTaskbarToggled();
                    break;
                case 29:
                    int readInt8 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    onAssistantOverrideInvoked(readInt8);
                    break;
            }
            return true;
        }
    }

    void disable(int i4, int i5, int i6, boolean z4);

    void enterStageSplitFromRunningApp(boolean z4);

    void onActiveNavBarRegionChanges(Region region);

    void onAssistantAvailable(boolean z4, boolean z5);

    void onAssistantOverrideInvoked(int i4);

    void onAssistantVisibilityChanged(float f4);

    void onInitialize(Bundle bundle);

    void onNavButtonsDarkIntensityChanged(float f4);

    void onNavigationBarSurface(SurfaceControl surfaceControl);

    void onOverviewHidden(boolean z4, boolean z5);

    void onOverviewShown(boolean z4);

    void onOverviewToggle();

    void onRotationProposal(int i4, boolean z4);

    void onSystemBarAttributesChanged(int i4, int i5);

    void onSystemUiStateChanged(int i4);

    void onTaskbarToggled();
}
