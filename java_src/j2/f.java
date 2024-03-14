package j2;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final class f extends Property {

    /* renamed from: a  reason: collision with root package name */
    public final Matrix f10708a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f10708a = new Matrix();
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        this.f10708a.set(((ImageView) obj).getImageMatrix());
        return this.f10708a;
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((ImageView) obj).setImageMatrix((Matrix) obj2);
    }
}
