package com.android.launcher3.taskbar;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.DisplayController;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarBackgroundRenderer {
    private float backgroundHeight;
    private int bottomMargin;
    private final Path circle;
    private final float fullLeftCornerRadius;
    private final float fullRightCornerRadius;
    private final Path invertedLeftCornerPath;
    private final Path invertedRightCornerPath;
    private final boolean isInSetup;
    private final boolean isTransientTaskbar;
    private float keyShadowDistance;
    private final RectF lastDrawnTransientRect;
    private float leftCornerRadius;
    private float maxBackgroundHeight;
    private final Paint paint;
    private float rightCornerRadius;
    private final float shadowAlpha;
    private float shadowBlur;
    private final Path square;
    private final int stashedHandleHeight;
    private int stashedHandleWidth;
    private final Rect transientBackgroundBounds;
    private float translationYForStash;
    private float translationYForSwipe;
    private float widthInsetPercentage;

    public TaskbarBackgroundRenderer(TaskbarActivityContext context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.isInSetup = !context.isUserSetupComplete();
        Paint paint = new Paint();
        this.paint = paint;
        this.lastDrawnTransientRect = new RectF();
        this.backgroundHeight = context.getDeviceProfile().taskbarHeight;
        this.maxBackgroundHeight = context.getDeviceProfile().taskbarHeight;
        this.transientBackgroundBounds = context.getTransientTaskbarBounds();
        boolean isTransientTaskbar = DisplayController.isTransientTaskbar(context);
        this.isTransientTaskbar = isTransientTaskbar;
        float leftCornerRadius = context.getLeftCornerRadius();
        this.fullLeftCornerRadius = leftCornerRadius;
        float rightCornerRadius = context.getRightCornerRadius();
        this.fullRightCornerRadius = rightCornerRadius;
        this.leftCornerRadius = leftCornerRadius;
        this.rightCornerRadius = rightCornerRadius;
        this.square = new Path();
        this.circle = new Path();
        this.invertedLeftCornerPath = new Path();
        this.invertedRightCornerPath = new Path();
        this.stashedHandleWidth = context.getResources().getDimensionPixelSize(R.dimen.taskbar_stashed_handle_width);
        this.stashedHandleHeight = context.getResources().getDimensionPixelSize(R.dimen.taskbar_stashed_handle_height);
        paint.setColor(context.getColor(R.color.taskbar_background));
        paint.setFlags(1);
        paint.setStyle(Paint.Style.FILL);
        if (isTransientTaskbar) {
            Resources resources = context.getResources();
            this.bottomMargin = resources.getDimensionPixelSize(R.dimen.transient_taskbar_bottom_margin);
            this.shadowBlur = resources.getDimension(R.dimen.transient_taskbar_shadow_blur);
            this.keyShadowDistance = resources.getDimension(R.dimen.transient_taskbar_key_shadow_distance);
        }
        this.shadowAlpha = Utilities.isDarkTheme(context) ? 51.0f : 25.0f;
        setCornerRoundness(1.0f);
    }

    public final void draw(Canvas canvas) {
        kotlin.jvm.internal.h.e(canvas, "canvas");
        canvas.save();
        boolean z4 = this.isTransientTaskbar;
        Paint paint = this.paint;
        if (z4) {
            Rect rect = this.transientBackgroundBounds;
            if (!rect.isEmpty()) {
                if (!this.isInSetup) {
                    float f4 = this.backgroundHeight;
                    float f5 = this.maxBackgroundHeight;
                    float f6 = f4 / f5;
                    int i4 = this.stashedHandleHeight;
                    float f7 = i4;
                    String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                    float a4 = w.f.a(f5, f7, f6, f7);
                    int width = rect.width();
                    float f8 = this.stashedHandleWidth;
                    float f9 = width;
                    float f10 = (f9 - (((f9 - f8) * f6) + f8)) / 2.0f;
                    float f11 = a4 / 2.0f;
                    float f12 = 1.0f - f6;
                    float height = (canvas.getHeight() - this.bottomMargin) + ((f12 / 2.0f) * this.bottomMargin) + this.translationYForSwipe + this.translationYForStash + (-((((i4 / 2.0f) - 0.0f) * f12) + 0.0f));
                    paint.setShadowLayer(this.shadowBlur, 0.0f, this.keyShadowDistance, GraphicsUtils.setColorAlphaBound(-16777216, Math.round(Utilities.mapToRange(paint.getAlpha(), 0.0f, 255.0f, 0.0f, this.shadowAlpha, y0.e.f12949m))));
                    RectF rectF = this.lastDrawnTransientRect;
                    rectF.set(rect.left + f10, height - a4, rect.right - f10, height);
                    rectF.inset(f9 * this.widthInsetPercentage, 0.0f);
                    canvas.drawRoundRect(rectF, f11, f11, paint);
                }
                canvas.restore();
            }
        }
        canvas.translate(0.0f, (canvas.getHeight() - this.backgroundHeight) - this.bottomMargin);
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), this.backgroundHeight, paint);
        canvas.translate(0.0f, -this.leftCornerRadius);
        canvas.drawPath(this.invertedLeftCornerPath, paint);
        canvas.translate(0.0f, this.leftCornerRadius);
        float f13 = this.rightCornerRadius;
        canvas.translate(canvas.getWidth() - f13, -f13);
        canvas.drawPath(this.invertedRightCornerPath, paint);
        canvas.restore();
    }

    public final RectF getLastDrawnTransientRect() {
        return this.lastDrawnTransientRect;
    }

    public final Paint getPaint() {
        return this.paint;
    }

    public final void setBackgroundHeight(float f4) {
        this.backgroundHeight = f4;
    }

    public final void setBackgroundHorizontalInsets(float f4) {
        this.widthInsetPercentage = f4;
    }

    public final void setCornerRoundness(float f4) {
        if (!this.isTransientTaskbar || this.transientBackgroundBounds.isEmpty()) {
            this.leftCornerRadius = this.fullLeftCornerRadius * f4;
            this.rightCornerRadius = this.fullRightCornerRadius * f4;
            Path path = this.square;
            path.reset();
            Path path2 = this.square;
            float f5 = this.leftCornerRadius;
            path2.addRect(0.0f, 0.0f, f5, f5, Path.Direction.CW);
            Path path3 = this.circle;
            path3.reset();
            float f6 = this.leftCornerRadius;
            path3.addCircle(f6, 0.0f, f6, Path.Direction.CW);
            this.invertedLeftCornerPath.op(path, path3, Path.Op.DIFFERENCE);
            path.reset();
            Path path4 = this.square;
            float f7 = this.rightCornerRadius;
            path4.addRect(0.0f, 0.0f, f7, f7, Path.Direction.CW);
            path3.reset();
            path3.addCircle(0.0f, 0.0f, this.rightCornerRadius, Path.Direction.CW);
            this.invertedRightCornerPath.op(path, path3, Path.Op.DIFFERENCE);
        }
    }

    public final void setTranslationYForStash(float f4) {
        this.translationYForStash = f4;
    }

    public final void setTranslationYForSwipe(float f4) {
        this.translationYForSwipe = f4;
    }

    public final void updateStashedHandleWidth(Resources res, DeviceProfile dp) {
        kotlin.jvm.internal.h.e(dp, "dp");
        kotlin.jvm.internal.h.e(res, "res");
        this.stashedHandleWidth = res.getDimensionPixelSize(TaskbarManager.isPhoneMode(dp) ? R.dimen.taskbar_stashed_small_screen : R.dimen.taskbar_stashed_handle_width);
    }
}
