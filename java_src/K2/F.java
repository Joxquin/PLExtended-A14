package K2;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import com.android.internal.graphics.ColorUtils;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class F extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final int f938a;

    /* renamed from: b  reason: collision with root package name */
    public final int f939b;

    /* renamed from: c  reason: collision with root package name */
    public InsetDrawable f940c;

    /* renamed from: d  reason: collision with root package name */
    public final int f941d;

    /* renamed from: e  reason: collision with root package name */
    public final int f942e;

    /* renamed from: f  reason: collision with root package name */
    public final int f943f;

    /* renamed from: g  reason: collision with root package name */
    public final int f944g;

    /* renamed from: h  reason: collision with root package name */
    public RenderNode f945h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f946i;

    public F(Context context) {
        this(context, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size), context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_inset));
    }

    public static RenderEffect a(int i4, int i5, int i6, int i7) {
        float f4 = i4;
        return RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(Color.argb(i7, 0, 0, 0), PorterDuff.Mode.MULTIPLY), RenderEffect.createOffsetEffect(i5, i6, RenderEffect.createBlurEffect(f4, f4, Shader.TileMode.CLAMP)));
    }

    public final void b(Drawable drawable) {
        RenderNode renderNode = null;
        if (drawable == null) {
            this.f940c = null;
            return;
        }
        InsetDrawable insetDrawable = new InsetDrawable(drawable, this.f938a);
        this.f940c = insetDrawable;
        int i4 = this.f939b;
        insetDrawable.setBounds(0, 0, i4, i4);
        if (this.f940c != null) {
            RenderNode renderNode2 = new RenderNode("DoubleShadowNode");
            int i5 = this.f939b;
            renderNode2.setPosition(0, 0, i5, i5);
            RenderEffect a4 = a(this.f941d, 0, 0, 48);
            RenderEffect a5 = a(this.f942e, this.f943f, this.f944g, 72);
            if (a4 != null && a5 != null) {
                renderNode2.setRenderEffect(RenderEffect.createBlendModeEffect(a4, a5, BlendMode.DARKEN));
                renderNode = renderNode2;
            }
        }
        this.f945h = renderNode;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        RenderNode renderNode;
        if (canvas.isHardwareAccelerated() && (renderNode = this.f945h) != null && this.f946i) {
            if (!renderNode.hasDisplayList()) {
                this.f940c.draw(this.f945h.beginRecording());
                this.f945h.endRecording();
            }
            canvas.drawRenderNode(this.f945h);
        }
        InsetDrawable insetDrawable = this.f940c;
        if (insetDrawable != null) {
            insetDrawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f939b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f939b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.f940c.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f940c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i4) {
        InsetDrawable insetDrawable = this.f940c;
        if (insetDrawable != null) {
            insetDrawable.setTint(i4);
        }
        this.f946i = ColorUtils.calculateLuminance(i4) > 0.5d;
    }

    public F(Context context, int i4, int i5) {
        this.f946i = true;
        this.f938a = i5;
        int i6 = (i5 * 2) + i4;
        this.f939b = i6;
        this.f941d = context.getResources().getDimensionPixelSize(R.dimen.ambient_text_shadow_radius);
        this.f942e = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_radius);
        this.f943f = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dx);
        this.f944g = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dy);
        setBounds(0, 0, i6, i6);
    }
}
