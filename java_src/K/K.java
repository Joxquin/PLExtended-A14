package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import d.C0792a;
import f.C0832a;
/* loaded from: classes.dex */
public final class K extends PopupWindow {
    public K(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8749s, i4, i5);
        if (obtainStyledAttributes.hasValue(2)) {
            setOverlapAnchor(obtainStyledAttributes.getBoolean(2, false));
        }
        setBackgroundDrawable((!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C0832a.a(resourceId, context));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i4, int i5) {
        super.showAsDropDown(view, i4, i5);
    }

    @Override // android.widget.PopupWindow
    public final void update(View view, int i4, int i5, int i6, int i7) {
        super.update(view, i4, i5, i6, i7);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i4, int i5, int i6) {
        super.showAsDropDown(view, i4, i5, i6);
    }
}
