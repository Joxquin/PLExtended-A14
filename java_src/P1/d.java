package P1;

import android.util.IntProperty;
/* loaded from: classes.dex */
public final class d extends IntProperty {
    public d() {
        super("frameNumber");
    }

    @Override // android.util.Property
    public final Integer get(Object obj) {
        return Integer.valueOf(((f) obj).f1551i);
    }

    @Override // android.util.IntProperty
    public final void setValue(Object obj, int i4) {
        f fVar = (f) obj;
        if (fVar.f1551i != i4) {
            fVar.f1551i = i4;
            fVar.invalidate();
        }
    }
}
