package w0;

import android.graphics.Path;
import android.graphics.PathMeasure;
/* loaded from: classes.dex */
public final class g extends ThreadLocal {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f12734a;

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        int i4 = this.f12734a;
        switch (i4) {
            case 0:
                return new PathMeasure();
            case 1:
                switch (i4) {
                    case 1:
                        return new Path();
                    default:
                        return new Path();
                }
            case 2:
                switch (i4) {
                    case 1:
                        return new Path();
                    default:
                        return new Path();
                }
            default:
                return new float[4];
        }
    }
}
