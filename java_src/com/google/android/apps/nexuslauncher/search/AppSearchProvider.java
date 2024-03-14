package com.google.android.apps.nexuslauncher.search;

import Y1.CallableC0146b;
import Y1.ContentProvider$PipeDataWriterC0145a;
import Y1.d;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.appprediction.InstantAppItemInfo;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.Executors;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class AppSearchProvider extends ContentProvider {

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f7553e = {"_id", "suggest_text_1", "suggest_icon_1", "suggest_intent_action", "suggest_intent_data"};

    /* renamed from: d  reason: collision with root package name */
    public final ContentProvider$PipeDataWriterC0145a f7554d = new ContentProvider$PipeDataWriterC0145a();

    public static Uri a(ComponentName componentName, ItemInfo itemInfo) {
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("content").authority("com.google.android.apps.nexuslauncher.appssearch").appendQueryParameter("component", componentName.flattenToShortString()).appendQueryParameter("user", Integer.toString(itemInfo.user.getIdentifier()));
        if (itemInfo.isDisabled()) {
            appendQueryParameter.appendQueryParameter("isDisabled", "true");
        }
        if (itemInfo instanceof InstantAppItemInfo) {
            appendQueryParameter.appendQueryParameter("instant-intent", itemInfo.getIntent().toUri(0));
        }
        return appendQueryParameter.build();
    }

    public static Bitmap b(Context context, ItemInfoWithIcon itemInfoWithIcon) {
        BitmapInfo bitmapInfo = itemInfoWithIcon.bitmap;
        if (itemInfoWithIcon.isDisabled() || bitmapInfo.flags != 0) {
            int width = bitmapInfo.icon.getWidth();
            Bitmap bitmap = bitmapInfo.icon;
            int height = bitmap.getHeight();
            FastBitmapDrawable newIcon = bitmapInfo.newIcon(0, context);
            newIcon.setIsDisabled(itemInfoWithIcon.isDisabled());
            newIcon.setBounds(0, 0, width, height);
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                GraphicsUtils.noteNewBitmapCreated();
                Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                newIcon.draw(new Canvas(createBitmap));
                return createBitmap;
            }
            GraphicsUtils.noteNewBitmapCreated();
            Picture picture = new Picture();
            newIcon.draw(picture.beginRecording(width, height));
            picture.endRecording();
            return Bitmap.createBitmap(picture);
        }
        return itemInfoWithIcon.bitmap.icon;
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.d("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        } else if ("loadIcon".equals(str)) {
            try {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("suggest_icon_1", (Bitmap) Executors.MODEL_EXECUTOR.submit(new CallableC0146b(this, Uri.parse(str2))).get());
                return bundle2;
            } catch (Exception e4) {
                Log.e("AppSearchProvider", "Unable to load icon " + e4);
                return null;
            }
        } else {
            return super.call(str, str2, bundle);
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return "vnd.android.cursor.dir/vnd.android.search.suggest";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        }
        try {
            return openPipeHelper(uri, "image/png", null, Executors.MODEL_EXECUTOR.submit(new CallableC0146b(this, uri)), this.f7554d);
        } catch (Exception e4) {
            throw new FileNotFoundException(e4.getMessage());
        }
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        List<AppInfo> arrayList;
        Looper myLooper = Looper.myLooper();
        Looper mainLooper = Looper.getMainLooper();
        int i4 = 0;
        String[] strArr3 = f7553e;
        if (myLooper == mainLooper) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return new MatrixCursor(strArr3, 0);
        }
        String lastPathSegment = uri.getLastPathSegment();
        System.currentTimeMillis();
        d dVar = new d(lastPathSegment);
        LauncherAppState.getInstance(getContext()).getModel().enqueueModelUpdateTask(dVar);
        try {
            arrayList = (List) dVar.f2281d.get(5L, TimeUnit.SECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e4) {
            Log.d("AppSearchProvider", "Error searching apps", e4);
            arrayList = new ArrayList();
        }
        int length = lastPathSegment.length();
        MatrixCursor matrixCursor = new MatrixCursor(strArr3, arrayList.size());
        for (AppInfo appInfo : arrayList) {
            String uri2 = a(appInfo.componentName, appInfo).buildUpon().appendQueryParameter("searchQueryLength", Integer.toString(length)).build().toString();
            matrixCursor.newRow().add(Integer.valueOf(i4)).add(appInfo.title.toString()).add(uri2).add("com.google.android.apps.nexuslauncher.search.APP_LAUNCH").add(uri2);
            i4++;
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
