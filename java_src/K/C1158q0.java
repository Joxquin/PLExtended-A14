package k;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import g.C0929a;
/* renamed from: k.q0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1158q0 extends C0929a {

    /* renamed from: e  reason: collision with root package name */
    public boolean f10956e;

    public C1158q0(Drawable drawable) {
        super(drawable);
        this.f10956e = true;
    }

    @Override // g.C0929a, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f10956e) {
            super.draw(canvas);
        }
    }

    @Override // g.C0929a, android.graphics.drawable.Drawable
    public final void setHotspot(float f4, float f5) {
        if (this.f10956e) {
            super.setHotspot(f4, f5);
        }
    }

    @Override // g.C0929a, android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i4, int i5, int i6, int i7) {
        if (this.f10956e) {
            super.setHotspotBounds(i4, i5, i6, i7);
        }
    }

    @Override // g.C0929a, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (this.f10956e) {
            return super.setState(iArr);
        }
        return false;
    }

    @Override // g.C0929a, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        if (this.f10956e) {
            return super.setVisible(z4, z5);
        }
        return false;
    }
}
