package g0;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* renamed from: g0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0933b extends Property {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9402a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0933b(Class cls, String str, int i4) {
        super(cls, str);
        this.f9402a = i4;
    }

    public final void a(View view, PointF pointF) {
        switch (this.f9402a) {
            case 2:
                int left = view.getLeft();
                int top = view.getTop();
                int round = Math.round(pointF.x);
                int round2 = Math.round(pointF.y);
                N n4 = I.f9382a;
                view.setLeftTopRightBottom(left, top, round, round2);
                return;
            case 3:
                int round3 = Math.round(pointF.x);
                int round4 = Math.round(pointF.y);
                int right = view.getRight();
                int bottom = view.getBottom();
                N n5 = I.f9382a;
                view.setLeftTopRightBottom(round3, round4, right, bottom);
                return;
            default:
                int round5 = Math.round(pointF.x);
                int round6 = Math.round(pointF.y);
                N n6 = I.f9382a;
                view.setLeftTopRightBottom(round5, round6, view.getWidth() + round5, view.getHeight() + round6);
                return;
        }
    }

    public final void b(C0936e c0936e, PointF pointF) {
        switch (this.f9402a) {
            case 0:
                c0936e.getClass();
                c0936e.f9405a = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                c0936e.f9406b = round;
                int i4 = c0936e.f9410f + 1;
                c0936e.f9410f = i4;
                if (i4 == c0936e.f9411g) {
                    int i5 = c0936e.f9405a;
                    int i6 = c0936e.f9407c;
                    int i7 = c0936e.f9408d;
                    N n4 = I.f9382a;
                    c0936e.f9409e.setLeftTopRightBottom(i5, round, i6, i7);
                    c0936e.f9410f = 0;
                    c0936e.f9411g = 0;
                    return;
                }
                return;
            default:
                c0936e.getClass();
                c0936e.f9407c = Math.round(pointF.x);
                int round2 = Math.round(pointF.y);
                c0936e.f9408d = round2;
                int i8 = c0936e.f9411g + 1;
                c0936e.f9411g = i8;
                if (c0936e.f9410f == i8) {
                    int i9 = c0936e.f9405a;
                    int i10 = c0936e.f9406b;
                    int i11 = c0936e.f9407c;
                    N n5 = I.f9382a;
                    c0936e.f9409e.setLeftTopRightBottom(i9, i10, i11, round2);
                    c0936e.f9410f = 0;
                    c0936e.f9411g = 0;
                    return;
                }
                return;
        }
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        switch (this.f9402a) {
            case 0:
                C0936e c0936e = (C0936e) obj;
                return null;
            case 1:
                C0936e c0936e2 = (C0936e) obj;
                return null;
            case 2:
                View view = (View) obj;
                return null;
            case 3:
                View view2 = (View) obj;
                return null;
            default:
                View view3 = (View) obj;
                return null;
        }
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        switch (this.f9402a) {
            case 0:
                b((C0936e) obj, (PointF) obj2);
                return;
            case 1:
                b((C0936e) obj, (PointF) obj2);
                return;
            case 2:
                a((View) obj, (PointF) obj2);
                return;
            case 3:
                a((View) obj, (PointF) obj2);
                return;
            default:
                a((View) obj, (PointF) obj2);
                return;
        }
    }
}
