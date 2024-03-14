package com.android.systemui.shared.recents;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.MotionEvent;
import com.android.internal.util.ScreenshotRequest;
/* loaded from: classes.dex */
public interface ISystemUiProxy extends IInterface {
    public static final String DESCRIPTOR = "com.android.systemui.shared.recents.ISystemUiProxy";

    /* loaded from: classes.dex */
    public class Default implements ISystemUiProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void expandNotificationPanel() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyAccessibilityButtonClicked(int i4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyAccessibilityButtonLongClicked() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyPrioritizedRotation(int i4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyTaskbarAutohideSuspend(boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void notifyTaskbarStatus(boolean z4, boolean z5) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onAssistantGestureCompletion(float f4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onAssistantProgress(float f4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onBackPressed() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onImeSwitcherPressed() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onOverviewShown(boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onStatusBarTouchEvent(MotionEvent motionEvent) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void onStatusBarTrackpadEvent(MotionEvent motionEvent) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setAssistantOverridesRequested(int[] iArr) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void setHomeRotationEnabled(boolean z4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void startAssistant(Bundle bundle) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void startScreenPinning(int i4) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void stopScreenPinning() {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void takeScreenshot(ScreenshotRequest screenshotRequest) {
        }

        @Override // com.android.systemui.shared.recents.ISystemUiProxy
        public void toggleNotificationPanel() {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ISystemUiProxy {
        static final int TRANSACTION_expandNotificationPanel = 30;
        static final int TRANSACTION_notifyAccessibilityButtonClicked = 16;
        static final int TRANSACTION_notifyAccessibilityButtonLongClicked = 17;
        static final int TRANSACTION_notifyPrioritizedRotation = 26;
        static final int TRANSACTION_notifyTaskbarAutohideSuspend = 49;
        static final int TRANSACTION_notifyTaskbarStatus = 48;
        static final int TRANSACTION_onAssistantGestureCompletion = 19;
        static final int TRANSACTION_onAssistantProgress = 13;
        static final int TRANSACTION_onBackPressed = 45;
        static final int TRANSACTION_onImeSwitcherPressed = 50;
        static final int TRANSACTION_onOverviewShown = 7;
        static final int TRANSACTION_onStatusBarTouchEvent = 10;
        static final int TRANSACTION_onStatusBarTrackpadEvent = 53;
        static final int TRANSACTION_setAssistantOverridesRequested = 54;
        static final int TRANSACTION_setHomeRotationEnabled = 46;
        static final int TRANSACTION_startAssistant = 14;
        static final int TRANSACTION_startScreenPinning = 2;
        static final int TRANSACTION_stopScreenPinning = 18;
        static final int TRANSACTION_takeScreenshot = 52;
        static final int TRANSACTION_toggleNotificationPanel = 51;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class Proxy implements ISystemUiProxy {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void expandNotificationPanel() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(30, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return ISystemUiProxy.DESCRIPTOR;
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyAccessibilityButtonClicked(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyAccessibilityButtonLongClicked() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyPrioritizedRotation(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(26, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyTaskbarAutohideSuspend(boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(49, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void notifyTaskbarStatus(boolean z4, boolean z5) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    obtain.writeBoolean(z5);
                    this.mRemote.transact(48, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onAssistantGestureCompletion(float f4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeFloat(f4);
                    this.mRemote.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onAssistantProgress(float f4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeFloat(f4);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onBackPressed() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(45, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onImeSwitcherPressed() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(50, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onOverviewShown(boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onStatusBarTouchEvent(MotionEvent motionEvent) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(motionEvent, 0);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void onStatusBarTrackpadEvent(MotionEvent motionEvent) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(motionEvent, 0);
                    this.mRemote.transact(53, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setAssistantOverridesRequested(int[] iArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(54, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void setHomeRotationEnabled(boolean z4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeBoolean(z4);
                    this.mRemote.transact(46, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void startAssistant(Bundle bundle) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bundle, 0);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void startScreenPinning(int i4) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i4);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void stopScreenPinning() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void takeScreenshot(ScreenshotRequest screenshotRequest) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(screenshotRequest, 0);
                    this.mRemote.transact(52, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.systemui.shared.recents.ISystemUiProxy
            public void toggleNotificationPanel() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(51, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ISystemUiProxy.DESCRIPTOR);
        }

        public static ISystemUiProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISystemUiProxy.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISystemUiProxy)) ? new Proxy(iBinder) : (ISystemUiProxy) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
            if (i4 >= 1 && i4 <= 16777215) {
                parcel.enforceInterface(ISystemUiProxy.DESCRIPTOR);
            }
            if (i4 == 1598968902) {
                parcel2.writeString(ISystemUiProxy.DESCRIPTOR);
                return true;
            }
            if (i4 == 2) {
                int readInt = parcel.readInt();
                parcel.enforceNoDataAvail();
                startScreenPinning(readInt);
            } else if (i4 == 7) {
                boolean readBoolean = parcel.readBoolean();
                parcel.enforceNoDataAvail();
                onOverviewShown(readBoolean);
            } else if (i4 == 10) {
                parcel.enforceNoDataAvail();
                onStatusBarTouchEvent((MotionEvent) parcel.readTypedObject(MotionEvent.CREATOR));
            } else if (i4 == 26) {
                int readInt2 = parcel.readInt();
                parcel.enforceNoDataAvail();
                notifyPrioritizedRotation(readInt2);
            } else if (i4 == 30) {
                expandNotificationPanel();
            } else if (i4 == 13) {
                float readFloat = parcel.readFloat();
                parcel.enforceNoDataAvail();
                onAssistantProgress(readFloat);
            } else if (i4 == 14) {
                parcel.enforceNoDataAvail();
                startAssistant((Bundle) parcel.readTypedObject(Bundle.CREATOR));
            } else if (i4 == 45) {
                onBackPressed();
            } else if (i4 != 46) {
                switch (i4) {
                    case 16:
                        int readInt3 = parcel.readInt();
                        parcel.enforceNoDataAvail();
                        notifyAccessibilityButtonClicked(readInt3);
                        break;
                    case 17:
                        notifyAccessibilityButtonLongClicked();
                        break;
                    case 18:
                        stopScreenPinning();
                        break;
                    case 19:
                        float readFloat2 = parcel.readFloat();
                        parcel.enforceNoDataAvail();
                        onAssistantGestureCompletion(readFloat2);
                        break;
                    default:
                        switch (i4) {
                            case 48:
                                boolean readBoolean2 = parcel.readBoolean();
                                boolean readBoolean3 = parcel.readBoolean();
                                parcel.enforceNoDataAvail();
                                notifyTaskbarStatus(readBoolean2, readBoolean3);
                                break;
                            case 49:
                                boolean readBoolean4 = parcel.readBoolean();
                                parcel.enforceNoDataAvail();
                                notifyTaskbarAutohideSuspend(readBoolean4);
                                break;
                            case 50:
                                onImeSwitcherPressed();
                                break;
                            case 51:
                                toggleNotificationPanel();
                                break;
                            case 52:
                                parcel.enforceNoDataAvail();
                                takeScreenshot((ScreenshotRequest) parcel.readTypedObject(ScreenshotRequest.CREATOR));
                                break;
                            case 53:
                                parcel.enforceNoDataAvail();
                                onStatusBarTrackpadEvent((MotionEvent) parcel.readTypedObject(MotionEvent.CREATOR));
                                break;
                            case 54:
                                int[] createIntArray = parcel.createIntArray();
                                parcel.enforceNoDataAvail();
                                setAssistantOverridesRequested(createIntArray);
                                break;
                            default:
                                return super.onTransact(i4, parcel, parcel2, i5);
                        }
                }
            } else {
                boolean readBoolean5 = parcel.readBoolean();
                parcel.enforceNoDataAvail();
                setHomeRotationEnabled(readBoolean5);
            }
            return true;
        }
    }

    void expandNotificationPanel();

    void notifyAccessibilityButtonClicked(int i4);

    void notifyAccessibilityButtonLongClicked();

    void notifyPrioritizedRotation(int i4);

    void notifyTaskbarAutohideSuspend(boolean z4);

    void notifyTaskbarStatus(boolean z4, boolean z5);

    void onAssistantGestureCompletion(float f4);

    void onAssistantProgress(float f4);

    void onBackPressed();

    void onImeSwitcherPressed();

    void onOverviewShown(boolean z4);

    void onStatusBarTouchEvent(MotionEvent motionEvent);

    void onStatusBarTrackpadEvent(MotionEvent motionEvent);

    void setAssistantOverridesRequested(int[] iArr);

    void setHomeRotationEnabled(boolean z4);

    void startAssistant(Bundle bundle);

    void startScreenPinning(int i4);

    void stopScreenPinning();

    void takeScreenshot(ScreenshotRequest screenshotRequest);

    void toggleNotificationPanel();
}
