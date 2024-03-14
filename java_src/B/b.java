package B;

import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class b extends SharedElementCallback {

    /* renamed from: a  reason: collision with root package name */
    public final l f104a;

    public b(l lVar) {
        this.f104a = lVar;
    }

    @Override // android.app.SharedElementCallback
    public final Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
        Bitmap bitmap;
        Bitmap bitmap2;
        l lVar = this.f104a;
        lVar.getClass();
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            Drawable drawable = imageView.getDrawable();
            Drawable background = imageView.getBackground();
            if (drawable != null && background == null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                    bitmap2 = null;
                } else {
                    float min = Math.min(1.0f, 1048576.0f / (intrinsicWidth * intrinsicHeight));
                    if ((drawable instanceof BitmapDrawable) && min == 1.0f) {
                        bitmap2 = ((BitmapDrawable) drawable).getBitmap();
                    } else {
                        int i4 = (int) (intrinsicWidth * min);
                        int i5 = (int) (intrinsicHeight * min);
                        Bitmap createBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        Rect bounds = drawable.getBounds();
                        int i6 = bounds.left;
                        int i7 = bounds.top;
                        int i8 = bounds.right;
                        int i9 = bounds.bottom;
                        drawable.setBounds(0, 0, i4, i5);
                        drawable.draw(canvas);
                        drawable.setBounds(i6, i7, i8, i9);
                        bitmap2 = createBitmap;
                    }
                }
                if (bitmap2 != null) {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("sharedElement:snapshot:bitmap", bitmap2);
                    bundle.putString("sharedElement:snapshot:imageScaleType", imageView.getScaleType().toString());
                    if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                        float[] fArr = new float[9];
                        imageView.getImageMatrix().getValues(fArr);
                        bundle.putFloatArray("sharedElement:snapshot:imageMatrix", fArr);
                        return bundle;
                    }
                    return bundle;
                }
            }
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        if (round <= 0 || round2 <= 0) {
            bitmap = null;
        } else {
            float min2 = Math.min(1.0f, 1048576.0f / (round * round2));
            int i10 = (int) (round * min2);
            int i11 = (int) (round2 * min2);
            if (lVar.f108a == null) {
                lVar.f108a = new Matrix();
            }
            lVar.f108a.set(matrix);
            lVar.f108a.postTranslate(-rectF.left, -rectF.top);
            lVar.f108a.postScale(min2, min2);
            bitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmap);
            canvas2.concat(lVar.f108a);
            view.draw(canvas2);
        }
        return bitmap;
    }

    @Override // android.app.SharedElementCallback
    public final View onCreateSnapshotView(Context context, Parcelable parcelable) {
        this.f104a.getClass();
        if (!(parcelable instanceof Bundle)) {
            if (parcelable instanceof Bitmap) {
                ImageView imageView = new ImageView(context);
                imageView.setImageBitmap((Bitmap) parcelable);
                return imageView;
            }
            return null;
        }
        Bundle bundle = (Bundle) parcelable;
        Bitmap bitmap = (Bitmap) bundle.getParcelable("sharedElement:snapshot:bitmap");
        if (bitmap == null) {
            return null;
        }
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageBitmap(bitmap);
        imageView2.setScaleType(ImageView.ScaleType.valueOf(bundle.getString("sharedElement:snapshot:imageScaleType")));
        if (imageView2.getScaleType() == ImageView.ScaleType.MATRIX) {
            float[] floatArray = bundle.getFloatArray("sharedElement:snapshot:imageMatrix");
            Matrix matrix = new Matrix();
            matrix.setValues(floatArray);
            imageView2.setImageMatrix(matrix);
            return imageView2;
        }
        return imageView2;
    }

    @Override // android.app.SharedElementCallback
    public final void onMapSharedElements(List list, Map map) {
        this.f104a.getClass();
    }

    @Override // android.app.SharedElementCallback
    public final void onRejectSharedElements(List list) {
        this.f104a.getClass();
    }

    @Override // android.app.SharedElementCallback
    public final void onSharedElementEnd(List list, List list2, List list3) {
        this.f104a.getClass();
    }

    @Override // android.app.SharedElementCallback
    public final void onSharedElementStart(List list, List list2, List list3) {
        this.f104a.getClass();
    }

    @Override // android.app.SharedElementCallback
    public final void onSharedElementsArrived(List list, List list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
        this.f104a.getClass();
        onSharedElementsReadyListener.onSharedElementsReady();
    }
}
