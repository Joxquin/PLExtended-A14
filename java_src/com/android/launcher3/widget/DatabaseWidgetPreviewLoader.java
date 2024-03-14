package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.Size;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShadowGenerator;
import com.android.launcher3.icons.d;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
/* loaded from: classes.dex */
public final class DatabaseWidgetPreviewLoader {
    private final Context mContext;
    private final float mPreviewBoxCornerRadius;

    public DatabaseWidgetPreviewLoader(Context context) {
        this.mContext = context;
        float computeEnforcedRadius = RoundedCornerEnforcement.computeEnforcedRadius(context);
        this.mPreviewBoxCornerRadius = computeEnforcedRadius <= 0.0f ? context.getResources().getDimension(R.dimen.widget_preview_corner_radius) : computeEnforcedRadius;
    }

    public static void a(DatabaseWidgetPreviewLoader databaseWidgetPreviewLoader, int i4, ShortcutConfigActivityInfo shortcutConfigActivityInfo, int i5, int i6, Canvas canvas) {
        databaseWidgetPreviewLoader.drawBoxWithShadow(canvas, i4, i4);
        Context context = databaseWidgetPreviewLoader.mContext;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        FastBitmapDrawable newIcon = obtain.createBadgedIconBitmap(mutateOnMainThread(shortcutConfigActivityInfo.getFullResIcon(LauncherAppState.getInstance(context).getIconCache())), null).newIcon(0, context);
        obtain.recycle();
        int i7 = i6 + i5;
        newIcon.setBounds(i5, i5, i7, i7);
        newIcon.draw(canvas);
    }

