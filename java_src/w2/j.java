package w2;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* loaded from: classes.dex */
public final class j implements TypeEvaluator {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f12761a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    public final float[] f12762b = new float[9];

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f12763c = new Matrix();

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ p f12764d;

    public j(p pVar) {
        this.f12764d = pVar;
    }

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f4, Object obj, Object obj2) {
        this.f12764d.f12796g = f4;
        ((Matrix) obj).getValues(this.f12761a);
        ((Matrix) obj2).getValues(this.f12762b);
        for (int i4 = 0; i4 < 9; i4++) {
            float[] fArr = this.f12762b;
            float f5 = fArr[i4];
            float f6 = this.f12761a[i4];
            fArr[i4] = w.f.a(f5, f6, f4, f6);
        }
        this.f12763c.setValues(this.f12762b);
        return this.f12763c;
    }
}
