package D;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
/* loaded from: classes.dex */
public final class o {
    public static int a(Context context, int i4, int i5) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i4, typedValue, true);
        return typedValue.resourceId != 0 ? i4 : i5;
    }

    public static String b(TypedArray typedArray, int i4, int i5) {
        String string = typedArray.getString(i4);
        return string == null ? typedArray.getString(i5) : string;
    }
}
