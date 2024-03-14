package com.google.android.libraries.launcherclient;

import I1.a;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.WindowManager;
import com.google.android.aidl.BaseStub;
import h2.g;
/* loaded from: classes.dex */
public interface ILauncherOverlay extends IInterface {

    /* loaded from: classes.dex */
    public abstract class Stub extends BaseStub implements ILauncherOverlay {

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int f7682d = 0;

        /* loaded from: classes.dex */
        public final class Proxy implements ILauncherOverlay, IInterface {
            private final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final Parcel a() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.libraries.launcherclient.ILauncherOverlay");
                return obtain;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void b(Parcel parcel, int i4) {
                try {
                    this.mRemote.transact(i4, parcel, null, 1);
                } finally {
                    parcel.recycle();
                }
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void closeOverlay(int i4) {
                Parcel a4 = a();
                a4.writeInt(i4);
                b(a4, 6);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void endScroll() {
                b(a(), 3);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void onPause() {
                b(a(), 7);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void onResume() {
                b(a(), 8);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void onScroll(float f4) {
                Parcel a4 = a();
                a4.writeFloat(f4);
                b(a4, 2);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void openOverlay(int i4) {
                Parcel a4 = a();
                a4.writeInt(i4);
                b(a4, 9);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void setActivityState(int i4) {
                Parcel a4 = a();
                a4.writeInt(i4);
                b(a4, 16);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void startScroll() {
                b(a(), 1);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final boolean startSearch(byte[] bArr, Bundle bundle) {
                Parcel a4 = a();
                a4.writeByteArray(bArr);
                a.a(a4, bundle);
                Parcel obtain = Parcel.obtain();
                try {
                    try {
                        this.mRemote.transact(17, a4, obtain, 0);
                        obtain.readException();
                        a4.recycle();
                        boolean z4 = obtain.readInt() != 0;
                        obtain.recycle();
                        return z4;
                    } catch (RuntimeException e4) {
                        obtain.recycle();
                        throw e4;
                    }
                } catch (Throwable th) {
                    a4.recycle();
                    throw th;
                }
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void windowAttached(WindowManager.LayoutParams layoutParams, g gVar, int i4) {
                Parcel a4 = a();
                a.a(a4, layoutParams);
                if (gVar == null) {
                    a4.writeStrongBinder(null);
                } else {
                    a4.writeStrongBinder(gVar);
                }
                a4.writeInt(i4);
                b(a4, 4);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void windowAttached2(Bundle bundle, g gVar) {
                Parcel a4 = a();
                a.a(a4, bundle);
                if (gVar == null) {
                    a4.writeStrongBinder(null);
                } else {
                    a4.writeStrongBinder(gVar);
                }
                b(a4, 14);
            }

            @Override // com.google.android.libraries.launcherclient.ILauncherOverlay
            public final void windowDetached(boolean z4) {
                Parcel a4 = a();
                int i4 = a.f558a;
                a4.writeInt(z4 ? 1 : 0);
                b(a4, 5);
            }
        }
    }

    void closeOverlay(int i4);

    void endScroll();

    void onPause();

    void onResume();

    void onScroll(float f4);

    void openOverlay(int i4);

    void setActivityState(int i4);

    void startScroll();

    boolean startSearch(byte[] bArr, Bundle bundle);

    void windowAttached(WindowManager.LayoutParams layoutParams, g gVar, int i4);

    void windowAttached2(Bundle bundle, g gVar);

    void windowDetached(boolean z4);
}
