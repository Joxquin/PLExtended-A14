package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class N0 implements Parcelable {
    public static final Parcelable.Creator CREATOR = new M0(0);

    /* renamed from: d  reason: collision with root package name */
    public int f3846d;

    /* renamed from: e  reason: collision with root package name */
    public int f3847e;

    /* renamed from: f  reason: collision with root package name */
    public int[] f3848f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3849g;

    public N0(Parcel parcel) {
        this.f3846d = parcel.readInt();
        this.f3847e = parcel.readInt();
        this.f3849g = parcel.readInt() == 1;
        int readInt = parcel.readInt();
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f3848f = iArr;
            parcel.readIntArray(iArr);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f3846d + ", mGapDir=" + this.f3847e + ", mHasUnwantedGapAfter=" + this.f3849g + ", mGapPerSpan=" + Arrays.toString(this.f3848f) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f3846d);
        parcel.writeInt(this.f3847e);
        parcel.writeInt(this.f3849g ? 1 : 0);
        int[] iArr = this.f3848f;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(iArr.length);
        parcel.writeIntArray(this.f3848f);
    }

    public N0() {
    }
}
