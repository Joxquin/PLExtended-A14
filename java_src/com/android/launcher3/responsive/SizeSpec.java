package com.android.launcher3.responsive;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import com.android.launcher3.R$styleable;
import com.android.launcher3.util.ResourceHelper;
import kotlin.jvm.internal.h;
import n3.a;
import v.C1429e;
/* loaded from: classes.dex */
public final class SizeSpec {
    private final float fixedSize;
    private final boolean matchWorkspace;
    private final int maxSize;
    private final float ofAvailableSpace;
    private final float ofRemainderSpace;

    /* loaded from: classes.dex */
    public final class Companion {
        public static SizeSpec create(ResourceHelper resourceHelper, AttributeSet attributeSet) {
            h.e(resourceHelper, "resourceHelper");
            TypedArray obtainStyledAttributes = resourceHelper.obtainStyledAttributes(attributeSet, R$styleable.SizeSpec);
            float value = getValue(obtainStyledAttributes, 0);
            float value2 = getValue(obtainStyledAttributes, 3);
            float value3 = getValue(obtainStyledAttributes, 4);
            boolean z4 = obtainStyledAttributes.getBoolean(1, false);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, Integer.MAX_VALUE);
            obtainStyledAttributes.recycle();
            return new SizeSpec(value, value2, value3, z4, dimensionPixelSize);
        }

        private static float getValue(TypedArray typedArray, int i4) {
            int type = typedArray.getType(i4);
            if (type != 4) {
                if (type != 5) {
                    return 0.0f;
                }
                return typedArray.getDimensionPixelSize(i4, 0);
            }
            return typedArray.getFloat(i4, 0.0f);
        }
    }

    public SizeSpec() {
        this(0.0f, 0.0f, 0.0f, false, Integer.MAX_VALUE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SizeSpec) {
            SizeSpec sizeSpec = (SizeSpec) obj;
            return Float.compare(this.fixedSize, sizeSpec.fixedSize) == 0 && Float.compare(this.ofAvailableSpace, sizeSpec.ofAvailableSpace) == 0 && Float.compare(this.ofRemainderSpace, sizeSpec.ofRemainderSpace) == 0 && this.matchWorkspace == sizeSpec.matchWorkspace && this.maxSize == sizeSpec.maxSize;
        }
        return false;
    }

    public final int getCalculatedValue(int i4, int i5) {
        float f4 = this.fixedSize;
        if (f4 > 0.0f) {
            i5 = a.a(f4);
        } else if (!this.matchWorkspace) {
            float f5 = this.ofAvailableSpace;
            i5 = f5 > 0.0f ? a.a(f5 * i4) : 0;
        }
        int i6 = this.maxSize;
        return i5 > i6 ? i6 : i5;
    }

    public final boolean getMatchWorkspace() {
        return this.matchWorkspace;
    }

    public final int getRemainderSpaceValue(int i4, int i5) {
        float f4 = this.ofRemainderSpace;
        if (f4 > 0.0f) {
            i5 = a.a(f4 * i4);
        }
        int i6 = this.maxSize;
        return i5 > i6 ? i6 : i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = Float.hashCode(this.ofAvailableSpace);
        int hashCode2 = (Float.hashCode(this.ofRemainderSpace) + ((hashCode + (Float.hashCode(this.fixedSize) * 31)) * 31)) * 31;
        boolean z4 = this.matchWorkspace;
        int i4 = z4;
        if (z4 != 0) {
            i4 = 1;
        }
        return Integer.hashCode(this.maxSize) + ((hashCode2 + i4) * 31);
    }

    public final boolean isValid() {
        float f4 = this.fixedSize;
        int i4 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
        boolean z4 = this.matchWorkspace;
        float f5 = this.ofRemainderSpace;
        float f6 = this.ofAvailableSpace;
        if (i4 < 0 && f6 <= 0.0f && f5 <= 0.0f && !z4) {
            Log.e("SizeSpec", "SizeSpec#isValid - all attributes are empty");
            return false;
        }
        if ((f4 > 0.0f ? 1 : 0) + (f6 > 0.0f ? 1 : 0) + (f5 > 0.0f ? 1 : 0) + (z4 ? 1 : 0) > 1) {
            Log.e("SizeSpec", "SizeSpec#isValid - more than one attribute is filled");
            return false;
        }
        if (((0.0f > f6 || f6 > 1.0f) ? null : 1) != null) {
            if (((0.0f > f5 || f5 > 1.0f) ? null : 1) != null) {
                if (f4 >= 0.0f) {
                    int i5 = this.maxSize;
                    if (i5 >= 0.0f) {
                        if (f4 <= 0.0f || f4 <= i5) {
                            return true;
                        }
                        Log.e("SizeSpec", "SizeSpec#isValid - fixed size should be smaller than the max size.");
                        return false;
                    }
                }
                Log.e("SizeSpec", "SizeSpec#isValid - values should be bigger or equal to zero.");
                return false;
            }
        }
        Log.e("SizeSpec", "SizeSpec#isValid - values should be between 0 and 1");
        return false;
    }

    public final boolean onlyFixedSize() {
        if (this.ofAvailableSpace > 0.0f || this.ofRemainderSpace > 0.0f || this.matchWorkspace) {
            Log.e("SizeSpec", "SizeSpec#onlyFixedSize - only fixed size allowed for this tag");
            return false;
        }
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SizeSpec(fixedSize=");
        sb.append(this.fixedSize);
        sb.append(", ofAvailableSpace=");
        sb.append(this.ofAvailableSpace);
        sb.append(", ofRemainderSpace=");
        sb.append(this.ofRemainderSpace);
        sb.append(", matchWorkspace=");
        sb.append(this.matchWorkspace);
        sb.append(", maxSize=");
        return C1429e.a(sb, this.maxSize, ")");
    }

    public SizeSpec(float f4, float f5, float f6, boolean z4, int i4) {
        this.fixedSize = f4;
        this.ofAvailableSpace = f5;
        this.ofRemainderSpace = f6;
        this.matchWorkspace = z4;
        this.maxSize = i4;
    }
}
