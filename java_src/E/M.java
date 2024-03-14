package e;
/* loaded from: classes.dex */
public final class M {

    /* renamed from: d  reason: collision with root package name */
    public static M f8860d;

    /* renamed from: a  reason: collision with root package name */
    public long f8861a;

    /* renamed from: b  reason: collision with root package name */
    public long f8862b;

    /* renamed from: c  reason: collision with root package name */
    public int f8863c;

    public final void a(double d4, double d5, long j4) {
        float f4;
        float f5;
        double d6;
        double d7 = (0.01720197f * (((float) (j4 - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(f5 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * f5) * 3.4906598739326E-4d) + (Math.sin(d7) * 0.03341960161924362d) + d7 + 1.796593063d + 3.141592653589793d;
        double sin2 = (Math.sin(2.0d * sin) * (-0.0069d)) + (Math.sin(d7) * 0.0053d) + ((float) Math.round((f4 - 9.0E-4f) - d6)) + 9.0E-4f + ((-d5) / 360.0d);
        double asin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(sin));
        double d8 = 0.01745329238474369d * d4;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(asin) * Math.sin(d8))) / (Math.cos(asin) * Math.cos(d8));
        if (sin3 >= 1.0d) {
            this.f8863c = 1;
            this.f8861a = -1L;
            this.f8862b = -1L;
        } else if (sin3 <= -1.0d) {
            this.f8863c = 0;
            this.f8861a = -1L;
            this.f8862b = -1L;
        } else {
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f8861a = Math.round((sin2 + acos) * 8.64E7d) + 946728000000L;
            long round = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            this.f8862b = round;
            if (round >= j4 || this.f8861a <= j4) {
                this.f8863c = 1;
            } else {
                this.f8863c = 0;
            }
        }
    }
}
