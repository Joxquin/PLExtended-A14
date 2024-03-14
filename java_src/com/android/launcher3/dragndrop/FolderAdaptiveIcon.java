package com.android.launcher3.dragndrop;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import j.C1080K;
/* loaded from: classes.dex */
public final class FolderAdaptiveIcon extends AdaptiveIconDrawable {
    private static final Rect sTmpRect = new Rect();
    private final Drawable mBadge;
    private final Drawable.ConstantState mConstantState;
    private final Path mMask;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class BitmapRendererDrawable extends Drawable {
        private final BitmapRenderer mRenderer;

        /* loaded from: classes.dex */
        final class MyConstantState extends Drawable.ConstantState {
            private final BitmapRenderer mRenderer;

            public MyConstantState(BitmapRenderer bitmapRenderer) {
                this.mRenderer = bitmapRenderer;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public final int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public final Drawable newDrawable() {
                return new BitmapRendererDrawable(this.mRenderer);
            }
        }

        public BitmapRendererDrawable(BitmapRenderer bitmapRenderer) {
            this.mRenderer = bitmapRenderer;
        }

        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            this.mRenderer.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public final Drawable.ConstantState getConstantState() {
            return new MyConstantState(this.mRenderer);
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public final void setAlpha(int i4) {
        }

        @Override // android.graphics.drawable.Drawable
        public final void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* loaded from: classes.dex */
    final class MyConstantState extends Drawable.ConstantState {
        private final Drawable.ConstantState mBadge;
        private final Drawable.ConstantState mBg;
        private final Drawable.ConstantState mFg;
        private final Path mMask;

        public MyConstantState(Drawable.ConstantState constantState, Drawable.ConstantState constantState2, Drawable.ConstantState constantState3, Path path) {
            this.mBg = constantState;
            this.mFg = constantState2;
            this.mBadge = constantState3;
            this.mMask = path;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.mBadge.getChangingConfigurations() & this.mBg.getChangingConfigurations() & this.mFg.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new FolderAdaptiveIcon(this.mBg.newDrawable(), this.mFg.newDrawable(), this.mBadge.newDrawable(), this.mMask, 0);
        }
    }

    public /* synthetic */ FolderAdaptiveIcon(Drawable drawable, Drawable drawable2, Drawable drawable3, Path path, int i4) {
        this(drawable, drawable2, drawable3, path);
    }

    public static void a(ActivityContext activityContext, int i4, int i5, Canvas canvas, Canvas canvas2, Canvas canvas3) {
        FolderIcon findFolderIcon = activityContext.findFolderIcon(i4);
        if (findFolderIcon == null) {
            throw new IllegalArgumentException(C1080K.a("Folder not found with id: ", i4));
        }
        Rect rect = sTmpRect;
        findFolderIcon.getPreviewBounds(rect);
        int width = rect.width();
        PreviewBackground folderBackground = findFolderIcon.getFolderBackground();
        int i6 = (i5 - width) / 2;
        float f4 = (-rect.left) + i6;
        float f5 = (-rect.top) + i6;
        canvas3.save();
        canvas3.translate(f4, f5);
        findFolderIcon.drawDot(canvas3);
        canvas3.restore();
        canvas2.save();
        canvas2.translate(f4, f5);
        findFolderIcon.getPreviewItemManager().draw(canvas2);
        canvas2.restore();
        Paint paint = new Paint(1);
        paint.setColor(folderBackground.getBgColor());
        float f6 = i5 / 2.0f;
        canvas.drawCircle(f6, f6, folderBackground.getRadius(), paint);
    }

    public static FolderAdaptiveIcon createFolderAdaptiveIcon(final ActivityContext activityContext, final int i4, Point point) {
        final int i5;
        if (Utilities.ATLEAST_P && (i5 = point.x) == point.y) {
            int max = Math.max(i5, activityContext.getDeviceProfile().folderIconSizePx);
            final float f4 = max - i5;
            final Picture picture = new Picture();
            Picture picture2 = new Picture();
            final Picture picture3 = new Picture();
            final Canvas beginRecording = picture.beginRecording(i5, i5);
            final Canvas beginRecording2 = picture3.beginRecording(i5, i5);
            final Canvas beginRecording3 = picture2.beginRecording(max, max);
            beginRecording3.translate(f4, f4);
            Path path = new Path();
            float f5 = -f4;
            float f6 = i5 + f4;
            path.addRect(f5, f5, f6, f6, Path.Direction.CCW);
            try {
                try {
                    Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: J0.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            FolderAdaptiveIcon.a(ActivityContext.this, i4, i5, beginRecording, beginRecording3, beginRecording2);
                        }
                    }).get();
                    picture.endRecording();
                    picture2.endRecording();
                    picture3.endRecording();
                    final Bitmap createBitmap = Bitmap.createBitmap(picture2);
                    final Paint paint = new Paint(1);
                    return new FolderAdaptiveIcon(new BitmapRendererDrawable(new BitmapRenderer() { // from class: J0.l
                        @Override // com.android.launcher3.icons.BitmapRenderer
                        public final void draw(Canvas canvas) {
                            int i6 = r2;
                            Picture picture4 = picture;
                            switch (i6) {
                                case 0:
                                    canvas.drawPicture(picture4);
                                    return;
                                default:
                                    canvas.drawPicture(picture4);
                                    return;
                            }
                        }
                    }), new BitmapRendererDrawable(new BitmapRenderer() { // from class: J0.m
                        @Override // com.android.launcher3.icons.BitmapRenderer
                        public final void draw(Canvas canvas) {
                            float f7 = -f4;
                            canvas.drawBitmap(createBitmap, f7, f7, paint);
                        }
                    }), new BitmapRendererDrawable(new BitmapRenderer() { // from class: J0.l
                        @Override // com.android.launcher3.icons.BitmapRenderer
                        public final void draw(Canvas canvas) {
                            int i6 = r2;
                            Picture picture4 = picture3;
                            switch (i6) {
                                case 0:
                                    canvas.drawPicture(picture4);
                                    return;
                                default:
                                    canvas.drawPicture(picture4);
                                    return;
                            }
                        }
                    }), path);
                } catch (Exception e4) {
                    Log.e("FolderAdaptiveIcon", "Unable to create folder icon", e4);
                    picture.endRecording();
                    picture2.endRecording();
                    picture3.endRecording();
                    return null;
                }
            } catch (Throwable th) {
                picture.endRecording();
                picture2.endRecording();
                picture3.endRecording();
                throw th;
            }
        }
        return null;
    }

    public final Drawable getBadge() {
        return this.mBadge;
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable, android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.mConstantState;
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable
    public final Path getIconMask() {
        return this.mMask;
    }

    private FolderAdaptiveIcon(Drawable drawable, Drawable drawable2, Drawable drawable3, Path path) {
        super(drawable, drawable2);
        this.mBadge = drawable3;
        this.mMask = path;
        this.mConstantState = new MyConstantState(drawable.getConstantState(), drawable2.getConstantState(), drawable3.getConstantState(), path);
    }
}
