package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    public final int f2456d;

    /* renamed from: e  reason: collision with root package name */
    public final Intent f2457e;

    public b(Intent intent, int i4) {
        this.f2456d = i4;
        this.f2457e = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i4 = this.f2456d;
        sb.append(i4 != -1 ? i4 != 0 ? String.valueOf(i4) : "RESULT_CANCELED" : "RESULT_OK");
        sb.append(", data=");
        sb.append(this.f2457e);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f2456d);
        parcel.writeInt(this.f2457e == null ? 0 : 1);
        Intent intent = this.f2457e;
        if (intent != null) {
            intent.writeToParcel(parcel, i4);
        }
    }

    public b(Parcel parcel) {
        this.f2456d = parcel.readInt();
        this.f2457e = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
