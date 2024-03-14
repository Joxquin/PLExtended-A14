package F2;

import android.graphics.Canvas;
import android.graphics.RectF;
/* renamed from: F2.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0009h extends C2.i {

    /* renamed from: C  reason: collision with root package name */
    public final RectF f450C;

    public C0009h() {
        this(null);
    }

    @Override // C2.i
    public final void h(Canvas canvas) {
        if (this.f450C.isEmpty()) {
            super.h(canvas);
            return;
        }
        canvas.save();
        canvas.clipOutRect(this.f450C);
        super.h(canvas);
        canvas.restore();
    }

    public final void p(float f4, float f5, float f6, float f7) {
        RectF rectF = this.f450C;
        if (f4 == rectF.left && f5 == rectF.top && f6 == rectF.right && f7 == rectF.bottom) {
            return;
        }
        rectF.set(f4, f5, f6, f7);
        invalidateSelf();
    }

    public C0009h(C2.n nVar) {
        super(nVar == null ? new C2.n() : nVar);
        this.f450C = new RectF();
    }
}
