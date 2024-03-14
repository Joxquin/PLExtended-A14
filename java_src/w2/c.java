package w2;

import android.content.res.ColorStateList;
import com.google.android.material.button.MaterialButton;
/* loaded from: classes.dex */
public final class c extends MaterialButton implements z.b {

    /* renamed from: v  reason: collision with root package name */
    public static final /* synthetic */ int f12751v = 0;

    static {
        new C1453a("width", 0);
        new C1453a("height", 1);
        new C1453a("paddingStart", 2);
        new C1453a("paddingEnd", 3);
    }

    @Override // z.b
    public final z.c a() {
        return null;
    }

    public int getCollapsedSize() {
        return 0;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i4, int i5, int i6, int i7) {
        super.setPadding(i4, i5, i6, i7);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i4, int i5, int i6, int i7) {
        super.setPaddingRelative(i4, i5, i6, i7);
    }

    @Override // android.widget.TextView
    public final void setTextColor(int i4) {
        super.setTextColor(i4);
        getTextColors();
    }

    @Override // android.widget.TextView
    public final void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        getTextColors();
    }
}
