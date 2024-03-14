package H2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
import i.C0972d;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f547a = {16842752, R.attr.theme};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f548b = {R.attr.materialThemeOverlay};

    public static Context a(Context context, AttributeSet attributeSet, int i4, int i5) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f548b, i4, i5);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z4 = (context instanceof C0972d) && ((C0972d) context).f9539a == resourceId;
        if (resourceId == 0 || z4) {
            return context;
        }
        C0972d c0972d = new C0972d(resourceId, context);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f547a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c0972d.getTheme().applyStyle(resourceId2, true);
        }
        return c0972d;
    }
}
