package k;

import android.util.Property;
import androidx.appcompat.widget.SwitchCompat;
/* loaded from: classes.dex */
public final class L0 extends Property {
    public L0() {
        super(Float.class, "thumbPos");
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(((SwitchCompat) obj).f2601C);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        SwitchCompat switchCompat = (SwitchCompat) obj;
        switchCompat.f2601C = ((Float) obj2).floatValue();
        switchCompat.invalidate();
    }
}
