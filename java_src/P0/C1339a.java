package p0;

import android.graphics.PointF;
/* renamed from: p0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1339a {

    /* renamed from: a  reason: collision with root package name */
    public final PointF f11897a;

    /* renamed from: b  reason: collision with root package name */
    public final PointF f11898b;

    /* renamed from: c  reason: collision with root package name */
    public final PointF f11899c;

    public C1339a() {
        this.f11897a = new PointF();
        this.f11898b = new PointF();
        this.f11899c = new PointF();
    }

    public final String toString() {
        PointF pointF = this.f11899c;
        Float valueOf = Float.valueOf(pointF.x);
        Float valueOf2 = Float.valueOf(pointF.y);
        PointF pointF2 = this.f11897a;
        Float valueOf3 = Float.valueOf(pointF2.x);
        Float valueOf4 = Float.valueOf(pointF2.y);
        PointF pointF3 = this.f11898b;
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", valueOf, valueOf2, valueOf3, valueOf4, Float.valueOf(pointF3.x), Float.valueOf(pointF3.y));
    }

    public C1339a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f11897a = pointF;
        this.f11898b = pointF2;
        this.f11899c = pointF3;
    }
}
