package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel inParcel) {
        kotlin.jvm.internal.h.e(inParcel, "inParcel");
        Parcelable readParcelable = inParcel.readParcelable(IntentSender.class.getClassLoader());
        kotlin.jvm.internal.h.b(readParcelable);
        return new k((IntentSender) readParcelable, (Intent) inParcel.readParcelable(Intent.class.getClassLoader()), inParcel.readInt(), inParcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new k[i4];
    }
}
