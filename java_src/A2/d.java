package A2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import f.C0832a;
import k.R0;
/* loaded from: classes.dex */
public final class d {
    public static ColorStateList a(Context context, TypedArray typedArray, int i4) {
        int resourceId;
        ColorStateList a4;
        return (!typedArray.hasValue(i4) || (resourceId = typedArray.getResourceId(i4, 0)) == 0 || (a4 = B.c.a(resourceId, context)) == null) ? typedArray.getColorStateList(i4) : a4;
    }

    public static ColorStateList b(Context context, R0 r02, int i4) {
        int i5;
        ColorStateList a4;
        return (!r02.l(i4) || (i5 = r02.i(i4, 0)) == 0 || (a4 = B.c.a(i5, context)) == null) ? r02.b(i4) : a4;
    }

    public static Drawable c(Context context, TypedArray typedArray, int i4) {
        int resourceId;
        Drawable a4;
        return (!typedArray.hasValue(i4) || (resourceId = typedArray.getResourceId(i4, 0)) == 0 || (a4 = C0832a.a(resourceId, context)) == null) ? typedArray.getDrawable(i4) : a4;
    }

    public static boolean d(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }
}
