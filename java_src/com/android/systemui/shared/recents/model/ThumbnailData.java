package com.android.systemui.shared.recents.model;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.util.Log;
import android.window.TaskSnapshot;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ThumbnailData {
    public int appearance;
    public Rect insets;
    public boolean isRealSnapshot;
    public boolean isTranslucent;
    public Rect letterboxInsets;
    public int orientation;
    public boolean reducedResolution;
    public int rotation;
    public float scale;
    public long snapshotId;
    public final Bitmap thumbnail;
    public int windowingMode;

    public ThumbnailData() {
        this.thumbnail = null;
        this.orientation = 0;
        this.rotation = -1;
        this.insets = new Rect();
        this.letterboxInsets = new Rect();
        this.reducedResolution = false;
        this.scale = 1.0f;
        this.isRealSnapshot = true;
        this.isTranslucent = false;
        this.windowingMode = 0;
        this.snapshotId = 0L;
    }

    private static Bitmap makeThumbnail(TaskSnapshot taskSnapshot) {
        try {
            HardwareBuffer hardwareBuffer = taskSnapshot.getHardwareBuffer();
            r0 = hardwareBuffer != null ? Bitmap.wrapHardwareBuffer(hardwareBuffer, taskSnapshot.getColorSpace()) : null;
            if (hardwareBuffer != null) {
                hardwareBuffer.close();
            }
        } catch (IllegalArgumentException e4) {
            Log.e("ThumbnailData", "Unexpected snapshot without USAGE_GPU_SAMPLED_IMAGE: " + taskSnapshot.getHardwareBuffer(), e4);
        }
        if (r0 == null) {
            Point taskSize = taskSnapshot.getTaskSize();
            Bitmap createBitmap = Bitmap.createBitmap(taskSize.x, taskSize.y, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(-16777216);
            return createBitmap;
        }
        return r0;
    }

    public static HashMap wrap(int[] iArr, TaskSnapshot[] taskSnapshotArr) {
        HashMap hashMap = new HashMap();
        if (iArr != null && taskSnapshotArr != null && iArr.length == taskSnapshotArr.length) {
            for (int length = taskSnapshotArr.length - 1; length >= 0; length--) {
                hashMap.put(Integer.valueOf(iArr[length]), new ThumbnailData(taskSnapshotArr[length]));
            }
        }
        return hashMap;
    }

    public void recycleBitmap() {
        Bitmap bitmap = this.thumbnail;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    public ThumbnailData(TaskSnapshot taskSnapshot) {
        Bitmap makeThumbnail = makeThumbnail(taskSnapshot);
        this.thumbnail = makeThumbnail;
        this.insets = new Rect(taskSnapshot.getContentInsets());
        this.letterboxInsets = new Rect(taskSnapshot.getLetterboxInsets());
        this.orientation = taskSnapshot.getOrientation();
        this.rotation = taskSnapshot.getRotation();
        this.reducedResolution = taskSnapshot.isLowResolution();
        this.scale = makeThumbnail.getWidth() / taskSnapshot.getTaskSize().x;
        this.isRealSnapshot = taskSnapshot.isRealSnapshot();
        this.isTranslucent = taskSnapshot.isTranslucent();
        this.windowingMode = taskSnapshot.getWindowingMode();
        this.appearance = taskSnapshot.getAppearance();
        this.snapshotId = taskSnapshot.getId();
    }
}
