package B2;

import android.graphics.Paint;
import android.graphics.Path;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f111i = new int[3];

    /* renamed from: j  reason: collision with root package name */
    public static final float[] f112j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f113k = new int[4];

    /* renamed from: l  reason: collision with root package name */
    public static final float[] f114l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    public final Paint f115a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f116b;

    /* renamed from: c  reason: collision with root package name */
    public final Paint f117c;

    /* renamed from: d  reason: collision with root package name */
    public int f118d;

    /* renamed from: e  reason: collision with root package name */
    public int f119e;

    /* renamed from: f  reason: collision with root package name */
    public int f120f;

    /* renamed from: g  reason: collision with root package name */
    public final Path f121g = new Path();

    /* renamed from: h  reason: collision with root package name */
    public final Paint f122h;

    public a() {
        Paint paint = new Paint();
        this.f122h = paint;
        this.f115a = new Paint();
        a(-16777216);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f116b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f117c = new Paint(paint2);
    }

    public final void a(int i4) {
        this.f118d = E.a.k(i4, 68);
        this.f119e = E.a.k(i4, 20);
        this.f120f = E.a.k(i4, 0);
        this.f115a.setColor(this.f118d);
    }
}
