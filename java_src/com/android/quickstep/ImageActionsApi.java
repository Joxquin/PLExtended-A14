package com.android.quickstep;

import android.app.prediction.AppTarget;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.recents.model.Task;
import java.util.function.BiFunction;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class ImageActionsApi {
    private static final String TAG = "com.google.android.apps.nexuslauncherImageActionsApi";
    protected final Supplier mBitmapSupplier;
    protected final Context mContext;
    protected final SystemUiProxy mSystemUiProxy;

    public ImageActionsApi(Context context, Supplier supplier) {
        this.mContext = context;
        this.mBitmapSupplier = supplier;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(context);
    }

    private void addImageAndSendIntent(final Rect rect, final Intent intent, final boolean z4, final Runnable runnable) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.K
            @Override // java.lang.Runnable
            public final void run() {
                ImageActionsApi.this.lambda$addImageAndSendIntent$1(rect, intent, z4, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Intent[] lambda$addImageAndSendIntent$0(boolean z4, Uri uri, Intent intent) {
        intent.addFlags(1);
        if (z4) {
            intent.setData(uri);
        } else {
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        return new Intent[]{intent};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addImageAndSendIntent$1(Rect rect, Intent intent, final boolean z4, Runnable runnable) {
        Bitmap bitmap = (Bitmap) this.mBitmapSupplier.get();
        if (bitmap == null) {
            Log.e(TAG, "No snapshot available, not starting share.");
        } else {
            ImageActionUtils.persistBitmapAndStartActivity(this.mContext, bitmap, rect, intent, new BiFunction() { // from class: com.android.quickstep.J
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    Intent[] lambda$addImageAndSendIntent$0;
                    lambda$addImageAndSendIntent$0 = ImageActionsApi.lambda$addImageAndSendIntent$0(z4, (Uri) obj, (Intent) obj2);
                    return lambda$addImageAndSendIntent$0;
                }
            }, TAG, runnable);
        }
    }

    public void saveScreenshot(Bitmap bitmap, Rect rect, Insets insets, Task.TaskKey taskKey) {
        ImageActionUtils.saveScreenshot(this.mSystemUiProxy, bitmap, rect, insets, taskKey);
    }

    public void shareAsDataWithExplicitIntent(Rect rect, Intent intent, Runnable runnable) {
        addImageAndSendIntent(rect, intent, true, runnable);
    }

    public void shareImage(RectF rectF, ShortcutInfo shortcutInfo, AppTarget appTarget) {
        ImageActionUtils.shareImage(this.mContext, this.mBitmapSupplier, rectF, shortcutInfo, appTarget, TAG);
    }

    public void shareWithExplicitIntent(Rect rect, Intent intent) {
        addImageAndSendIntent(rect, intent, false, null);
    }

    public void startShareActivity(Rect rect) {
        ImageActionUtils.startShareActivity(this.mContext, this.mBitmapSupplier, rect, null, TAG);
    }
}
