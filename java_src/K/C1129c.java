package k;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: k.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1129c extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final ActionBarContainer f10874a;

    public C1129c(ActionBarContainer actionBarContainer) {
        this.f10874a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f10874a;
        if (actionBarContainer.f2522j) {
            Drawable drawable = actionBarContainer.f2521i;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f2519g;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f10874a;
        Drawable drawable3 = actionBarContainer2.f2520h;
        if (drawable3 == null || !actionBarContainer2.f2523k) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f10874a;
        if (actionBarContainer.f2522j) {
            if (actionBarContainer.f2521i != null) {
                actionBarContainer.f2519g.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable = actionBarContainer.f2519g;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
