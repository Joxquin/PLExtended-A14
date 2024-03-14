package L1;

import android.util.FloatProperty;
/* loaded from: classes.dex */
public final class F extends FloatProperty {
    public F() {
        super("progress");
    }

    @Override // android.util.Property
    public final Float get(Object obj) {
        return Float.valueOf(((G) obj).f1077f);
    }

    @Override // android.util.FloatProperty
    public final void setValue(Object obj, float f4) {
        G g4 = (G) obj;
        g4.f1077f = f4;
        g4.getView().updateDragShadow(g4);
    }
}
