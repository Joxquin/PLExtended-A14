package s0;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.x;
/* loaded from: classes.dex */
public final class h extends b {

    /* renamed from: D  reason: collision with root package name */
    public final RectF f12256D;

    /* renamed from: E  reason: collision with root package name */
    public final C1265a f12257E;

    /* renamed from: F  reason: collision with root package name */
    public final float[] f12258F;

    /* renamed from: G  reason: collision with root package name */
    public final Path f12259G;

    /* renamed from: H  reason: collision with root package name */
    public final e f12260H;

    /* renamed from: I  reason: collision with root package name */
    public x f12261I;

    public h(com.airbnb.lottie.a aVar, e eVar) {
        super(aVar, eVar);
        this.f12256D = new RectF();
        C1265a c1265a = new C1265a();
        this.f12257E = c1265a;
        this.f12258F = new float[8];
        this.f12259G = new Path();
        this.f12260H = eVar;
        c1265a.setAlpha(0);
        c1265a.setStyle(Paint.Style.FILL);
        c1265a.setColor(eVar.f12241l);
    }

    @Override // s0.b, m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        super.a(rectF, matrix, z4);
        RectF rectF2 = this.f12256D;
        e eVar = this.f12260H;
        rectF2.set(0.0f, 0.0f, eVar.f12239j, eVar.f12240k);
        this.f12204o.mapRect(rectF2);
        rectF.set(rectF2);
    }

    @Override // s0.b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        if (obj == InterfaceC1182G.f11058K) {
            if (cVar == null) {
                this.f12261I = null;
            } else {
                this.f12261I = new x(cVar, null);
            }
        }
    }

    @Override // s0.b
    public final void l(Canvas canvas, Matrix matrix, int i4) {
        n0.f fVar;
        e eVar = this.f12260H;
        int alpha = Color.alpha(eVar.f12241l);
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((((alpha / 255.0f) * (this.f12213x.f11796j == null ? 100 : ((Integer) fVar.f()).intValue())) / 100.0f) * (i4 / 255.0f) * 255.0f);
        C1265a c1265a = this.f12257E;
        c1265a.setAlpha(intValue);
        x xVar = this.f12261I;
        if (xVar != null) {
            c1265a.setColorFilter((ColorFilter) xVar.f());
        }
        if (intValue > 0) {
            float[] fArr = this.f12258F;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f4 = eVar.f12239j;
            fArr[2] = f4;
            fArr[3] = 0.0f;
            fArr[4] = f4;
            float f5 = eVar.f12240k;
            fArr[5] = f5;
            fArr[6] = 0.0f;
            fArr[7] = f5;
            matrix.mapPoints(fArr);
            Path path = this.f12259G;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, c1265a);
        }
    }
}
