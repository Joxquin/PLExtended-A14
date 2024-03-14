package O1;

import android.util.IntProperty;
/* loaded from: classes.dex */
public final class v extends IntProperty {
    public v() {
        super("bitmap_alpha");
    }

    @Override // android.util.Property
    public final Integer get(Object obj) {
        return Integer.valueOf(((w) obj).f1489d.getAlpha());
    }

    @Override // android.util.IntProperty
    public final void setValue(Object obj, int i4) {
        w wVar = (w) obj;
        wVar.f1489d.setAlpha(i4);
        wVar.f1491f.setAlpha(i4);
        wVar.invalidate();
    }
}
