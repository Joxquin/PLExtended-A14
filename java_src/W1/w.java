package W1;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
/* loaded from: classes.dex */
public final class w extends DrawableWrapper {

    /* renamed from: d  reason: collision with root package name */
    public int f1925d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f1926e;

    public w(Drawable drawable) {
        super(drawable);
        this.f1925d = 0;
        this.f1926e = new Rect();
    }

    public final void a() {
        Rect rect = this.f1926e;
        int i4 = rect.left;
        int i5 = this.f1925d;
        super.setBounds(i4 + i5, rect.top, rect.right - i5, rect.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i4, int i5, int i6, int i7) {
        this.f1926e.set(i4, i5, i6, i7);
        a();
    }
}
