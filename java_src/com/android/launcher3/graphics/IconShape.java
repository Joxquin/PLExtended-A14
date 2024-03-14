package com.android.launcher3.graphics;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatArrayEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.util.Xml;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.views.ClipPathView;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public abstract class IconShape {
    private static IconShape sInstance = new Circle();
    private static float sNormalizationScale = 0.92f;

    /* loaded from: classes.dex */
    public final class Circle extends PathShape {
        private final float[] mTempRadii;

        public Circle() {
            super(0);
            this.mTempRadii = new float[8];
        }

        public static void a(Circle circle, FloatArrayEvaluator floatArrayEvaluator, float[] fArr, float[] fArr2, Path path, ValueAnimator valueAnimator) {
            circle.getClass();
            float[] evaluate = floatArrayEvaluator.evaluate(((Float) valueAnimator.getAnimatedValue()).floatValue(), fArr, fArr2);
            float f4 = evaluate[0];
            float f5 = evaluate[1];
            float f6 = evaluate[2];
            float f7 = evaluate[3];
            float f8 = evaluate[4];
            float f9 = evaluate[5];
            float[] fArr3 = circle.mTempRadii;
            fArr3[7] = f8;
            fArr3[6] = f8;
            fArr3[3] = f8;
            fArr3[2] = f8;
            fArr3[1] = f8;
            fArr3[0] = f8;
            fArr3[5] = f9;
            fArr3[4] = f9;
            path.addRoundRect(f4, f5, f6, f7, fArr3, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void addToPath(float f4, float f5, float f6, Path path) {
            path.addCircle(f4 + f6, f5 + f6, f6, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape.PathShape
        public final ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, float f4, Path path) {
            float width = rect.width() / 2.0f;
            return new a(this, new FloatArrayEvaluator(new float[6]), new float[]{rect.left, rect.top, rect.right, rect.bottom, width, width}, new float[]{rect2.left, rect2.top, rect2.right, rect2.bottom, f4, f4}, path, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class PathShape extends IconShape {
        private final Path mTmpPath;

        public /* synthetic */ PathShape(int i4) {
            this();
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final Animator createRevealAnimator(final View view, Rect rect, Rect rect2, float f4, boolean z4) {
            final Path path = new Path();
            final ValueAnimator.AnimatorUpdateListener newUpdateListener = newUpdateListener(rect, rect2, f4, path);
            float[] fArr = {0.0f, 1.0f};
            if (z4) {
                // fill-array-data instruction
                fArr[0] = 1.0f;
                fArr[1] = 0.0f;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.graphics.IconShape.PathShape.1
                private ViewOutlineProvider mOldOutlineProvider;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    view.setTranslationZ(0.0f);
                    ((ClipPathView) view).setClipPath(null);
                    view.setOutlineProvider(this.mOldOutlineProvider);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    this.mOldOutlineProvider = view.getOutlineProvider();
                    view.setOutlineProvider(null);
                    View view2 = view;
                    view2.setTranslationZ(-view2.getElevation());
                }
            });
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: K0.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Path path2 = path;
                    ValueAnimator.AnimatorUpdateListener animatorUpdateListener = newUpdateListener;
                    View view2 = view;
                    path2.reset();
                    animatorUpdateListener.onAnimationUpdate(valueAnimator);
                    ((ClipPathView) view2).setClipPath(path2);
                }
            });
            return ofFloat;
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void drawShape(Canvas canvas, float f4, float f5, float f6, Paint paint) {
            Path path = this.mTmpPath;
            path.reset();
            addToPath(f4, f5, f6, path);
            canvas.drawPath(path, paint);
        }

        public abstract ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, float f4, Path path);

        private PathShape() {
            this.mTmpPath = new Path();
        }
    }

    /* loaded from: classes.dex */
    public final class RoundedSquare extends IconShape {
        private final float mRadiusRatio;

        public RoundedSquare(float f4) {
            this.mRadiusRatio = f4;
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void addToPath(float f4, float f5, float f6, Path path) {
            float f7 = f4 + f6;
            float f8 = f5 + f6;
            float f9 = f6 * this.mRadiusRatio;
            path.addRoundRect(f7 - f6, f8 - f6, f7 + f6, f8 + f6, f9, f9, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final Animator createRevealAnimator(View view, Rect rect, Rect rect2, float f4, boolean z4) {
            return new IconShape$SimpleRectShape$1((rect.width() / 2.0f) * this.mRadiusRatio, f4, rect, rect2).b(view, z4, 0.0f);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void drawShape(Canvas canvas, float f4, float f5, float f6, Paint paint) {
            float f7 = f4 + f6;
            float f8 = f5 + f6;
            float f9 = f6 * this.mRadiusRatio;
            canvas.drawRoundRect(f7 - f6, f8 - f6, f7 + f6, f8 + f6, f9, f9, paint);
        }
    }

    /* loaded from: classes.dex */
    public final class Squircle extends PathShape {
        private final float mRadiusRatio;

        public Squircle(float f4) {
            super(0);
            this.mRadiusRatio = f4;
        }

        public static /* synthetic */ void a(Squircle squircle, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, Path path, ValueAnimator valueAnimator) {
            squircle.getClass();
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f16 = 1.0f - floatValue;
            float f17 = (f5 * floatValue) + (f4 * f16);
            float f18 = (f7 * floatValue) + (f6 * f16);
            float f19 = (f9 * floatValue) + (f8 * f16);
            float f20 = (f11 * floatValue) + (f10 * f16);
            float f21 = (f13 * floatValue) + (f12 * f16);
            float f22 = (floatValue * f15) + (f16 * f14);
            float f23 = f18 - f22;
            path.moveTo(f17, f23 - f19);
            path.rLineTo(-f21, 0.0f);
            float f24 = f17 - f21;
            addLeftCurve(f24, f23, f19, f20, path);
            path.rLineTo(0.0f, f22 + f22);
            float f25 = f18 + f22;
            addRightCurve(f24, f25, f19, f20, path);
            path.rLineTo(f21 + f21, 0.0f);
            float f26 = f17 + f21;
            float f27 = -f19;
            float f28 = -f20;
            addLeftCurve(f26, f25, f27, f28, path);
            path.rLineTo(0.0f, (-f22) - f22);
            addRightCurve(f26, f23, f27, f28, path);
            path.close();
        }

        private static void addLeftCurve(float f4, float f5, float f6, float f7, Path path) {
            float f8 = f4 - f6;
            path.cubicTo(f4 - f7, f5 - f6, f8, f5 - f7, f8, f5);
        }

        private static void addRightCurve(float f4, float f5, float f6, float f7, Path path) {
            float f8 = f5 + f6;
            path.cubicTo(f4 - f6, f5 + f7, f4 - f7, f8, f4, f8);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void addToPath(float f4, float f5, float f6, Path path) {
            float f7 = f4 + f6;
            float f8 = f5 + f6;
            float f9 = f6 - (this.mRadiusRatio * f6);
            path.moveTo(f7, f8 - f6);
            addLeftCurve(f7, f8, f6, f9, path);
            addRightCurve(f7, f8, f6, f9, path);
            float f10 = -f6;
            float f11 = -f9;
            addLeftCurve(f7, f8, f10, f11, path);
            addRightCurve(f7, f8, f10, f11, path);
            path.close();
        }

        @Override // com.android.launcher3.graphics.IconShape.PathShape
        public final ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, final float f4, final Path path) {
            final float exactCenterX = rect.exactCenterX();
            final float exactCenterY = rect.exactCenterY();
            final float width = rect.width() / 2.0f;
            final float f5 = width - (this.mRadiusRatio * width);
            final float exactCenterX2 = rect2.exactCenterX();
            final float exactCenterY2 = rect2.exactCenterY();
            final float f6 = f4 * 0.55191505f;
            final float width2 = (rect2.width() / 2.0f) - f4;
            final float height = (rect2.height() / 2.0f) - f4;
            return new ValueAnimator.AnimatorUpdateListener() { // from class: K0.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IconShape.Squircle.a(IconShape.Squircle.this, exactCenterX, exactCenterX2, exactCenterY, exactCenterY2, width, f4, f5, f6, 0.0f, width2, 0.0f, height, path, valueAnimator);
                }
            };
        }
    }

    /* loaded from: classes.dex */
    public final class TearDrop extends PathShape {
        private final float mRadiusRatio;
        private final float[] mTempRadii;

        public TearDrop(float f4) {
            super(0);
            this.mTempRadii = new float[8];
            this.mRadiusRatio = f4;
        }

        public static void a(TearDrop tearDrop, FloatArrayEvaluator floatArrayEvaluator, float[] fArr, float[] fArr2, Path path, ValueAnimator valueAnimator) {
            tearDrop.getClass();
            float[] evaluate = floatArrayEvaluator.evaluate(((Float) valueAnimator.getAnimatedValue()).floatValue(), fArr, fArr2);
            float f4 = evaluate[0];
            float f5 = evaluate[1];
            float f6 = evaluate[2];
            float f7 = evaluate[3];
            float f8 = evaluate[4];
            float f9 = evaluate[5];
            float[] fArr3 = tearDrop.mTempRadii;
            fArr3[7] = f8;
            fArr3[6] = f8;
            fArr3[3] = f8;
            fArr3[2] = f8;
            fArr3[1] = f8;
            fArr3[0] = f8;
            fArr3[5] = f9;
            fArr3[4] = f9;
            path.addRoundRect(f4, f5, f6, f7, fArr3, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void addToPath(float f4, float f5, float f6, Path path) {
            float f7 = this.mRadiusRatio * f6;
            float f8 = f4 + f6;
            float f9 = f5 + f6;
            float[] fArr = this.mTempRadii;
            fArr[7] = f6;
            fArr[6] = f6;
            fArr[3] = f6;
            fArr[2] = f6;
            fArr[1] = f6;
            fArr[0] = f6;
            fArr[5] = f7;
            fArr[4] = f7;
            path.addRoundRect(f8 - f6, f9 - f6, f8 + f6, f9 + f6, fArr, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape.PathShape
        public final ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, float f4, Path path) {
            float width = rect.width() / 2.0f;
            return new a(this, new FloatArrayEvaluator(new float[6]), new float[]{rect.left, rect.top, rect.right, rect.bottom, width, this.mRadiusRatio * width}, new float[]{rect2.left, rect2.top, rect2.right, rect2.bottom, f4, f4}, path, 1);
        }
    }

    public static float getNormalizationScale() {
        return sNormalizationScale;
    }

    public static IconShape getShape() {
        return sInstance;
    }

    private static IconShape getShapeDefinition(String str, float f4) {
        str.getClass();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1599780719:
                if (str.equals("TearDrop")) {
                    c4 = 0;
                    break;
                }
                break;
            case -716854276:
                if (str.equals("Squircle")) {
                    c4 = 1;
                    break;
                }
                break;
            case -458911222:
                if (str.equals("RoundedSquare")) {
                    c4 = 2;
                    break;
                }
                break;
            case 2018617584:
                if (str.equals("Circle")) {
                    c4 = 3;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return new TearDrop(f4);
            case 1:
                return new Squircle(f4);
            case 2:
                return new RoundedSquare(f4);
            case 3:
                return new Circle();
            default:
                throw new IllegalArgumentException("Invalid shape type: ".concat(str));
        }
    }

    public static void init(Context context) {
        int i4;
        Region region = new Region(0, 0, 200, 200);
        Region region2 = new Region();
        AdaptiveIconDrawable adaptiveIconDrawable = new AdaptiveIconDrawable(new ColorDrawable(-16777216), new ColorDrawable(-16777216));
        adaptiveIconDrawable.setBounds(0, 0, 200, 200);
        region2.setPath(adaptiveIconDrawable.getIconMask(), region);
        Path path = new Path();
        Region region3 = new Region();
        ArrayList arrayList = new ArrayList();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.folder_shapes);
            while (true) {
                int next = xml.next();
                i4 = 1;
                if (next == 3 || next == 1 || "shapes".equals(xml.getName())) {
                    break;
                }
            }
            int depth = xml.getDepth();
            int[] iArr = {R.attr.folderIconRadius};
            while (true) {
                int next2 = xml.next();
                if ((next2 != 3 || xml.getDepth() > depth) && next2 != i4) {
                    if (next2 == 2) {
                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), iArr);
                        IconShape shapeDefinition = getShapeDefinition(xml.getName(), obtainStyledAttributes.getFloat(0, 1.0f));
                        obtainStyledAttributes.recycle();
                        arrayList.add(shapeDefinition);
                        i4 = 1;
                    }
                }
            }
            xml.close();
            Iterator it = arrayList.iterator();
            int i5 = Integer.MAX_VALUE;
            IconShape iconShape = null;
            while (it.hasNext()) {
                IconShape iconShape2 = (IconShape) it.next();
                path.reset();
                iconShape2.addToPath(0.0f, 0.0f, 100.0f, path);
                region3.setPath(path, region);
                region3.op(region2, Region.Op.XOR);
                int area = GraphicsUtils.getArea(region3);
                if (area < i5) {
                    iconShape = iconShape2;
                    i5 = area;
                }
            }
            if (iconShape != null) {
                sInstance = iconShape;
            }
            sNormalizationScale = IconNormalizer.normalizeAdaptiveIcon(adaptiveIconDrawable, 200, null);
        } catch (IOException | XmlPullParserException e4) {
            throw new RuntimeException(e4);
        }
    }

    public abstract void addToPath(float f4, float f5, float f6, Path path);

    public abstract Animator createRevealAnimator(View view, Rect rect, Rect rect2, float f4, boolean z4);

    public abstract void drawShape(Canvas canvas, float f4, float f5, float f6, Paint paint);
}
