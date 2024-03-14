package r0;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final List f12125a;

    /* renamed from: b  reason: collision with root package name */
    public PointF f12126b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12127c;

    public m(PointF pointF, boolean z4, List list) {
        this.f12126b = pointF;
        this.f12127c = z4;
        this.f12125a = new ArrayList(list);
    }

    public final void a(float f4, float f5) {
        if (this.f12126b == null) {
            this.f12126b = new PointF();
        }
        this.f12126b.set(f4, f5);
    }

    public final String toString() {
        return "ShapeData{numCurves=" + this.f12125a.size() + "closed=" + this.f12127c + '}';
    }

    public m() {
        this.f12125a = new ArrayList();
    }
}
