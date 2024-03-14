package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public final class P0 implements Parcelable {
    public static final Parcelable.Creator CREATOR = new M0(1);

    /* renamed from: d  reason: collision with root package name */
    public int f3852d;

    /* renamed from: e  reason: collision with root package name */
    public int f3853e;

    /* renamed from: f  reason: collision with root package name */
    public int f3854f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f3855g;

    /* renamed from: h  reason: collision with root package name */
    public int f3856h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f3857i;

    /* renamed from: j  reason: collision with root package name */
    public List f3858j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3859k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3860l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3861m;

    public P0() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f3852d);
        parcel.writeInt(this.f3853e);
        parcel.writeInt(this.f3854f);
        if (this.f3854f > 0) {
            parcel.writeIntArray(this.f3855g);
        }
        parcel.writeInt(this.f3856h);
        if (this.f3856h > 0) {
            parcel.writeIntArray(this.f3857i);
        }
        parcel.writeInt(this.f3859k ? 1 : 0);
        parcel.writeInt(this.f3860l ? 1 : 0);
        parcel.writeInt(this.f3861m ? 1 : 0);
        parcel.writeList(this.f3858j);
    }

    public P0(Parcel parcel) {
        this.f3852d = parcel.readInt();
        this.f3853e = parcel.readInt();
        int readInt = parcel.readInt();
        this.f3854f = readInt;
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f3855g = iArr;
            parcel.readIntArray(iArr);
        }
        int readInt2 = parcel.readInt();
        this.f3856h = readInt2;
        if (readInt2 > 0) {
            int[] iArr2 = new int[readInt2];
            this.f3857i = iArr2;
            parcel.readIntArray(iArr2);
        }
        this.f3859k = parcel.readInt() == 1;
        this.f3860l = parcel.readInt() == 1;
        this.f3861m = parcel.readInt() == 1;
        this.f3858j = parcel.readArrayList(N0.class.getClassLoader());
    }

    public P0(P0 p02) {
        this.f3854f = p02.f3854f;
        this.f3852d = p02.f3852d;
        this.f3853e = p02.f3853e;
        this.f3855g = p02.f3855g;
        this.f3856h = p02.f3856h;
        this.f3857i = p02.f3857i;
        this.f3859k = p02.f3859k;
        this.f3860l = p02.f3860l;
        this.f3861m = p02.f3861m;
        this.f3858j = p02.f3858j;
    }
}
