package com.android.launcher3.icons;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class ThemedIconDrawable extends FastBitmapDrawable {
    final BitmapInfo bitmapInfo;
    final int colorBg;
    final int colorFg;
    private final Bitmap mBgBitmap;
    private final ColorFilter mBgFilter;
    private final Paint mBgPaint;
    private final ColorFilter mMonoFilter;
    private final Bitmap mMonoIcon;
    private final Paint mMonoPaint;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ThemedConstantState extends FastBitmapDrawable.FastBitmapConstantState {
        final BitmapInfo bitmapInfo;
        final int colorBg;
        final int colorFg;

        public ThemedConstantState(BitmapInfo bitmapInfo, int i4, int i5) {
            super(bitmapInfo.icon, bitmapInfo.color);
            this.bitmapInfo = bitmapInfo;
            this.colorBg = i4;
            this.colorFg = i5;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable.FastBitmapConstantState
        public final FastBitmapDrawable createDrawable() {
            return new ThemedIconDrawable(this);
        }
    }

    public ThemedIconDrawable(ThemedConstantState themedConstantState) {
        super(themedConstantState.mBitmap, themedConstantState.colorFg);
        Paint paint = new Paint(3);
        this.mMonoPaint = paint;
        Paint paint2 = new Paint(3);
        this.mBgPaint = paint2;
        BitmapInfo bitmapInfo = themedConstantState.bitmapInfo;
        this.bitmapInfo = bitmapInfo;
        int i4 = themedConstantState.colorBg;
        this.colorBg = i4;
        int i5 = themedConstantState.colorFg;
        this.colorFg = i5;
        this.mMonoIcon = bitmapInfo.mMono;
        BlendModeColorFilter blendModeColorFilter = new BlendModeColorFilter(i5, BlendMode.SRC_IN);
        this.mMonoFilter = blendModeColorFilter;
        paint.setColorFilter(blendModeColorFilter);
        this.mBgBitmap = bitmapInfo.mWhiteShadowLayer;
        BlendModeColorFilter blendModeColorFilter2 = new BlendModeColorFilter(i4, BlendMode.SRC_IN);
        this.mBgFilter = blendModeColorFilter2;
        paint2.setColorFilter(blendModeColorFilter2);
    }

    public static int[] getColors(Context context) {
        Resources resources = context.getResources();
        return new int[]{resources.getColor(R.color.themed_icon_background_color), resources.getColor(R.color.themed_icon_color)};
    }

    public final void changeBackgroundColor(int i4) {
        if (this.mIsDisabled) {
            return;
        }
        this.mBgPaint.setColorFilter(new BlendModeColorFilter(i4, BlendMode.SRC_IN));
        invalidateSelf();
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void drawInternal(Canvas canvas, Rect rect) {
        canvas.drawBitmap(this.mBgBitmap, (Rect) null, rect, this.mBgPaint);
        canvas.drawBitmap(this.mMonoIcon, (Rect) null, rect, this.mMonoPaint);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final int getIconColor() {
        return this.colorFg;
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final FastBitmapDrawable.FastBitmapConstantState newConstantState() {
        return new ThemedConstantState(this.bitmapInfo, this.colorBg, this.colorFg);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void updateFilter() {
        super.updateFilter();
        int i4 = this.mIsDisabled ? (int) (this.mDisabledAlpha * 255.0f) : 255;
        this.mBgPaint.setAlpha(i4);
        this.mBgPaint.setColorFilter(this.mIsDisabled ? new BlendModeColorFilter(FastBitmapDrawable.getDisabledColor(this.colorBg), BlendMode.SRC_IN) : this.mBgFilter);
        this.mMonoPaint.setAlpha(i4);
        this.mMonoPaint.setColorFilter(this.mIsDisabled ? new BlendModeColorFilter(FastBitmapDrawable.getDisabledColor(this.colorFg), BlendMode.SRC_IN) : this.mMonoFilter);
    }
}
