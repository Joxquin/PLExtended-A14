package com.android.launcher3.util;

import android.util.ArrayMap;
import android.util.FloatProperty;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.MultiScalePropertyFactory;
import java.util.function.BiConsumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public final class MultiScalePropertyFactory {
    private final String mName;
    private final ArrayMap mProperties = new ArrayMap();
    private float mMinOfOthers = 0.0f;
    private float mMaxOfOthers = 0.0f;
    private float mMultiplicationOfOthers = 0.0f;
    private Integer mLastIndexSet = -1;
    private float mLastAggregatedValue = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class MultiScaleProperty extends FloatProperty {
        private final int mInx;
        private float mValue;

        public MultiScaleProperty(int i4, String str) {
            super(str);
            this.mValue = 1.0f;
            this.mInx = i4;
        }

        public static /* synthetic */ void a(MultiScaleProperty multiScaleProperty, Integer num, MultiScaleProperty multiScaleProperty2) {
            multiScaleProperty.getClass();
            if (num.intValue() != multiScaleProperty.mInx) {
                MultiScalePropertyFactory multiScalePropertyFactory = MultiScalePropertyFactory.this;
                multiScalePropertyFactory.mMinOfOthers = Math.min(multiScalePropertyFactory.mMinOfOthers, multiScaleProperty2.mValue);
                MultiScalePropertyFactory multiScalePropertyFactory2 = MultiScalePropertyFactory.this;
                multiScalePropertyFactory2.mMaxOfOthers = Math.max(multiScalePropertyFactory2.mMaxOfOthers, multiScaleProperty2.mValue);
                MultiScalePropertyFactory.this.mMultiplicationOfOthers *= multiScaleProperty2.mValue;
            }
        }

        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((View) obj).getScaleX());
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            View view = (View) obj;
            if (MultiScalePropertyFactory.this.mLastIndexSet.intValue() != this.mInx) {
                MultiScalePropertyFactory.this.mMinOfOthers = Float.MAX_VALUE;
                MultiScalePropertyFactory.this.mMaxOfOthers = Float.MIN_VALUE;
                MultiScalePropertyFactory.this.mMultiplicationOfOthers = 1.0f;
                MultiScalePropertyFactory.this.mProperties.forEach(new BiConsumer() { // from class: com.android.launcher3.util.w
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj2, Object obj3) {
                        MultiScalePropertyFactory.MultiScaleProperty.a(MultiScalePropertyFactory.MultiScaleProperty.this, (Integer) obj2, (MultiScalePropertyFactory.MultiScaleProperty) obj3);
                    }
                });
                MultiScalePropertyFactory.this.mLastIndexSet = Integer.valueOf(this.mInx);
            }
            float min = Math.min(MultiScalePropertyFactory.this.mMinOfOthers, f4);
            float max = Math.max(MultiScalePropertyFactory.this.mMaxOfOthers, f4);
            MultiScalePropertyFactory.this.mLastAggregatedValue = Utilities.boundToRange(MultiScalePropertyFactory.this.mMultiplicationOfOthers * f4, min, max);
            this.mValue = f4;
            float f5 = MultiScalePropertyFactory.this.mLastAggregatedValue;
            view.setScaleX(f5);
            view.setScaleY(f5);
        }

        public final String toString() {
            return String.valueOf(this.mValue);
        }
    }

    public MultiScalePropertyFactory(String str) {
        this.mName = str;
    }

    public static /* synthetic */ MultiScaleProperty a(MultiScalePropertyFactory multiScalePropertyFactory, Integer num) {
        multiScalePropertyFactory.getClass();
        int intValue = num.intValue();
        return new MultiScaleProperty(intValue, multiScalePropertyFactory.mName + "_" + num);
    }

    public final FloatProperty get(final Integer num) {
        return (FloatProperty) this.mProperties.computeIfAbsent(num, new Function() { // from class: com.android.launcher3.util.v
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer num2 = (Integer) obj;
                return MultiScalePropertyFactory.a(MultiScalePropertyFactory.this, num);
            }
        });
    }
}
