package p0;

import com.airbnb.lottie.model.DocumentData$Justification;
/* renamed from: p0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1340b {

    /* renamed from: a  reason: collision with root package name */
    public String f11900a;

    /* renamed from: b  reason: collision with root package name */
    public String f11901b;

    /* renamed from: c  reason: collision with root package name */
    public float f11902c;

    /* renamed from: d  reason: collision with root package name */
    public DocumentData$Justification f11903d;

    /* renamed from: e  reason: collision with root package name */
    public int f11904e;

    /* renamed from: f  reason: collision with root package name */
    public float f11905f;

    /* renamed from: g  reason: collision with root package name */
    public float f11906g;

    /* renamed from: h  reason: collision with root package name */
    public int f11907h;

    /* renamed from: i  reason: collision with root package name */
    public int f11908i;

    /* renamed from: j  reason: collision with root package name */
    public float f11909j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11910k;

    public C1340b(String str, String str2, float f4, DocumentData$Justification documentData$Justification, int i4, float f5, float f6, int i5, int i6, float f7, boolean z4) {
        this.f11900a = str;
        this.f11901b = str2;
        this.f11902c = f4;
        this.f11903d = documentData$Justification;
        this.f11904e = i4;
        this.f11905f = f5;
        this.f11906g = f6;
        this.f11907h = i5;
        this.f11908i = i6;
        this.f11909j = f7;
        this.f11910k = z4;
    }

    public final int hashCode() {
        int hashCode = this.f11901b.hashCode();
        int ordinal = ((this.f11903d.ordinal() + (((int) (((hashCode + (this.f11900a.hashCode() * 31)) * 31) + this.f11902c)) * 31)) * 31) + this.f11904e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f11905f);
        return (((ordinal * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f11907h;
    }

    public C1340b() {
    }
}
