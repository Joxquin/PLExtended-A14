package C2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
/* loaded from: classes.dex */
public final class r extends w {

    /* renamed from: c  reason: collision with root package name */
    public final t f224c;

    public r(t tVar) {
        this.f224c = tVar;
    }

    @Override // C2.w
    public final void a(Matrix matrix, B2.a aVar, int i4, Canvas canvas) {
        t tVar = this.f224c;
        float f4 = tVar.f233f;
        float f5 = tVar.f234g;
        RectF rectF = new RectF(tVar.f229b, tVar.f230c, tVar.f231d, tVar.f232e);
        aVar.getClass();
        boolean z4 = f5 < 0.0f;
        Path path = aVar.f121g;
        int[] iArr = B2.a.f113k;
        if (z4) {
            iArr[0] = 0;
            iArr[1] = aVar.f120f;
            iArr[2] = aVar.f119e;
            iArr[3] = aVar.f118d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f4, f5);
            path.close();
            float f6 = -i4;
            rectF.inset(f6, f6);
            iArr[0] = 0;
            iArr[1] = aVar.f118d;
            iArr[2] = aVar.f119e;
            iArr[3] = aVar.f120f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f7 = 1.0f - (i4 / width);
        float[] fArr = B2.a.f114l;
        fArr[1] = f7;
        fArr[2] = ((1.0f - f7) / 2.0f) + f7;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = aVar.f116b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z4) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f122h);
        }
        canvas.drawArc(rectF, f4, f5, true, paint);
        canvas.restore();
    }
}
