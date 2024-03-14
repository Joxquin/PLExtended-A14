package com.android.quickstep.util;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.prediction.AppTarget;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import androidx.core.content.FileProvider;
import com.android.internal.util.ScreenshotRequest;
import com.android.launcher3.util.Executors;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.recents.model.Task;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.function.BiFunction;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class ImageActionUtils {
    private static final String AUTHORITY = "com.google.android.apps.nexuslauncher.overview.fileprovider";
    private static final String BASE_NAME = "overview_image_";
    private static final long FILE_LIFE = 86400000;
    private static final String SUB_FOLDER = "Overview";
    private static final String TAG = "ImageActionUtils";

    private static void clearOldCacheFiles(final Context context) {
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.v
            @Override // java.lang.Runnable
            public final void run() {
                ImageActionUtils.lambda$clearOldCacheFiles$6(context);
            }
        });
    }

    public static Bitmap cropBitmap(Bitmap bitmap, Rect rect) {
        Rect rect2 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        if (rect == null) {
            rect = new Rect(rect2);
        }
        if (rect.equals(rect2)) {
            return bitmap;
        }
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            return Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
        }
        Picture picture = new Picture();
        picture.beginRecording(rect.width(), rect.height()).drawBitmap(bitmap, -rect.left, -rect.top, (Paint) null);
        picture.endRecording();
        return Bitmap.createBitmap(picture, rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
    }

    public static Uri getImageUri(Bitmap bitmap, Rect rect, Context context, String str) {
        clearOldCacheFiles(context);
        Bitmap cropBitmap = cropBitmap(bitmap, rect);
        String str2 = BASE_NAME + bitmap.hashCode() + "_" + (rect == null ? 0 : rect.hashCode()) + ".png";
        File file = new File(context.getCacheDir(), SUB_FOLDER);
        file.mkdir();
        File file2 = new File(file, str2);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            cropBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.close();
        } catch (IOException e4) {
            Log.e(str, "Error saving image", e4);
        }
        return FileProvider.b(context, AUTHORITY).b(file2);
    }

    public static Intent[] getShareIntentForImageUri(Uri uri, Intent intent) {
        if (intent == null) {
            intent = new Intent();
        }
        intent.setAction("android.intent.action.SEND").setComponent(null).addFlags(268435456).addFlags(1).setType("image/png").putExtra("android.intent.extra.STREAM", uri).setClipData(new ClipData(new ClipDescription("content", new String[]{"image/png"}), new ClipData.Item(uri)));
        return new Intent[]{Intent.createChooser(intent, null).addFlags(268435456)};
    }

    public static /* synthetic */ boolean lambda$clearOldCacheFiles$5(File file, String str) {
        return str.startsWith(BASE_NAME);
    }

    public static /* synthetic */ void lambda$clearOldCacheFiles$6(Context context) {
        File[] listFiles = new File(context.getCacheDir(), SUB_FOLDER).listFiles(new C0573t());
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.lastModified() + FILE_LIFE < System.currentTimeMillis()) {
                    file.delete();
                }
            }
        }
    }

    public static /* synthetic */ void lambda$persistBitmapAndStartActivity$3(Context context, Intent[] intentArr, View view) {
        context.startActivity(intentArr[0], ActivityOptions.makeSceneTransitionAnimation((Activity) context, view, "screenshot_preview_image").toBundle());
    }

    public static /* synthetic */ void lambda$persistBitmapAndStartActivity$4(Context context, Intent[] intentArr, View view) {
        context.startActivities(intentArr, ActivityOptions.makeSceneTransitionAnimation((Activity) context, view, "screenshot_preview_image").toBundle());
    }

    public static /* synthetic */ void lambda$shareImage$0(Supplier supplier, RectF rectF, Context context, String str, AppTarget appTarget, ShortcutInfo shortcutInfo) {
        Bitmap bitmap = (Bitmap) supplier.get();
        if (bitmap == null) {
            return;
        }
        Rect rect = new Rect();
        rectF.round(rect);
        Intent intent = new Intent();
        Uri imageUri = getImageUri(bitmap, rect, context, str);
        intent.setAction("android.intent.action.SEND").setComponent(new ComponentName(appTarget.getPackageName(), appTarget.getClassName())).addFlags(268435456).addFlags(1).setType("image/png").putExtra("android.intent.extra.STREAM", imageUri).putExtra("android.intent.extra.shortcut.ID", shortcutInfo.getId()).setClipData(new ClipData(new ClipDescription("content", new String[]{"image/png"}), new ClipData.Item(imageUri)));
        if (context.getUserId() == appTarget.getUser().getIdentifier()) {
            context.startActivity(intent);
            return;
        }
        intent.prepareToLeaveUser(context.getUserId());
        intent.fixUris(context.getUserId());
        context.startActivityAsUser(intent, appTarget.getUser());
    }

    public static /* synthetic */ void lambda$startShareActivity$1(Supplier supplier, String str, Context context, Rect rect, Intent intent) {
        Bitmap bitmap = (Bitmap) supplier.get();
        if (bitmap == null) {
            Log.e(str, "No snapshot available, not starting share.");
        } else {
            persistBitmapAndStartActivity(context, bitmap, rect, intent, new C0571q(1), str);
        }
    }

    public static /* synthetic */ void lambda$startShareActivity$2(Supplier supplier, String str, Context context, Rect rect, Intent intent, View view) {
        Bitmap bitmap = (Bitmap) supplier.get();
        if (bitmap == null) {
            Log.e(str, "No snapshot available, not starting share.");
        } else {
            persistBitmapAndStartActivity(context, bitmap, rect, intent, new C0571q(0), str, view);
        }
    }

    public static void persistBitmapAndStartActivity(Context context, Bitmap bitmap, Rect rect, Intent intent, BiFunction biFunction, String str) {
        persistBitmapAndStartActivity(context, bitmap, rect, intent, biFunction, str, (Runnable) null);
    }

    public static void saveScreenshot(SystemUiProxy systemUiProxy, Bitmap bitmap, Rect rect, Insets insets, Task.TaskKey taskKey) {
        systemUiProxy.takeScreenshot(new ScreenshotRequest.Builder(3, 3).setTopComponent(taskKey.sourceComponent).setTaskId(taskKey.id).setUserId(taskKey.userId).setBitmap(bitmap).setBoundsOnScreen(rect).setInsets(insets).build());
    }

    public static void shareImage(Context context, Supplier supplier, RectF rectF, ShortcutInfo shortcutInfo, AppTarget appTarget, String str) {
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0572s(supplier, rectF, context, str, appTarget, shortcutInfo));
    }

    public static void startShareActivity(final Context context, final Supplier supplier, final Rect rect, final Intent intent, final String str) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.r
            @Override // java.lang.Runnable
            public final void run() {
                ImageActionUtils.lambda$startShareActivity$1(supplier, str, context, rect, intent);
            }
        });
    }

    public static void persistBitmapAndStartActivity(Context context, Bitmap bitmap, Rect rect, Intent intent, BiFunction biFunction, String str, Runnable runnable) {
        Intent[] intentArr = (Intent[]) biFunction.apply(getImageUri(bitmap, rect, context, str), intent);
        try {
            if (intentArr.length == 1) {
                context.startActivity(intentArr[0]);
            } else {
                context.startActivities(intentArr);
            }
        } catch (ActivityNotFoundException unused) {
            Log.e(TAG, "No activity found to receive image intent");
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void startShareActivity(Context context, Supplier supplier, Rect rect, Intent intent, String str, View view) {
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0572s(supplier, str, context, rect, intent, view));
    }

    public static void persistBitmapAndStartActivity(final Context context, Bitmap bitmap, Rect rect, Intent intent, BiFunction biFunction, String str, final View view) {
        final Intent[] intentArr = (Intent[]) biFunction.apply(getImageUri(bitmap, rect, context, str), intent);
        if (intentArr.length == 1) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.u
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r4) {
                        case 0:
                            ImageActionUtils.lambda$persistBitmapAndStartActivity$3(context, intentArr, view);
                            return;
                        default:
                            ImageActionUtils.lambda$persistBitmapAndStartActivity$4(context, intentArr, view);
                            return;
                    }
                }
            });
        } else {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.u
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r4) {
                        case 0:
                            ImageActionUtils.lambda$persistBitmapAndStartActivity$3(context, intentArr, view);
                            return;
                        default:
                            ImageActionUtils.lambda$persistBitmapAndStartActivity$4(context, intentArr, view);
                            return;
                    }
                }
            });
        }
    }
}
