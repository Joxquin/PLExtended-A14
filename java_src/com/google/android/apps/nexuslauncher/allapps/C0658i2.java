package com.google.android.apps.nexuslauncher.allapps;

import android.app.blob.BlobHandle;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.i2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0658i2 extends C0649g1 {

    /* renamed from: j  reason: collision with root package name */
    public final BlobHandle f7093j;

    /* renamed from: k  reason: collision with root package name */
    public final List f7094k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ SearchResultThumbnailView f7095l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0658i2(SearchResultThumbnailView searchResultThumbnailView, Icon icon, String str, UserHandle userHandle, CharSequence charSequence, BlobHandle blobHandle, List list) {
        super(icon, str, userHandle, charSequence, true, false);
        this.f7095l = searchResultThumbnailView;
        ArrayList arrayList = new ArrayList();
        this.f7094k = arrayList;
        this.f7093j = blobHandle;
        arrayList.addAll(list);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = super.getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.addAllItemAttributes(this.f7094k);
        return defaultItemInfoBuilder;
    }

    public final Bitmap x() {
        Bitmap bitmap;
        int i4;
        SearchResultThumbnailView searchResultThumbnailView = this.f7095l;
        Bitmap bitmap2 = null;
        BlobHandle blobHandle = this.f7093j;
        if (blobHandle != null) {
            C0647g c0647g = searchResultThumbnailView.f6825k;
            c0647g.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(c0647g.f7045a.openBlob(blobHandle));
                c0647g.a(SystemClock.elapsedRealtime() - elapsedRealtime, true);
                bitmap = BitmapFactory.decodeStream(autoCloseInputStream);
                autoCloseInputStream.close();
            } catch (IOException | SecurityException e4) {
                c0647g.a(SystemClock.elapsedRealtime() - elapsedRealtime, false);
                Log.e("BlobstoreAssetProvider", "Error getting asset from Blobstore", e4);
            }
            Icon icon = this.f7056f;
            if (bitmap != null && icon != null) {
                if (icon.getType() == 2) {
                    Drawable loadDrawable = icon.loadDrawable(searchResultThumbnailView.f6818d);
                    if (loadDrawable != null && loadDrawable.getIntrinsicWidth() != 0 && loadDrawable.getIntrinsicHeight() != 0) {
                        float intrinsicWidth = loadDrawable.getIntrinsicWidth() / loadDrawable.getIntrinsicHeight();
                        Drawable mutate = loadDrawable.mutate();
                        mutate.setTint(searchResultThumbnailView.f6834t);
                        if (intrinsicWidth > 1.0f) {
                            int floor = (int) Math.floor((searchResultThumbnailView.f6836v - searchResultThumbnailView.f6837w) / 2);
                            int floor2 = (int) Math.floor((searchResultThumbnailView.f6836v - (searchResultThumbnailView.f6837w / intrinsicWidth)) / 2.0f);
                            mutate.setBounds(floor, floor2, floor + searchResultThumbnailView.f6837w, ((int) Math.floor(i4 / intrinsicWidth)) + floor2);
                        } else {
                            int floor3 = (int) Math.floor((searchResultThumbnailView.f6836v - (searchResultThumbnailView.f6837w * intrinsicWidth)) / 2.0f);
                            int floor4 = (int) Math.floor((searchResultThumbnailView.f6836v - searchResultThumbnailView.f6837w) / 2);
                            mutate.setBounds(floor3, floor4, ((int) Math.floor(searchResultThumbnailView.f6837w * intrinsicWidth)) + floor3, searchResultThumbnailView.f6837w + floor4);
                        }
                        int i5 = searchResultThumbnailView.f6836v;
                        GraphicsUtils.noteNewBitmapCreated();
                        Picture picture = new Picture();
                        Canvas beginRecording = picture.beginRecording(i5, i5);
                        int save = beginRecording.save();
                        beginRecording.drawColor(searchResultThumbnailView.f6835u);
                        mutate.draw(beginRecording);
                        beginRecording.restoreToCount(save);
                        picture.endRecording();
                        bitmap2 = Bitmap.createBitmap(picture);
                    }
                    bitmap = bitmap2;
                }
                return bitmap == null ? ((BitmapDrawable) icon.loadDrawable(searchResultThumbnailView.getContext())).getBitmap() : bitmap;
            }
        }
        bitmap = null;
        Icon icon2 = this.f7056f;
        return bitmap != null ? bitmap : bitmap;
    }
}
