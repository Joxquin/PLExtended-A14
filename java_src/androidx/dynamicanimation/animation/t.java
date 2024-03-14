package androidx.dynamicanimation.animation;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public double f3214a;

    /* renamed from: b  reason: collision with root package name */
    public double f3215b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3216c;

    /* renamed from: d  reason: collision with root package name */
    public double f3217d;

    /* renamed from: e  reason: collision with root package name */
    public double f3218e;

    /* renamed from: f  reason: collision with root package name */
    public double f3219f;

    /* renamed from: g  reason: collision with root package name */
    public double f3220g;

    /* renamed from: h  reason: collision with root package name */
    public double f3221h;

    /* renamed from: i  reason: collision with root package name */
    public double f3222i;

    /* renamed from: j  reason: collision with root package name */
    public final i f3223j;

    public t() {
        this.f3214a = Math.sqrt(1500.0d);
        this.f3215b = 0.5d;
        this.f3216c = false;
        this.f3222i = Double.MAX_VALUE;
        this.f3223j = new i();
    }

    public final void a(float f4) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f3215b = f4;
        this.f3216c = false;
    }

    public final void b(float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f3214a = Math.sqrt(f4);
        this.f3216c = false;
    }

    public final i c(double d4, double d5, long j4) {
        double cos;
        double d6;
        if (!this.f3216c) {
            if (this.f3222i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d7 = this.f3215b;
            if (d7 > 1.0d) {
                double d8 = this.f3214a;
                this.f3219f = (Math.sqrt((d7 * d7) - 1.0d) * d8) + ((-d7) * d8);
                double d9 = this.f3215b;
                double d10 = this.f3214a;
                this.f3220g = ((-d9) * d10) - (Math.sqrt((d9 * d9) - 1.0d) * d10);
            } else if (d7 >= 0.0d && d7 < 1.0d) {
                this.f3221h = Math.sqrt(1.0d - (d7 * d7)) * this.f3214a;
            }
            this.f3216c = true;
        }
        double d11 = j4 / 1000.0d;
        double d12 = d4 - this.f3222i;
        double d13 = this.f3215b;
        if (d13 > 1.0d) {
            double d14 = this.f3220g;
            double d15 = this.f3219f;
            double d16 = d12 - (((d14 * d12) - d5) / (d14 - d15));
            double d17 = ((d12 * d14) - d5) / (d14 - d15);
            d6 = (Math.pow(2.718281828459045d, this.f3219f * d11) * d17) + (Math.pow(2.718281828459045d, d14 * d11) * d16);
            double d18 = this.f3220g;
            double pow = Math.pow(2.718281828459045d, d18 * d11) * d16 * d18;
            double d19 = this.f3219f;
            cos = (Math.pow(2.718281828459045d, d19 * d11) * d17 * d19) + pow;
        } else if (d13 == 1.0d) {
            double d20 = this.f3214a;
            double d21 = (d20 * d12) + d5;
            double d22 = (d21 * d11) + d12;
            double pow2 = Math.pow(2.718281828459045d, (-d20) * d11) * d22;
            double pow3 = Math.pow(2.718281828459045d, (-this.f3214a) * d11) * d22;
            double d23 = this.f3214a;
            cos = (Math.pow(2.718281828459045d, (-d23) * d11) * d21) + (pow3 * (-d23));
            d6 = pow2;
        } else {
            double d24 = 1.0d / this.f3221h;
            double d25 = this.f3214a;
            double d26 = ((d13 * d25 * d12) + d5) * d24;
            double sin = ((Math.sin(this.f3221h * d11) * d26) + (Math.cos(this.f3221h * d11) * d12)) * Math.pow(2.718281828459045d, (-d13) * d25 * d11);
            double d27 = this.f3214a;
            double d28 = this.f3215b;
            double d29 = (-d27) * sin * d28;
            double pow4 = Math.pow(2.718281828459045d, (-d28) * d27 * d11);
            double d30 = this.f3221h;
            double d31 = (-d30) * d12;
            double d32 = this.f3221h;
            cos = (((Math.cos(d32 * d11) * d26 * d32) + (Math.sin(d30 * d11) * d31)) * pow4) + d29;
            d6 = sin;
        }
        i iVar = this.f3223j;
        iVar.f3181a = (float) (d6 + this.f3222i);
        iVar.f3182b = (float) cos;
        return iVar;
    }

    public t(float f4) {
        this.f3214a = Math.sqrt(1500.0d);
        this.f3215b = 0.5d;
        this.f3216c = false;
        this.f3223j = new i();
        this.f3222i = f4;
    }
}
