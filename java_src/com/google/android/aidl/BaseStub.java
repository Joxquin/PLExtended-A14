package com.google.android.aidl;

import I1.a;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback$Stub;
import h2.g;
/* loaded from: classes.dex */
public abstract class BaseStub extends Binder implements IInterface {
    public BaseStub() {
        attachInterface(this, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
    }

    public static void enforceNoDataAvail(Parcel parcel) {
        int i4 = a.f558a;
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(56);
        sb.append("Parcel data not fully consumed, unread size: ");
        sb.append(dataAvail);
        throw new BadParcelableException(sb.toString());
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
        boolean z4;
        if (i4 > 16777215) {
            z4 = super.onTransact(i4, parcel, parcel2, i5);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z4 = false;
        }
        if (z4) {
            return true;
        }
        ILauncherOverlayCallback$Stub iLauncherOverlayCallback$Stub = (ILauncherOverlayCallback$Stub) this;
        if (i4 == 1) {
            float readFloat = parcel.readFloat();
            enforceNoDataAvail(parcel);
            g gVar = (g) iLauncherOverlayCallback$Stub;
            gVar.f9504d.removeMessages(2);
            Message.obtain(gVar.f9504d, 2, Float.valueOf(readFloat)).sendToTarget();
            if (readFloat > 0.0f && gVar.f9509i) {
                gVar.f9509i = false;
            }
        } else if (i4 == 2) {
            int readInt = parcel.readInt();
            enforceNoDataAvail(parcel);
            Bundle bundle = new Bundle();
            bundle.putInt("service_status", readInt);
            Message.obtain(((g) iLauncherOverlayCallback$Stub).f9504d, 5, 0, 0, bundle).sendToTarget();
        } else if (i4 != 3) {
            return false;
        } else {
            Parcelable.Creator creator = Bundle.CREATOR;
            int i6 = a.f558a;
            Parcelable parcelable = parcel.readInt() == 0 ? null : (Parcelable) creator.createFromParcel(parcel);
            enforceNoDataAvail(parcel);
            Message.obtain(((g) iLauncherOverlayCallback$Stub).f9504d, 5, 0, 0, (Bundle) parcelable).sendToTarget();
        }
        return true;
    }
}
