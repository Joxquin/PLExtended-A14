package C2;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
/* loaded from: classes.dex */
public final class t extends v {

    /* renamed from: h  reason: collision with root package name */
    public static final RectF f228h = new RectF();
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public float f229b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public float f230c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public float f231d;
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public float f232e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public float f233f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public float f234g;

    public t(float f4, float f5, float f6, float f7) {
        this.f229b = f4;
        this.f230c = f5;
        this.f231d = f6;
        this.f232e = f7;
    }

    @Override // C2.v
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f237a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f228h;
        rectF.set(this.f229b, this.f230c, this.f231d, this.f232e);
        path.arcTo(rectF, this.f233f, this.f234g, false);
        path.transform(matrix);
    }
}
