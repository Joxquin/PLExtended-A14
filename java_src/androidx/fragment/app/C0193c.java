package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0193c implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0191b();

    /* renamed from: d  reason: collision with root package name */
    public final int[] f3386d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f3387e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f3388f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f3389g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3390h;

    /* renamed from: i  reason: collision with root package name */
    public final String f3391i;

    /* renamed from: j  reason: collision with root package name */
    public final int f3392j;

    /* renamed from: k  reason: collision with root package name */
    public final int f3393k;

    /* renamed from: l  reason: collision with root package name */
    public final CharSequence f3394l;

    /* renamed from: m  reason: collision with root package name */
    public final int f3395m;

    /* renamed from: n  reason: collision with root package name */
    public final CharSequence f3396n;

    /* renamed from: o  reason: collision with root package name */
    public final ArrayList f3397o;

    /* renamed from: p  reason: collision with root package name */
    public final ArrayList f3398p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f3399q;

    public C0193c(C0189a c0189a) {
        int size = c0189a.f3362a.size();
        this.f3386d = new int[size * 6];
        if (c0189a.f3368g) {
            this.f3387e = new ArrayList(size);
            this.f3388f = new int[size];
            this.f3389g = new int[size];
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                B0 b02 = (B0) c0189a.f3362a.get(i4);
                int i6 = i5 + 1;
                this.f3386d[i5] = b02.f3234a;
                ArrayList arrayList = this.f3387e;
                K k4 = b02.f3235b;
                arrayList.add(k4 != null ? k4.mWho : null);
                int[] iArr = this.f3386d;
                int i7 = i6 + 1;
                iArr[i6] = b02.f3236c ? 1 : 0;
                int i8 = i7 + 1;
                iArr[i7] = b02.f3237d;
                int i9 = i8 + 1;
                iArr[i8] = b02.f3238e;
                int i10 = i9 + 1;
                iArr[i9] = b02.f3239f;
                iArr[i10] = b02.f3240g;
                this.f3388f[i4] = b02.f3241h.ordinal();
                this.f3389g[i4] = b02.f3242i.ordinal();
                i4++;
                i5 = i10 + 1;
            }
            this.f3390h = c0189a.f3367f;
            this.f3391i = c0189a.f3370i;
            this.f3392j = c0189a.f3381t;
            this.f3393k = c0189a.f3371j;
            this.f3394l = c0189a.f3372k;
            this.f3395m = c0189a.f3373l;
            this.f3396n = c0189a.f3374m;
            this.f3397o = c0189a.f3375n;
            this.f3398p = c0189a.f3376o;
            this.f3399q = c0189a.f3377p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeIntArray(this.f3386d);
        parcel.writeStringList(this.f3387e);
        parcel.writeIntArray(this.f3388f);
        parcel.writeIntArray(this.f3389g);
        parcel.writeInt(this.f3390h);
        parcel.writeString(this.f3391i);
        parcel.writeInt(this.f3392j);
        parcel.writeInt(this.f3393k);
        TextUtils.writeToParcel(this.f3394l, parcel, 0);
        parcel.writeInt(this.f3395m);
        TextUtils.writeToParcel(this.f3396n, parcel, 0);
        parcel.writeStringList(this.f3397o);
        parcel.writeStringList(this.f3398p);
        parcel.writeInt(this.f3399q ? 1 : 0);
    }

    public C0193c(Parcel parcel) {
        this.f3386d = parcel.createIntArray();
        this.f3387e = parcel.createStringArrayList();
        this.f3388f = parcel.createIntArray();
        this.f3389g = parcel.createIntArray();
        this.f3390h = parcel.readInt();
        this.f3391i = parcel.readString();
        this.f3392j = parcel.readInt();
        this.f3393k = parcel.readInt();
        this.f3394l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3395m = parcel.readInt();
        this.f3396n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3397o = parcel.createStringArrayList();
        this.f3398p = parcel.createStringArrayList();
        this.f3399q = parcel.readInt() != 0;
    }
}
