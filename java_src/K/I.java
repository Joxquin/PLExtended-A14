package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import f.C0832a;
/* loaded from: classes.dex */
public class I extends ImageView {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10776d;

    /* renamed from: e  reason: collision with root package name */
    public final C1124H f10777e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10778f;

    public I(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            return c1162t.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            return c1162t.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        P0 p02;
        C1124H c1124h = this.f10777e;
        if (c1124h == null || (p02 = c1124h.f10766b) == null) {
            return null;
        }
        return p02.f10815a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        P0 p02;
        C1124H c1124h = this.f10777e;
        if (c1124h == null || (p02 = c1124h.f10766b) == null) {
            return null;
        }
        return p02.f10816b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return ((this.f10777e.f10765a.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        C1124H c1124h = this.f10777e;
        if (c1124h != null && drawable != null && !this.f10778f) {
            c1124h.f10767c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        C1124H c1124h2 = this.f10777e;
        if (c1124h2 != null) {
            c1124h2.a();
            if (this.f10778f) {
                return;
            }
            C1124H c1124h3 = this.f10777e;
            ImageView imageView = c1124h3.f10765a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(c1124h3.f10767c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i4) {
        super.setImageLevel(i4);
        this.f10778f = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i4) {
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            ImageView imageView = c1124h.f10765a;
            if (i4 != 0) {
                Drawable a4 = C0832a.a(i4, imageView.getContext());
                if (a4 != null) {
                    Rect rect = C1154o0.f10945a;
                }
                imageView.setImageDrawable(a4);
            } else {
                imageView.setImageDrawable(null);
            }
            c1124h.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            c1162t.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1162t c1162t = this.f10776d;
        if (c1162t != null) {
            c1162t.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            if (c1124h.f10766b == null) {
                c1124h.f10766b = new P0();
            }
            P0 p02 = c1124h.f10766b;
            p02.f10815a = colorStateList;
            p02.f10818d = true;
            c1124h.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C1124H c1124h = this.f10777e;
        if (c1124h != null) {
            if (c1124h.f10766b == null) {
                c1124h.f10766b = new P0();
            }
            P0 p02 = c1124h.f10766b;
            p02.f10816b = mode;
            p02.f10817c = true;
            c1124h.a();
        }
    }

    public I(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        this.f10778f = false;
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f10776d = c1162t;
        c1162t.d(attributeSet, i4);
        C1124H c1124h = new C1124H(this);
        this.f10777e = c1124h;
        c1124h.b(attributeSet, i4);
    }
}
