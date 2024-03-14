package n2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes.dex */
public final class h extends P.c {
    public static final Parcelable.Creator CREATOR = new g();

    /* renamed from: f  reason: collision with root package name */
    public final int f11811f;

    /* renamed from: g  reason: collision with root package name */
    public final int f11812g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f11813h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f11814i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f11815j;

    public h(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11811f = parcel.readInt();
        this.f11812g = parcel.readInt();
        this.f11813h = parcel.readInt() == 1;
        this.f11814i = parcel.readInt() == 1;
        this.f11815j = parcel.readInt() == 1;
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f11811f);
        parcel.writeInt(this.f11812g);
        parcel.writeInt(this.f11813h ? 1 : 0);
        parcel.writeInt(this.f11814i ? 1 : 0);
        parcel.writeInt(this.f11815j ? 1 : 0);
    }

    public h(Parcelable parcelable, BottomSheetBehavior bottomSheetBehavior) {
        super(parcelable);
        this.f11811f = bottomSheetBehavior.f7759J;
        this.f11812g = bottomSheetBehavior.f7781d;
        this.f11813h = bottomSheetBehavior.f7778b;
        this.f11814i = bottomSheetBehavior.f7756G;
        this.f11815j = bottomSheetBehavior.f7757H;
    }
}
