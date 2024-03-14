package X1;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.StartActivityParams;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.ImageActionsApi;
import com.android.quickstep.util.ImageActionUtils;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.function.BiFunction;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class f extends ImageActionsApi {

    /* renamed from: a  reason: collision with root package name */
    public final ActivityContext f2035a;

    /* renamed from: b  reason: collision with root package name */
    public final TaskView f2036b;

    public f(Context context, Supplier supplier, ActivityContext activityContext, TaskView taskView) {
        super(context, supplier);
        this.f2035a = activityContext;
        this.f2036b = taskView;
    }

    public static Intent[] c(f fVar, Uri uri, Intent intent) {
        PendingIntent pendingIntent;
        fVar.mContext.grantUriPermission("com.google.android.googlequicksearchbox", uri, 1);
        if (intent != null && intent.hasExtra("SourceAppPackageName") && !TextUtils.isEmpty(intent.getStringExtra("SourceAppPackageName"))) {
            String stringExtra = intent.getStringExtra("SourceAppPackageName");
            Log.d("ImageApiImpl", "Source app package name is: " + stringExtra);
            Intent launchIntentForPackage = fVar.mContext.getPackageManager().getLaunchIntentForPackage(stringExtra);
            if (launchIntentForPackage != null) {
                pendingIntent = PendingIntent.getActivity(fVar.mContext, 1, launchIntentForPackage, QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE);
                StartActivityParams startActivityParams = new StartActivityParams(pendingIntent, 0);
                startActivityParams.intent = new Intent("android.intent.action.VIEW").setData(((intent != null || intent.getData() == null || TextUtils.isEmpty(intent.getData().toString())) ? Uri.parse("googleapp://lens") : intent.getData()).buildUpon().appendQueryParameter("LensBitmapUriKey", uri.toString()).build());
                Intent launchIntent = ProxyActivityStarter.getLaunchIntent(fVar.mContext, startActivityParams);
                launchIntent.addFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED);
                return new Intent[]{launchIntent};
            }
        }
        pendingIntent = null;
        StartActivityParams startActivityParams2 = new StartActivityParams(pendingIntent, 0);
        startActivityParams2.intent = new Intent("android.intent.action.VIEW").setData(((intent != null || intent.getData() == null || TextUtils.isEmpty(intent.getData().toString())) ? Uri.parse("googleapp://lens") : intent.getData()).buildUpon().appendQueryParameter("LensBitmapUriKey", uri.toString()).build());
        Intent launchIntent2 = ProxyActivityStarter.getLaunchIntent(fVar.mContext, startActivityParams2);
        launchIntent2.addFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED);
        return new Intent[]{launchIntent2};
    }

    public static void d(f fVar) {
        AssistUtilsGoogle assistUtilsGoogle = new AssistUtilsGoogle(fVar.mContext);
        if (!assistUtilsGoogle.c() ? false : assistUtilsGoogle.b(5)) {
            fVar.f2035a.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_ASSISTANT_SUCCESSFUL_OVERVIEW_MENU);
        }
    }

    public static void e(f fVar, Rect rect) {
        ContentResolver contentResolver = fVar.mContext.getContentResolver();
        Uri contentUri = MediaStore.Images.Media.getContentUri("external_primary");
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", "Img_" + new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.US).format(new Date()) + ".jpeg");
        contentValues.put("is_pending", (Integer) 1);
        Uri insert = contentResolver.insert(contentUri, contentValues);
        try {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(insert, "w");
            ImageActionUtils.cropBitmap((Bitmap) fVar.mBitmapSupplier.get(), rect).compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(openFileDescriptor.getFileDescriptor()));
            contentValues.clear();
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update(insert, contentValues, null, null);
            Executors.MAIN_EXECUTOR.execute(new e(fVar, insert, 0));
            openFileDescriptor.close();
        } catch (IOException e4) {
            Log.e("ImageApiImpl", "error saving image", e4);
        }
    }

    public static /* synthetic */ void f(f fVar, Uri uri) {
        fVar.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, "image/jpeg");
        intent.setFlags(268435456);
        fVar.mContext.startActivity(intent);
    }

    public static /* synthetic */ void g(f fVar, Rect rect) {
        fVar.getClass();
        try {
            ((ClipboardManager) fVar.mContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newUri(fVar.mContext.getContentResolver(), "CopyImage", ImageActionUtils.getImageUri((Bitmap) fVar.mBitmapSupplier.get(), rect, fVar.mContext, "ImageApiImpl")));
        } catch (Exception e4) {
            Log.e("ImageApiImpl", "error copying image", e4);
        }
    }

    public static /* synthetic */ void h(final f fVar, Rect rect, Intent intent) {
        Bitmap bitmap = (Bitmap) fVar.mBitmapSupplier.get();
        if (bitmap == null) {
            Log.e("ImageApiImpl", "No snapshot available, not starting lens.");
        } else {
            ImageActionUtils.persistBitmapAndStartActivity(fVar.mContext, bitmap, rect, intent, new BiFunction() { // from class: X1.d
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return f.c(f.this, (Uri) obj, (Intent) obj2);
                }
            }, "ImageApiImpl");
        }
    }

    public final Bitmap i(Rect rect) {
        Bitmap bitmap = (Bitmap) this.mBitmapSupplier.get();
        if (bitmap == null) {
            Log.e("ImageApiImpl", "No snapshot available, not starting lens.");
            return null;
        }
        return ImageActionUtils.cropBitmap(bitmap, rect);
    }

    public final void j(Rect rect, Intent intent) {
        ImageActionUtils.startShareActivity(this.mContext, this.mBitmapSupplier, rect, intent, "ImageApiImpl");
    }

    @Override // com.android.quickstep.ImageActionsApi
    public final void startShareActivity(Rect rect) {
        ImageActionUtils.startShareActivity(this.mContext, this.mBitmapSupplier, rect, null, "ImageApiImpl");
    }
}
