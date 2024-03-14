package com.android.launcher3.util;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.util.FloatProperty;
import java.io.PrintWriter;
import java.util.Arrays;
import t.C1395a;
/* loaded from: classes.dex */
public class MultiPropertyFactory {
    public static final FloatProperty MULTI_PROPERTY_VALUE = new FloatProperty() { // from class: com.android.launcher3.util.MultiPropertyFactory.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((MultiProperty) obj).mValue);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            ((MultiProperty) obj).setValue(f4);
        }
    };
    private float mAggregationOfOthers;
    private final FloatBiFunction mAggregator;
    private int mLastIndexSet;
    private final MultiProperty[] mProperties;
    private final FloatProperty mProperty;
    protected final Object mTarget;

    /* loaded from: classes.dex */
    public interface FloatBiFunction {
        float apply(float f4, float f5);
    }

    /* loaded from: classes.dex */
    public final class MultiProperty {
        private final float mDefaultValue;
        private final int mInx;
        private float mValue;

        public MultiProperty(int i4, float f4) {
            this.mInx = i4;
            this.mDefaultValue = f4;
            this.mValue = f4;
        }

        public final Animator animateToValue(float f4) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, MultiPropertyFactory.MULTI_PROPERTY_VALUE, f4);
            ofFloat.setAutoCancel(true);
            return ofFloat;
        }

        public final float getValue() {
            return this.mValue;
        }

        public final void setValue(float f4) {
            MultiProperty[] multiPropertyArr;
            MultiPropertyFactory multiPropertyFactory = MultiPropertyFactory.this;
            int i4 = multiPropertyFactory.mLastIndexSet;
            int i5 = this.mInx;
            if (i4 != i5) {
                multiPropertyFactory.mAggregationOfOthers = this.mDefaultValue;
                for (MultiProperty multiProperty : multiPropertyFactory.mProperties) {
                    if (multiProperty.mInx != i5) {
                        multiPropertyFactory.mAggregationOfOthers = multiPropertyFactory.mAggregator.apply(multiPropertyFactory.mAggregationOfOthers, multiProperty.mValue);
                    }
                }
                multiPropertyFactory.mLastIndexSet = i5;
            }
            float apply = multiPropertyFactory.mAggregator.apply(multiPropertyFactory.mAggregationOfOthers, f4);
            this.mValue = f4;
            multiPropertyFactory.apply(apply);
        }

        public final String toString() {
            return String.valueOf(this.mValue);
        }
    }

    public MultiPropertyFactory(Object obj, FloatProperty floatProperty, int i4, FloatBiFunction floatBiFunction) {
        this(obj, floatProperty, i4, floatBiFunction, 0.0f);
    }

    public void apply(float f4) {
        this.mProperty.set((FloatProperty) this.mTarget, Float.valueOf(f4));
    }

    public final void dump(String str, PrintWriter printWriter, String str2, String... strArr) {
        printWriter.println(str + str2);
        String str3 = str + '\t';
        for (int i4 = 0; i4 < strArr.length; i4++) {
            MultiProperty[] multiPropertyArr = this.mProperties;
            if (i4 >= multiPropertyArr.length) {
                StringBuilder a4 = C1395a.a(str3);
                a4.append(strArr[i4]);
                a4.append(" given for alpha index ");
                a4.append(i4);
                a4.append(" however there are only ");
                a4.append(multiPropertyArr.length);
                a4.append(" alpha channels.");
                printWriter.println(a4.toString());
            } else {
                StringBuilder a5 = C1395a.a(str3);
                a5.append(strArr[i4]);
                a5.append("=");
                a5.append(multiPropertyArr[i4].getValue());
                printWriter.println(a5.toString());
            }
        }
    }

    public final MultiProperty get(int i4) {
        return this.mProperties[i4];
    }

    public final String toString() {
        return Arrays.deepToString(this.mProperties);
    }

    public MultiPropertyFactory(Object obj, FloatProperty floatProperty, int i4, FloatBiFunction floatBiFunction, float f4) {
        this.mAggregationOfOthers = 0.0f;
        this.mLastIndexSet = -1;
        this.mTarget = obj;
        this.mProperty = floatProperty;
        this.mAggregator = floatBiFunction;
        this.mProperties = new MultiProperty[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            this.mProperties[i5] = new MultiProperty(i5, f4);
        }
    }
}
