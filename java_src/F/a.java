package F;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
/* loaded from: classes.dex */
public final class a extends b {
    @Override // F.b
    public final void a(int i4, int i5, int i6, Rect rect, Rect rect2) {
        Gravity.apply(i4, i5, i6, rect, rect2, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        c();
        outline.setRoundRect(this.f350h, this.f349g);
    }
}
