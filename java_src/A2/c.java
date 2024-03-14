package A2;

import android.content.Context;
import android.util.TypedValue;
/* loaded from: classes.dex */
public final class c {
    public static TypedValue a(int i4, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i4, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static TypedValue b(int i4, Context context, String str) {
        TypedValue a4 = a(i4, context);
        if (a4 != null) {
            return a4;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i4)));
    }
}
