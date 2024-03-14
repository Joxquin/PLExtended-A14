package N;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public int f1379a;

    /* renamed from: b  reason: collision with root package name */
    public int f1380b;

    /* renamed from: c  reason: collision with root package name */
    public float f1381c;

    /* renamed from: d  reason: collision with root package name */
    public float f1382d;

    /* renamed from: h  reason: collision with root package name */
    public float f1386h;

    /* renamed from: i  reason: collision with root package name */
    public int f1387i;

    /* renamed from: e  reason: collision with root package name */
    public long f1383e = Long.MIN_VALUE;

    /* renamed from: g  reason: collision with root package name */
    public long f1385g = -1;

    /* renamed from: f  reason: collision with root package name */
    public long f1384f = 0;

    public final float a(long j4) {
        long j5 = this.f1383e;
        if (j4 < j5) {
            return 0.0f;
        }
        long j6 = this.f1385g;
        if (j6 < 0 || j4 < j6) {
            return d.b(((float) (j4 - j5)) / this.f1379a, 0.0f, 1.0f) * 0.5f;
        }
        float f4 = this.f1386h;
        return (d.b(((float) (j4 - j6)) / this.f1387i, 0.0f, 1.0f) * f4) + (1.0f - f4);
    }
}
