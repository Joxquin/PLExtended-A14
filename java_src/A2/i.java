package A2;

import android.content.res.Configuration;
import android.graphics.Typeface;
/* loaded from: classes.dex */
public final class i {
    public static Typeface a(Configuration configuration, Typeface typeface) {
        int i4 = configuration.fontWeightAdjustment;
        if (i4 == Integer.MAX_VALUE || i4 == 0) {
            return null;
        }
        return Typeface.create(typeface, H.a.b(typeface.getWeight() + configuration.fontWeightAdjustment, 1, 1000), typeface.isItalic());
    }
}
