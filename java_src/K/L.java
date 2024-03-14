package k;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes.dex */
public class L {

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f10792c = {16843067, 16843068};

    /* renamed from: a  reason: collision with root package name */
    public final ProgressBar f10793a;

    /* renamed from: b  reason: collision with root package name */
    public Bitmap f10794b;

    public L(ProgressBar progressBar) {
        this.f10793a = progressBar;
    }

    public void a(AttributeSet attributeSet, int i4) {
        ProgressBar progressBar = this.f10793a;
        R0 m4 = R0.m(progressBar.getContext(), attributeSet, f10792c, i4);
        Drawable f4 = m4.f(0);
        if (f4 != null) {
            if (f4 instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) f4;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i5 = 0; i5 < numberOfFrames; i5++) {
                    Drawable b4 = b(animationDrawable.getFrame(i5), true);
                    b4.setLevel(10000);
                    animationDrawable2.addFrame(b4, animationDrawable.getDuration(i5));
                }
                animationDrawable2.setLevel(10000);
                f4 = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(f4);
        }
        Drawable f5 = m4.f(1);
        if (f5 != null) {
            progressBar.setProgressDrawable(b(f5, false));
        }
        m4.n();
    }

    public final Drawable b(Drawable drawable, boolean z4) {
        if (drawable instanceof F.c) {
            F.c cVar = (F.c) drawable;
            Drawable b4 = cVar.b();
            if (b4 != null) {
                cVar.a(b(b4, z4));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i4 = 0; i4 < numberOfLayers; i4++) {
                int id = layerDrawable.getId(i4);
                drawableArr[i4] = b(layerDrawable.getDrawable(i4), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i5 = 0; i5 < numberOfLayers; i5++) {
                layerDrawable2.setId(i5, layerDrawable.getId(i5));
                layerDrawable2.setLayerGravity(i5, layerDrawable.getLayerGravity(i5));
                layerDrawable2.setLayerWidth(i5, layerDrawable.getLayerWidth(i5));
                layerDrawable2.setLayerHeight(i5, layerDrawable.getLayerHeight(i5));
                layerDrawable2.setLayerInsetLeft(i5, layerDrawable.getLayerInsetLeft(i5));
                layerDrawable2.setLayerInsetRight(i5, layerDrawable.getLayerInsetRight(i5));
                layerDrawable2.setLayerInsetTop(i5, layerDrawable.getLayerInsetTop(i5));
                layerDrawable2.setLayerInsetBottom(i5, layerDrawable.getLayerInsetBottom(i5));
                layerDrawable2.setLayerInsetStart(i5, layerDrawable.getLayerInsetStart(i5));
                layerDrawable2.setLayerInsetEnd(i5, layerDrawable.getLayerInsetEnd(i5));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f10794b == null) {
                this.f10794b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z4 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }
}
