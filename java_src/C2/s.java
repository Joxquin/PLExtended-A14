package C2;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
/* loaded from: classes.dex */
public final class s extends w {

    /* renamed from: c  reason: collision with root package name */
    public final u f225c;

    /* renamed from: d  reason: collision with root package name */
    public final float f226d;

    /* renamed from: e  reason: collision with root package name */
    public final float f227e;

    public s(u uVar, float f4, float f5) {
        this.f225c = uVar;
        this.f226d = f4;
        this.f227e = f5;
    }

    @Override // C2.w
    public final void a(Matrix matrix, B2.a aVar, int i4, Canvas canvas) {
        u uVar = this.f225c;
        float f4 = uVar.f236c;
        float f5 = this.f227e;
        float f6 = uVar.f235b;
        float f7 = this.f226d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f4 - f5, f6 - f7), 0.0f);
        Matrix matrix2 = this.f239a;
        matrix2.set(matrix);
        matrix2.preTranslate(f7, f5);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i4;
        rectF.offset(0.0f, -i4);
        int[] iArr = B2.a.f111i;
        iArr[0] = aVar.f120f;
        iArr[1] = aVar.f119e;
        iArr[2] = aVar.f118d;
        Paint paint = aVar.f117c;
        float f8 = rectF.left;
        paint.setShader(new LinearGradient(f8, rectF.top, f8, rectF.bottom, iArr, B2.a.f112j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        u uVar = this.f225c;
        return (float) Math.toDegrees(Math.atan((uVar.f236c - this.f227e) / (uVar.f235b - this.f226d)));
    }
}
