package com.android.systemui.shared.rotation;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;
/* loaded from: classes.dex */
public class FloatingRotationButtonView extends ImageView {
    private static final float BACKGROUND_ALPHA = 0.92f;
    private final Configuration mLastConfiguration;
    private final Paint mOvalBgPaint;
    private KeyButtonRipple mRipple;

    public FloatingRotationButtonView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        float min = Math.min(getWidth(), getHeight());
        canvas.drawOval(0.0f, 0.0f, min, min, this.mOvalBgPaint);
        super.draw(canvas);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        KeyButtonRipple keyButtonRipple;
        int updateFrom = this.mLastConfiguration.updateFrom(configuration);
        if (((updateFrom & 1024) == 0 && (updateFrom & 4096) == 0) || (keyButtonRipple = this.mRipple) == null) {
            return;
        }
        keyButtonRipple.f6180n = keyButtonRipple.f6185s.getContext().getResources().getDimensionPixelSize(keyButtonRipple.f6167a);
        keyButtonRipple.invalidateSelf();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        if (i4 != 0) {
            jumpDrawablesToCurrentState();
        }
    }

    public void setColors(int i4, int i5) {
        getDrawable().setColorFilter(new PorterDuffColorFilter(i4, PorterDuff.Mode.SRC_IN));
        this.mOvalBgPaint.setColor(Color.valueOf(Color.red(i5), Color.green(i5), Color.blue(i5), BACKGROUND_ALPHA).toArgb());
        this.mRipple.f6191y = KeyButtonRipple.Type.OVAL;
    }

    public void setDarkIntensity(float f4) {
        KeyButtonRipple keyButtonRipple = this.mRipple;
        keyButtonRipple.getClass();
        keyButtonRipple.f6182p = f4 >= 0.5f;
    }

    public void setRipple(int i4) {
        KeyButtonRipple keyButtonRipple = new KeyButtonRipple(getContext(), this, i4);
        this.mRipple = keyButtonRipple;
        setBackground(keyButtonRipple);
    }

    public FloatingRotationButtonView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mOvalBgPaint = new Paint(3);
        this.mLastConfiguration = getResources().getConfiguration();
        setClickable(true);
        setWillNotDraw(false);
        forceHasOverlappingRendering(false);
    }
}
