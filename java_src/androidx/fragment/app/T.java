package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
/* loaded from: classes.dex */
public final class T {
    public static int a(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(16973825, new int[]{i4});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }
}
