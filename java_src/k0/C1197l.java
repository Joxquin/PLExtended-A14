package k0;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* renamed from: k0.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1197l extends View.BaseSavedState {
    public static final Parcelable.Creator CREATOR = new C1196k();

    /* renamed from: d  reason: collision with root package name */
    public String f11114d;

    /* renamed from: e  reason: collision with root package name */
    public int f11115e;

    /* renamed from: f  reason: collision with root package name */
    public float f11116f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11117g;

    /* renamed from: h  reason: collision with root package name */
    public String f11118h;

    /* renamed from: i  reason: collision with root package name */
    public int f11119i;

    /* renamed from: j  reason: collision with root package name */
    public int f11120j;

    public C1197l(Parcel parcel) {
        super(parcel);
        this.f11114d = parcel.readString();
        this.f11116f = parcel.readFloat();
        this.f11117g = parcel.readInt() == 1;
        this.f11118h = parcel.readString();
        this.f11119i = parcel.readInt();
        this.f11120j = parcel.readInt();
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.f11114d);
        parcel.writeFloat(this.f11116f);
        parcel.writeInt(this.f11117g ? 1 : 0);
        parcel.writeString(this.f11118h);
        parcel.writeInt(this.f11119i);
        parcel.writeInt(this.f11120j);
    }
}