    public static Bitmap b(DatabaseWidgetPreviewLoader databaseWidgetPreviewLoader, WidgetItem widgetItem, Size size) {
        databaseWidgetPreviewLoader.getClass();
        int width = size.getWidth();
        int height = size.getHeight();
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem.widgetInfo;
        if (launcherAppWidgetProviderInfo != null) {
            return databaseWidgetPreviewLoader.generateWidgetPreview(launcherAppWidgetProviderInfo, width, null);
        }
        ShortcutConfigActivityInfo shortcutConfigActivityInfo = widgetItem.activityInfo;
        Context context = databaseWidgetPreviewLoader.mContext;
        int i4 = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile().allAppsIconSizePx;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding);
        int i5 = (dimensionPixelSize * 2) + i4;
        if (height < i5 || width < i5) {
            throw new RuntimeException("Max size is too small for preview");
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        a(databaseWidgetPreviewLoader, i5, shortcutConfigActivityInfo, dimensionPixelSize, i4, picture.beginRecording(i5, i5));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    public static /* synthetic */ void c(DatabaseWidgetPreviewLoader databaseWidgetPreviewLoader, boolean z4, Drawable drawable, int i4, int i5, int i6, int i7, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, DeviceProfile deviceProfile, float f4, Canvas canvas) {
        RectF drawBoxWithShadow;
        databaseWidgetPreviewLoader.getClass();
        if (z4) {
            drawable.setBounds(0, 0, i4, i5);
            drawable.draw(canvas);
            return;
        }
        Paint paint = new Paint(1);
        boolean z5 = Utilities.ATLEAST_S;
        Context context = databaseWidgetPreviewLoader.mContext;
        if (z5) {
            drawBoxWithShadow = new RectF(0.0f, 0.0f, i4, i5);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(-1);
            float dimension = context.getResources().getDimension(17104904);
            canvas.drawRoundRect(drawBoxWithShadow, dimension, dimension, paint);
        } else {
            drawBoxWithShadow = databaseWidgetPreviewLoader.drawBoxWithShadow(canvas, i4, i5);
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(context.getResources().getDimension(R.dimen.widget_preview_cell_divider_width));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        float f5 = drawBoxWithShadow.left;
        float width = drawBoxWithShadow.width() / i6;
        int i8 = 1;
        while (i8 < i6) {
            float f6 = f5 + width;
            canvas.drawLine(f6, 0.0f, f6, i5, paint);
            i8++;
            f5 = f6;
        }
        float f7 = drawBoxWithShadow.top;
        float height = drawBoxWithShadow.height() / i7;
        for (int i9 = 1; i9 < i7; i9++) {
            f7 += height;
            canvas.drawLine(0.0f, f7, i4, f7, paint);
        }
        try {
            Drawable fullResIcon = LauncherAppState.getInstance(context).getIconCache().getFullResIcon(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).icon, ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.getPackageName());
            if (fullResIcon != null) {
                int min = (int) Math.min(deviceProfile.iconSizePx * f4, Math.min(drawBoxWithShadow.width(), drawBoxWithShadow.height()));
                Drawable mutateOnMainThread = mutateOnMainThread(fullResIcon);
                int i10 = (i4 - min) / 2;
                int i11 = (i5 - min) / 2;
                mutateOnMainThread.setBounds(i10, i11, i10 + min, min + i11);
                mutateOnMainThread.draw(canvas);
            }
        } catch (Resources.NotFoundException unused) {
        }
    }

    private RectF drawBoxWithShadow(Canvas canvas, int i4, int i5) {
        Resources resources = this.mContext.getResources();
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(-1);
        builder.shadowBlur = resources.getDimension(R.dimen.widget_preview_shadow_blur);
        builder.radius = this.mPreviewBoxCornerRadius;
        float dimension = resources.getDimension(R.dimen.widget_preview_key_shadow_distance);
        builder.keyShadowDistance = dimension;
        RectF rectF = builder.bounds;
        float f4 = builder.shadowBlur;
        rectF.set(f4, f4, i4 - f4, (i5 - f4) - dimension);
        builder.drawShadow(canvas);
        return rectF;
    }

    private static Drawable mutateOnMainThread(final Drawable drawable) {
        try {
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            Objects.requireNonNull(drawable);
            return (Drawable) looperExecutor.submit(new Callable() { // from class: f1.c
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return drawable.mutate();
                }
            }).get();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e4);
        } catch (ExecutionException e5) {
            throw new RuntimeException(e5);
        }
    }

    public final Bitmap generateWidgetPreview(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, int i4, int[] iArr) {
        int height;
        int i5;
        int i6;
        int i7 = i4 < 0 ? Integer.MAX_VALUE : i4;
        int i8 = ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewImage;
        Context context = this.mContext;
        Drawable drawable = null;
        if (i8 != 0) {
            try {
                drawable = launcherAppWidgetProviderInfo.loadPreviewImage(context, 0);
            } catch (OutOfMemoryError e4) {
                Log.w("WidgetPreviewLoader", "Error loading widget preview for: " + ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider, e4);
            }
            if (drawable != null) {
                drawable = mutateOnMainThread(drawable);
            } else {
                Log.w("WidgetPreviewLoader", "Can't load widget preview drawable 0x" + Integer.toHexString(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).previewImage) + " for provider: " + ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider);
            }
        }
        boolean z4 = drawable != null;
        int i9 = launcherAppWidgetProviderInfo.spanX;
        int i10 = launcherAppWidgetProviderInfo.spanY;
        DeviceProfile deviceProfile = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile();
        if (!z4 || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            Size widgetSizePx = WidgetSizes.getWidgetSizePx(deviceProfile, i9, i10);
            int width = widgetSizePx.getWidth();
            height = widgetSizePx.getHeight();
            i5 = width;
        } else {
            i5 = drawable.getIntrinsicWidth();
            height = drawable.getIntrinsicHeight();
        }
        if (iArr != null) {
            iArr[0] = i5;
        }
        float f4 = i5 > i7 ? i7 / i5 : 1.0f;
        if (f4 != 1.0f) {
            i5 = Math.max((int) (i5 * f4), 1);
            i6 = Math.max((int) (height * f4), 1);
        } else {
            i6 = height;
        }
        int i11 = i5;
        d dVar = GraphicsUtils.sOnNewBitmapRunnable;
        Picture picture = new Picture();
        c(this, z4, drawable, i11, i6, i9, i10, launcherAppWidgetProviderInfo, deviceProfile, f4, picture.beginRecording(i11, i6));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }
}
