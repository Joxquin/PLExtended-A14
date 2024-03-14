package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.util.MultiScalePropertyFactory;
/* loaded from: classes.dex */
public final class LauncherAnimUtils {
    public static final FloatProperty ROTATION_DRAWABLE_PERCENT;
    public static final FloatProperty VIEW_ALPHA;
    public static final IntProperty VIEW_BACKGROUND_COLOR;
    public static final FloatProperty VIEW_TRANSLATE_X;
    public static final FloatProperty VIEW_TRANSLATE_Y;
    public static final IntProperty DRAWABLE_ALPHA = new IntProperty("drawableAlpha") { // from class: com.android.launcher3.LauncherAnimUtils.1
        public final Integer a(TextView textView) {
            switch (r2) {
                case 4:
                    return Integer.valueOf(textView.getTextColors().getDefaultColor());
                default:
                    return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
            }
        }

        @Override // android.util.Property
        public final Integer get(Object obj) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    return Integer.valueOf(((Drawable) obj).getAlpha());
                case 1:
                    View view = (View) obj;
                    if (view.getBackground() instanceof ColorDrawable) {
                        return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                    }
                    return 0;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams.width);
                        default:
                            return Integer.valueOf(layoutParams.height);
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams2.width);
                        default:
                            return Integer.valueOf(layoutParams2.height);
                    }
                case 4:
                    return a((TextView) obj);
                default:
                    return a((TextView) obj);
            }
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            int i5 = r2;
            switch (i5) {
                case 0:
                    ((Drawable) obj).setAlpha(i4);
                    return;
                case 1:
                    ((View) obj).setBackgroundColor(i4);
                    return;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams.width = i4;
                            return;
                        default:
                            layoutParams.height = i4;
                            return;
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams2.width = i4;
                            return;
                        default:
                            layoutParams2.height = i4;
                            return;
                    }
                case 4:
                    TextView textView = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView.setTextColor(i4);
                            return;
                        default:
                            textView.setHintTextColor(i4);
                            return;
                    }
                default:
                    TextView textView2 = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView2.setTextColor(i4);
                            return;
                        default:
                            textView2.setHintTextColor(i4);
                            return;
                    }
            }
        }
    };
    public static final FloatProperty SCALE_PROPERTY = new FloatProperty("scale") { // from class: com.android.launcher3.LauncherAnimUtils.2
        public final Float a(View view) {
            switch (r2) {
                case 0:
                    return Float.valueOf(view.getScaleX());
                case 1:
                default:
                    return Float.valueOf(view.getAlpha());
                case 2:
                    return Float.valueOf(view.getTranslationX());
                case 3:
                    return Float.valueOf(view.getTranslationY());
            }
        }

        public final void b(View view, float f4) {
            switch (r2) {
                case 0:
                    view.setScaleX(f4);
                    view.setScaleY(f4);
                    return;
                case 1:
                default:
                    view.setAlpha(f4);
                    return;
                case 2:
                    view.setTranslationX(f4);
                    return;
                case 3:
                    view.setTranslationY(f4);
                    return;
            }
        }

        @Override // android.util.Property
        public final Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((View) obj);
                case 1:
                    return Float.valueOf(((ImageView) obj).getDrawable().getLevel() / 10000.0f);
                case 2:
                    return a((View) obj);
                case 3:
                    return a((View) obj);
                default:
                    return a((View) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            switch (r2) {
                case 0:
                    b((View) obj, f4);
                    return;
                case 1:
                    ((ImageView) obj).setImageLevel((int) (f4 * 10000.0f));
                    return;
                case 2:
                    b((View) obj, f4);
                    return;
                case 3:
                    b((View) obj, f4);
                    return;
                default:
                    b((View) obj, f4);
                    return;
            }
        }
    };
    public static final MultiScalePropertyFactory WORKSPACE_SCALE_PROPERTY_FACTORY = new MultiScalePropertyFactory("workspace_scale_property");
    public static final MultiScalePropertyFactory HOTSEAT_SCALE_PROPERTY_FACTORY = new MultiScalePropertyFactory("hotseat_scale_property");
    public static final IntProperty LAYOUT_WIDTH = new IntProperty("width") { // from class: com.android.launcher3.LauncherAnimUtils.1
        public final Integer a(TextView textView) {
            switch (r2) {
                case 4:
                    return Integer.valueOf(textView.getTextColors().getDefaultColor());
                default:
                    return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
            }
        }

        @Override // android.util.Property
        public final Integer get(Object obj) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    return Integer.valueOf(((Drawable) obj).getAlpha());
                case 1:
                    View view = (View) obj;
                    if (view.getBackground() instanceof ColorDrawable) {
                        return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                    }
                    return 0;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams.width);
                        default:
                            return Integer.valueOf(layoutParams.height);
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams2.width);
                        default:
                            return Integer.valueOf(layoutParams2.height);
                    }
                case 4:
                    return a((TextView) obj);
                default:
                    return a((TextView) obj);
            }
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            int i5 = r2;
            switch (i5) {
                case 0:
                    ((Drawable) obj).setAlpha(i4);
                    return;
                case 1:
                    ((View) obj).setBackgroundColor(i4);
                    return;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams.width = i4;
                            return;
                        default:
                            layoutParams.height = i4;
                            return;
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams2.width = i4;
                            return;
                        default:
                            layoutParams2.height = i4;
                            return;
                    }
                case 4:
                    TextView textView = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView.setTextColor(i4);
                            return;
                        default:
                            textView.setHintTextColor(i4);
                            return;
                    }
                default:
                    TextView textView2 = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView2.setTextColor(i4);
                            return;
                        default:
                            textView2.setHintTextColor(i4);
                            return;
                    }
            }
        }
    };
    public static final IntProperty LAYOUT_HEIGHT = new IntProperty("height") { // from class: com.android.launcher3.LauncherAnimUtils.1
        public final Integer a(TextView textView) {
            switch (r2) {
                case 4:
                    return Integer.valueOf(textView.getTextColors().getDefaultColor());
                default:
                    return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
            }
        }

        @Override // android.util.Property
        public final Integer get(Object obj) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    return Integer.valueOf(((Drawable) obj).getAlpha());
                case 1:
                    View view = (View) obj;
                    if (view.getBackground() instanceof ColorDrawable) {
                        return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                    }
                    return 0;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams.width);
                        default:
                            return Integer.valueOf(layoutParams.height);
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams2.width);
                        default:
                            return Integer.valueOf(layoutParams2.height);
                    }
                case 4:
                    return a((TextView) obj);
                default:
                    return a((TextView) obj);
            }
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            int i5 = r2;
            switch (i5) {
                case 0:
                    ((Drawable) obj).setAlpha(i4);
                    return;
                case 1:
                    ((View) obj).setBackgroundColor(i4);
                    return;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams.width = i4;
                            return;
                        default:
                            layoutParams.height = i4;
                            return;
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams2.width = i4;
                            return;
                        default:
                            layoutParams2.height = i4;
                            return;
                    }
                case 4:
                    TextView textView = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView.setTextColor(i4);
                            return;
                        default:
                            textView.setHintTextColor(i4);
                            return;
                    }
                default:
                    TextView textView2 = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView2.setTextColor(i4);
                            return;
                        default:
                            textView2.setHintTextColor(i4);
                            return;
                    }
            }
        }
    };
    public static final IntProperty TEXT_COLOR = new IntProperty("textColor") { // from class: com.android.launcher3.LauncherAnimUtils.1
        public final Integer a(TextView textView) {
            switch (r2) {
                case 4:
                    return Integer.valueOf(textView.getTextColors().getDefaultColor());
                default:
                    return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
            }
        }

        @Override // android.util.Property
        public final Integer get(Object obj) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    return Integer.valueOf(((Drawable) obj).getAlpha());
                case 1:
                    View view = (View) obj;
                    if (view.getBackground() instanceof ColorDrawable) {
                        return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                    }
                    return 0;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams.width);
                        default:
                            return Integer.valueOf(layoutParams.height);
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams2.width);
                        default:
                            return Integer.valueOf(layoutParams2.height);
                    }
                case 4:
                    return a((TextView) obj);
                default:
                    return a((TextView) obj);
            }
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            int i5 = r2;
            switch (i5) {
                case 0:
                    ((Drawable) obj).setAlpha(i4);
                    return;
                case 1:
                    ((View) obj).setBackgroundColor(i4);
                    return;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams.width = i4;
                            return;
                        default:
                            layoutParams.height = i4;
                            return;
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams2.width = i4;
                            return;
                        default:
                            layoutParams2.height = i4;
                            return;
                    }
                case 4:
                    TextView textView = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView.setTextColor(i4);
                            return;
                        default:
                            textView.setHintTextColor(i4);
                            return;
                    }
                default:
                    TextView textView2 = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView2.setTextColor(i4);
                            return;
                        default:
                            textView2.setHintTextColor(i4);
                            return;
                    }
            }
        }
    };
    public static final IntProperty HINT_TEXT_COLOR = new IntProperty("hintTextColor") { // from class: com.android.launcher3.LauncherAnimUtils.1
        public final Integer a(TextView textView) {
            switch (r2) {
                case 4:
                    return Integer.valueOf(textView.getTextColors().getDefaultColor());
                default:
                    return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
            }
        }

        @Override // android.util.Property
        public final Integer get(Object obj) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    return Integer.valueOf(((Drawable) obj).getAlpha());
                case 1:
                    View view = (View) obj;
                    if (view.getBackground() instanceof ColorDrawable) {
                        return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                    }
                    return 0;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams.width);
                        default:
                            return Integer.valueOf(layoutParams.height);
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i4) {
                        case 2:
                            return Integer.valueOf(layoutParams2.width);
                        default:
                            return Integer.valueOf(layoutParams2.height);
                    }
                case 4:
                    return a((TextView) obj);
                default:
                    return a((TextView) obj);
            }
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            int i5 = r2;
            switch (i5) {
                case 0:
                    ((Drawable) obj).setAlpha(i4);
                    return;
                case 1:
                    ((View) obj).setBackgroundColor(i4);
                    return;
                case 2:
                    ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams.width = i4;
                            return;
                        default:
                            layoutParams.height = i4;
                            return;
                    }
                case 3:
                    ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                    switch (i5) {
                        case 2:
                            layoutParams2.width = i4;
                            return;
                        default:
                            layoutParams2.height = i4;
                            return;
                    }
                case 4:
                    TextView textView = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView.setTextColor(i4);
                            return;
                        default:
                            textView.setHintTextColor(i4);
                            return;
                    }
                default:
                    TextView textView2 = (TextView) obj;
                    switch (i5) {
                        case 4:
                            textView2.setTextColor(i4);
                            return;
                        default:
                            textView2.setHintTextColor(i4);
                            return;
                    }
            }
        }
    };

    /* loaded from: classes.dex */
    public final class ClampedProperty extends FloatProperty {
        private final float mMaxValue;
        private final float mMinValue;
        private final FloatProperty mProperty;

        public ClampedProperty(FloatProperty floatProperty, float f4, float f5) {
            super(floatProperty.getName() + "Clamped");
            this.mProperty = floatProperty;
            this.mMinValue = f4;
            this.mMaxValue = f5;
        }

        @Override // android.util.Property
        public final Float get(Object obj) {
            return (Float) this.mProperty.get(obj);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            this.mProperty.set((FloatProperty) obj, Float.valueOf(Utilities.boundToRange(f4, this.mMinValue, this.mMaxValue)));
        }
    }

    static {
        Property property = View.TRANSLATION_X;
        VIEW_TRANSLATE_X = property instanceof FloatProperty ? (FloatProperty) property : new FloatProperty("translateX") { // from class: com.android.launcher3.LauncherAnimUtils.2
            public final Float a(View view) {
                switch (r2) {
                    case 0:
                        return Float.valueOf(view.getScaleX());
                    case 1:
                    default:
                        return Float.valueOf(view.getAlpha());
                    case 2:
                        return Float.valueOf(view.getTranslationX());
                    case 3:
                        return Float.valueOf(view.getTranslationY());
                }
            }

            public final void b(View view, float f4) {
                switch (r2) {
                    case 0:
                        view.setScaleX(f4);
                        view.setScaleY(f4);
                        return;
                    case 1:
                    default:
                        view.setAlpha(f4);
                        return;
                    case 2:
                        view.setTranslationX(f4);
                        return;
                    case 3:
                        view.setTranslationY(f4);
                        return;
                }
            }

            @Override // android.util.Property
            public final Float get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((View) obj);
                    case 1:
                        return Float.valueOf(((ImageView) obj).getDrawable().getLevel() / 10000.0f);
                    case 2:
                        return a((View) obj);
                    case 3:
                        return a((View) obj);
                    default:
                        return a((View) obj);
                }
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f4) {
                switch (r2) {
                    case 0:
                        b((View) obj, f4);
                        return;
                    case 1:
                        ((ImageView) obj).setImageLevel((int) (f4 * 10000.0f));
                        return;
                    case 2:
                        b((View) obj, f4);
                        return;
                    case 3:
                        b((View) obj, f4);
                        return;
                    default:
                        b((View) obj, f4);
                        return;
                }
            }
        };
        Property property2 = View.TRANSLATION_Y;
        VIEW_TRANSLATE_Y = property2 instanceof FloatProperty ? (FloatProperty) property2 : new FloatProperty("translateY") { // from class: com.android.launcher3.LauncherAnimUtils.2
            public final Float a(View view) {
                switch (r2) {
                    case 0:
                        return Float.valueOf(view.getScaleX());
                    case 1:
                    default:
                        return Float.valueOf(view.getAlpha());
                    case 2:
                        return Float.valueOf(view.getTranslationX());
                    case 3:
                        return Float.valueOf(view.getTranslationY());
                }
            }

            public final void b(View view, float f4) {
                switch (r2) {
                    case 0:
                        view.setScaleX(f4);
                        view.setScaleY(f4);
                        return;
                    case 1:
                    default:
                        view.setAlpha(f4);
                        return;
                    case 2:
                        view.setTranslationX(f4);
                        return;
                    case 3:
                        view.setTranslationY(f4);
                        return;
                }
            }

            @Override // android.util.Property
            public final Float get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((View) obj);
                    case 1:
                        return Float.valueOf(((ImageView) obj).getDrawable().getLevel() / 10000.0f);
                    case 2:
                        return a((View) obj);
                    case 3:
                        return a((View) obj);
                    default:
                        return a((View) obj);
                }
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f4) {
                switch (r2) {
                    case 0:
                        b((View) obj, f4);
                        return;
                    case 1:
                        ((ImageView) obj).setImageLevel((int) (f4 * 10000.0f));
                        return;
                    case 2:
                        b((View) obj, f4);
                        return;
                    case 3:
                        b((View) obj, f4);
                        return;
                    default:
                        b((View) obj, f4);
                        return;
                }
            }
        };
        Property property3 = View.ALPHA;
        VIEW_ALPHA = property3 instanceof FloatProperty ? (FloatProperty) property3 : new FloatProperty("alpha") { // from class: com.android.launcher3.LauncherAnimUtils.2
            public final Float a(View view) {
                switch (r2) {
                    case 0:
                        return Float.valueOf(view.getScaleX());
                    case 1:
                    default:
                        return Float.valueOf(view.getAlpha());
                    case 2:
                        return Float.valueOf(view.getTranslationX());
                    case 3:
                        return Float.valueOf(view.getTranslationY());
                }
            }

            public final void b(View view, float f4) {
                switch (r2) {
                    case 0:
                        view.setScaleX(f4);
                        view.setScaleY(f4);
                        return;
                    case 1:
                    default:
                        view.setAlpha(f4);
                        return;
                    case 2:
                        view.setTranslationX(f4);
                        return;
                    case 3:
                        view.setTranslationY(f4);
                        return;
                }
            }

            @Override // android.util.Property
            public final Float get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((View) obj);
                    case 1:
                        return Float.valueOf(((ImageView) obj).getDrawable().getLevel() / 10000.0f);
                    case 2:
                        return a((View) obj);
                    case 3:
                        return a((View) obj);
                    default:
                        return a((View) obj);
                }
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f4) {
                switch (r2) {
                    case 0:
                        b((View) obj, f4);
                        return;
                    case 1:
                        ((ImageView) obj).setImageLevel((int) (f4 * 10000.0f));
                        return;
                    case 2:
                        b((View) obj, f4);
                        return;
                    case 3:
                        b((View) obj, f4);
                        return;
                    default:
                        b((View) obj, f4);
                        return;
                }
            }
        };
        VIEW_BACKGROUND_COLOR = new IntProperty("backgroundColor") { // from class: com.android.launcher3.LauncherAnimUtils.1
            public final Integer a(TextView textView) {
                switch (r2) {
                    case 4:
                        return Integer.valueOf(textView.getTextColors().getDefaultColor());
                    default:
                        return Integer.valueOf(textView.getHintTextColors().getDefaultColor());
                }
            }

            @Override // android.util.Property
            public final Integer get(Object obj) {
                int i4 = r2;
                switch (i4) {
                    case 0:
                        return Integer.valueOf(((Drawable) obj).getAlpha());
                    case 1:
                        View view = (View) obj;
                        if (view.getBackground() instanceof ColorDrawable) {
                            return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
                        }
                        return 0;
                    case 2:
                        ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                        switch (i4) {
                            case 2:
                                return Integer.valueOf(layoutParams.width);
                            default:
                                return Integer.valueOf(layoutParams.height);
                        }
                    case 3:
                        ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                        switch (i4) {
                            case 2:
                                return Integer.valueOf(layoutParams2.width);
                            default:
                                return Integer.valueOf(layoutParams2.height);
                        }
                    case 4:
                        return a((TextView) obj);
                    default:
                        return a((TextView) obj);
                }
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i4) {
                int i5 = r2;
                switch (i5) {
                    case 0:
                        ((Drawable) obj).setAlpha(i4);
                        return;
                    case 1:
                        ((View) obj).setBackgroundColor(i4);
                        return;
                    case 2:
                        ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) obj;
                        switch (i5) {
                            case 2:
                                layoutParams.width = i4;
                                return;
                            default:
                                layoutParams.height = i4;
                                return;
                        }
                    case 3:
                        ViewGroup.LayoutParams layoutParams2 = (ViewGroup.LayoutParams) obj;
                        switch (i5) {
                            case 2:
                                layoutParams2.width = i4;
                                return;
                            default:
                                layoutParams2.height = i4;
                                return;
                        }
                    case 4:
                        TextView textView = (TextView) obj;
                        switch (i5) {
                            case 4:
                                textView.setTextColor(i4);
                                return;
                            default:
                                textView.setHintTextColor(i4);
                                return;
                        }
                    default:
                        TextView textView2 = (TextView) obj;
                        switch (i5) {
                            case 4:
                                textView2.setTextColor(i4);
                                return;
                            default:
                                textView2.setHintTextColor(i4);
                                return;
                        }
                }
            }
        };
        ROTATION_DRAWABLE_PERCENT = new FloatProperty("drawableRotationPercent") { // from class: com.android.launcher3.LauncherAnimUtils.2
            public final Float a(View view) {
                switch (r2) {
                    case 0:
                        return Float.valueOf(view.getScaleX());
                    case 1:
                    default:
                        return Float.valueOf(view.getAlpha());
                    case 2:
                        return Float.valueOf(view.getTranslationX());
                    case 3:
                        return Float.valueOf(view.getTranslationY());
                }
            }

            public final void b(View view, float f4) {
                switch (r2) {
                    case 0:
                        view.setScaleX(f4);
                        view.setScaleY(f4);
                        return;
                    case 1:
                    default:
                        view.setAlpha(f4);
                        return;
                    case 2:
                        view.setTranslationX(f4);
                        return;
                    case 3:
                        view.setTranslationY(f4);
                        return;
                }
            }

            @Override // android.util.Property
            public final Float get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((View) obj);
                    case 1:
                        return Float.valueOf(((ImageView) obj).getDrawable().getLevel() / 10000.0f);
                    case 2:
                        return a((View) obj);
                    case 3:
                        return a((View) obj);
                    default:
                        return a((View) obj);
                }
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f4) {
                switch (r2) {
                    case 0:
                        b((View) obj, f4);
                        return;
                    case 1:
                        ((ImageView) obj).setImageLevel((int) (f4 * 10000.0f));
                        return;
                    case 2:
                        b((View) obj, f4);
                        return;
                    case 3:
                        b((View) obj, f4);
                        return;
                    default:
                        b((View) obj, f4);
                        return;
                }
            }
        };
    }

    public static Animator.AnimatorListener newCancelListener(final Runnable runnable) {
        return new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAnimUtils.12
            boolean mDispatched = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                if (this.mDispatched) {
                    return;
                }
                this.mDispatched = true;
                runnable.run();
            }
        };
    }
}
