package J2;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: d  reason: collision with root package name */
    public Icon f846d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f847e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f848f;

    /* renamed from: g  reason: collision with root package name */
    public CharSequence f849g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f850h;

    /* renamed from: i  reason: collision with root package name */
    public CharSequence f851i;

    /* renamed from: j  reason: collision with root package name */
    public int f852j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f853k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f854l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f855m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f856n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f857o;

    public c(Parcel parcel) {
        this.f852j = 1;
        this.f846d = (Icon) parcel.readTypedObject(Icon.CREATOR);
        this.f852j = parcel.readInt();
        this.f853k = parcel.readBoolean();
        this.f854l = parcel.readBoolean();
        this.f855m = parcel.readBoolean();
        this.f856n = parcel.readBoolean();
        this.f857o = parcel.readBoolean();
        this.f847e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f848f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f849g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f850h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f851i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeTypedObject(this.f846d, i4);
        parcel.writeInt(this.f852j);
        parcel.writeBoolean(this.f853k);
        parcel.writeBoolean(this.f854l);
        parcel.writeBoolean(this.f855m);
        parcel.writeBoolean(this.f856n);
        parcel.writeBoolean(this.f857o);
        TextUtils.writeToParcel(this.f847e, parcel, i4);
        TextUtils.writeToParcel(this.f848f, parcel, i4);
        TextUtils.writeToParcel(this.f849g, parcel, i4);
        TextUtils.writeToParcel(this.f850h, parcel, i4);
        TextUtils.writeToParcel(this.f851i, parcel, i4);
    }

    public c() {
        this.f852j = 1;
    }
}
