package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
/* loaded from: classes.dex */
public abstract class q {
    final String mPropertyName;

    public q(String str) {
        this.mPropertyName = str;
    }

    public static q createFloatPropertyCompat(FloatProperty floatProperty) {
        return new p(floatProperty.getName(), floatProperty);
    }

    public abstract float getValue(Object obj);

    public abstract void setValue(Object obj, float f4);
}
