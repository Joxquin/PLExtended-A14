package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.systemui.shared.R;
/* renamed from: k.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1149m extends I implements InterfaceC1153o {

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1151n f10923g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1149m(C1151n c1151n, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f10923g = c1151n;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        setTooltipText(getContentDescription());
        setOnTouchListener(new C1147l(this, this));
    }

    @Override // k.InterfaceC1153o
    public final boolean a() {
        return false;
    }

    @Override // k.InterfaceC1153o
    public final boolean d() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f10923g.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i4, int i5, int i6, int i7) {
        boolean frame = super.setFrame(i4, i5, i6, i7);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
