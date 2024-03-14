package k;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class O extends SeekBar {

    /* renamed from: d  reason: collision with root package name */
    public final P f10807d;

    public O(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        M0.a(this, getContext());
        P p4 = new P(this);
        this.f10807d = p4;
        p4.a(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        P p4 = this.f10807d;
        Drawable drawable = p4.f10810e;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        SeekBar seekBar = p4.f10809d;
        if (drawable.setState(seekBar.getDrawableState())) {
            seekBar.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f10807d.f10810e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f10807d.d(canvas);
    }
}
