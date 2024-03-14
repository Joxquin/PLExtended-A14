package k;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.android.systemui.shared.R;
import f.C0832a;
/* renamed from: k.G  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1123G extends ImageButton {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10762d;

    /* renamed from: e  reason: collision with root package name */
    public final C1124H f10763e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10764f;

    public C1123G(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10762d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1124H c1124h = this.f10763e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return ((this.f10763e.f10765a.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10762d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10762d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C1124H c1124h = this.f10763e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        C1124H c1124h = this.f10763e;
        if (c1124h != null && drawable != null && !this.f10764f) {
            c1124h.f10767c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        C1124H c1124h2 = this.f10763e;
        if (c1124h2 != null) {
            c1124h2.a();
            if (this.f10764f) {
                return;
            }
            C1124H c1124h3 = this.f10763e;
            ImageView imageView = c1124h3.f10765a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(c1124h3.f10767c);
            }
        }
    }

    @Override // android.widget.ImageView
    public final void setImageLevel(int i4) {
        super.setImageLevel(i4);
        this.f10764f = true;
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i4) {
        C1124H c1124h = this.f10763e;
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

    @Override // android.widget.ImageView
    public final void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C1124H c1124h = this.f10763e;
        if (c1124h != null) {
            c1124h.a();
        }
    }

    public C1123G(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1123G(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        this.f10764f = false;
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f10762d = c1162t;
        c1162t.d(attributeSet, i4);
        C1124H c1124h = new C1124H(this);
        this.f10763e = c1124h;
        c1124h.b(attributeSet, i4);
    }
}
