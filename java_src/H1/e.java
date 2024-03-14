package H1;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
/* loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator CREATOR = new d();

    /* renamed from: d  reason: collision with root package name */
    public final Rect f536d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f537e;

    /* renamed from: f  reason: collision with root package name */
    public final Rect f538f;

    /* renamed from: g  reason: collision with root package name */
    public final float f539g;

    /* renamed from: h  reason: collision with root package name */
    public final float f540h;

    /* renamed from: i  reason: collision with root package name */
    public final float f541i;

    /* renamed from: j  reason: collision with root package name */
    public final float f542j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f543k;

    /* renamed from: l  reason: collision with root package name */
    public final int f544l;

    /* renamed from: m  reason: collision with root package name */
    public final int f545m;

    public e(Rect rect, Rect rect2, int i4, int i5) {
        this.f536d = rect;
        this.f537e = rect2;
        this.f544l = i4;
        this.f545m = i5;
        if (rect2.top > rect.top) {
            this.f538f = new Rect(rect.left, rect.bottom, rect.right, rect2.top);
            this.f543k = true;
        } else {
            this.f538f = new Rect(rect.right, rect.top, rect2.left, rect.bottom);
            this.f543k = false;
        }
        float f4 = rect2.right - rect.left;
        float f5 = rect2.bottom - rect.top;
        this.f540h = rect.width() / f4;
        this.f539g = rect.height() / f5;
        this.f541i = this.f538f.width() / f4;
        this.f542j = this.f538f.height() / f5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            return Objects.equals(this.f536d, eVar.f536d) && Objects.equals(this.f537e, eVar.f537e) && this.f544l == eVar.f544l && this.f545m == eVar.f545m;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f536d, this.f537e, Integer.valueOf(this.f544l), Integer.valueOf(this.f545m));
    }

    public final String toString() {
        return "LeftTop: " + this.f536d + ", taskId: " + this.f544l + "\nRightBottom: " + this.f537e + ", taskId: " + this.f545m + "\nDivider: " + this.f538f + "\nAppsVertical? " + this.f543k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeTypedObject(this.f536d, i4);
        parcel.writeTypedObject(this.f537e, i4);
        parcel.writeTypedObject(this.f538f, i4);
        parcel.writeFloat(this.f539g);
        parcel.writeFloat(this.f540h);
        parcel.writeBoolean(this.f543k);
        parcel.writeInt(this.f544l);
        parcel.writeInt(this.f545m);
        parcel.writeFloat(this.f541i);
        parcel.writeFloat(this.f542j);
    }

    public e(Parcel parcel) {
        this.f536d = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.f537e = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.f538f = (Rect) parcel.readTypedObject(Rect.CREATOR);
        this.f539g = parcel.readFloat();
        this.f540h = parcel.readFloat();
        this.f543k = parcel.readBoolean();
        this.f544l = parcel.readInt();
        this.f545m = parcel.readInt();
        this.f541i = parcel.readInt();
        this.f542j = parcel.readInt();
    }
}
