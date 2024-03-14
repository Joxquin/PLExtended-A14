package C2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.List;
/* loaded from: classes.dex */
public final class q extends w {

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f222c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Matrix f223d;

    public q(List list, Matrix matrix) {
        this.f222c = list;
        this.f223d = matrix;
    }

    @Override // C2.w
    public final void a(Matrix matrix, B2.a aVar, int i4, Canvas canvas) {
        for (w wVar : this.f222c) {
            wVar.a(this.f223d, aVar, i4, canvas);
        }
    }
}
