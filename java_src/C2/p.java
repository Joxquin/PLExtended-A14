package C2;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final x[] f210a = new x[4];

    /* renamed from: b  reason: collision with root package name */
    public final Matrix[] f211b = new Matrix[4];

    /* renamed from: c  reason: collision with root package name */
    public final Matrix[] f212c = new Matrix[4];

    /* renamed from: d  reason: collision with root package name */
    public final PointF f213d = new PointF();

    /* renamed from: e  reason: collision with root package name */
    public final Path f214e = new Path();

    /* renamed from: f  reason: collision with root package name */
    public final Path f215f = new Path();

    /* renamed from: g  reason: collision with root package name */
    public final x f216g = new x();

    /* renamed from: h  reason: collision with root package name */
    public final float[] f217h = new float[2];

    /* renamed from: i  reason: collision with root package name */
    public final float[] f218i = new float[2];

    /* renamed from: j  reason: collision with root package name */
    public final Path f219j = new Path();

    /* renamed from: k  reason: collision with root package name */
    public final Path f220k = new Path();

    /* renamed from: l  reason: collision with root package name */
    public final boolean f221l = true;

    public p() {
        for (int i4 = 0; i4 < 4; i4++) {
            this.f210a[i4] = new x();
            this.f211b[i4] = new Matrix();
            this.f212c[i4] = new Matrix();
        }
    }

    public final void a(n nVar, float f4, RectF rectF, g gVar, Path path) {
        int i4;
        Matrix[] matrixArr;
        float[] fArr;
        Matrix[] matrixArr2;
        x[] xVarArr;
        Path path2;
        g gVar2;
        char c4;
        Path path3;
        p pVar = this;
        n nVar2 = nVar;
        g gVar3 = gVar;
        Path path4 = path;
        path.rewind();
        Path path5 = pVar.f214e;
        path5.rewind();
        Path path6 = pVar.f215f;
        path6.rewind();
        path6.addRect(rectF, Path.Direction.CW);
        int i5 = 0;
        while (true) {
            i4 = 4;
            matrixArr = pVar.f212c;
            fArr = pVar.f217h;
            matrixArr2 = pVar.f211b;
            xVarArr = pVar.f210a;
            if (i5 >= 4) {
                break;
            }
            c cVar = i5 != 1 ? i5 != 2 ? i5 != 3 ? nVar2.f202f : nVar2.f201e : nVar2.f204h : nVar2.f203g;
            d dVar = i5 != 1 ? i5 != 2 ? i5 != 3 ? nVar2.f198b : nVar2.f197a : nVar2.f200d : nVar2.f199c;
            x xVar = xVarArr[i5];
            dVar.getClass();
            dVar.a(f4, cVar.a(rectF), xVar);
            int i6 = i5 + 1;
            float f5 = i6 * 90;
            matrixArr2[i5].reset();
            PointF pointF = pVar.f213d;
            if (i5 == 1) {
                path3 = path5;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i5 == 2) {
                path3 = path5;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i5 != 3) {
                path3 = path5;
                pointF.set(rectF.right, rectF.top);
            } else {
                path3 = path5;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i5].setTranslate(pointF.x, pointF.y);
            matrixArr2[i5].preRotate(f5);
            x xVar2 = xVarArr[i5];
            fArr[0] = xVar2.f242c;
            fArr[1] = xVar2.f243d;
            matrixArr2[i5].mapPoints(fArr);
            matrixArr[i5].reset();
            matrixArr[i5].setTranslate(fArr[0], fArr[1]);
            matrixArr[i5].preRotate(f5);
            i5 = i6;
            path5 = path3;
        }
        Path path7 = path5;
        char c5 = 1;
        char c6 = 0;
        int i7 = 0;
        while (i7 < i4) {
            x xVar3 = xVarArr[i7];
            fArr[c6] = xVar3.f240a;
            fArr[c5] = xVar3.f241b;
            matrixArr2[i7].mapPoints(fArr);
            if (i7 == 0) {
                path4.moveTo(fArr[c6], fArr[c5]);
            } else {
                path4.lineTo(fArr[c6], fArr[c5]);
            }
            xVarArr[i7].c(matrixArr2[i7], path4);
            if (gVar3 != null) {
                x xVar4 = xVarArr[i7];
                Matrix matrix = matrixArr2[i7];
                i iVar = gVar3.f136a;
                BitSet bitSet = iVar.f163g;
                xVar4.getClass();
                bitSet.set(i7, false);
                w[] wVarArr = iVar.f161e;
                xVar4.b(xVar4.f245f);
                wVarArr[i7] = new q(new ArrayList(xVar4.f247h), new Matrix(matrix));
            }
            int i8 = i7 + 1;
            int i9 = i8 % 4;
            x xVar5 = xVarArr[i7];
            fArr[0] = xVar5.f242c;
            fArr[1] = xVar5.f243d;
            matrixArr2[i7].mapPoints(fArr);
            x xVar6 = xVarArr[i9];
            float f6 = xVar6.f240a;
            float[] fArr2 = pVar.f218i;
            fArr2[0] = f6;
            fArr2[1] = xVar6.f241b;
            matrixArr2[i9].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            x xVar7 = xVarArr[i7];
            fArr[0] = xVar7.f242c;
            fArr[1] = xVar7.f243d;
            matrixArr2[i7].mapPoints(fArr);
            float abs = (i7 == 1 || i7 == 3) ? Math.abs(rectF.centerX() - fArr[0]) : Math.abs(rectF.centerY() - fArr[1]);
            x xVar8 = pVar.f216g;
            xVar8.e(0.0f, 270.0f, 0.0f);
            (i7 != 1 ? i7 != 2 ? i7 != 3 ? nVar2.f206j : nVar2.f205i : nVar2.f208l : nVar2.f207k).a(max, abs, f4, xVar8);
            Path path8 = pVar.f219j;
            path8.reset();
            xVar8.c(matrixArr[i7], path8);
            if (pVar.f221l && (pVar.b(path8, i7) || pVar.b(path8, i9))) {
                path8.op(path8, path6, Path.Op.DIFFERENCE);
                fArr[0] = xVar8.f240a;
                fArr[1] = xVar8.f241b;
                matrixArr[i7].mapPoints(fArr);
                path2 = path7;
                path2.moveTo(fArr[0], fArr[1]);
                xVar8.c(matrixArr[i7], path2);
                gVar2 = gVar;
                path4 = path;
            } else {
                path2 = path7;
                path4 = path;
                xVar8.c(matrixArr[i7], path4);
                gVar2 = gVar;
            }
            if (gVar2 != null) {
                Matrix matrix2 = matrixArr[i7];
                i iVar2 = gVar2.f136a;
                c4 = 0;
                iVar2.f163g.set(i7 + 4, false);
                w[] wVarArr2 = iVar2.f162f;
                xVar8.b(xVar8.f245f);
                wVarArr2[i7] = new q(new ArrayList(xVar8.f247h), new Matrix(matrix2));
            } else {
                c4 = 0;
            }
            pVar = this;
            c6 = c4;
            gVar3 = gVar2;
            path7 = path2;
            i7 = i8;
            c5 = 1;
            i4 = 4;
            nVar2 = nVar;
        }
        Path path9 = path7;
        path.close();
        path9.close();
        if (path9.isEmpty()) {
            return;
        }
        path4.op(path9, Path.Op.UNION);
    }

    public final boolean b(Path path, int i4) {
        Path path2 = this.f220k;
        path2.reset();
        this.f210a[i4].c(this.f211b[i4], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
