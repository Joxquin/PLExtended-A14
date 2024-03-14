package com.android.launcher3.responsive;

import android.content.res.TypedArray;
import android.util.Log;
import com.android.launcher3.responsive.ResponsiveSpec;
import java.util.Map;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
/* loaded from: classes.dex */
public final class HotseatSpec {
    private final SizeSpec hotseatQsbSpace;
    private final int maxAvailableSize;
    private final ResponsiveSpec.SpecType specType;

    public HotseatSpec(TypedArray attrs, Map specs) {
        h.e(attrs, "attrs");
        h.e(specs, "specs");
        boolean z4 = false;
        int dimensionPixelSize = attrs.getDimensionPixelSize(0, 0);
        ResponsiveSpec.SpecType specType = ResponsiveSpec.SpecType.values()[attrs.getInt(1, 0)];
        SizeSpec orError = ResponsiveSpecsParserKt.getOrError(specs, "hotseatQsbSpace");
        h.e(specType, "specType");
        this.maxAvailableSize = dimensionPixelSize;
        this.specType = specType;
        this.hotseatQsbSpace = orError;
        if (dimensionPixelSize <= 0) {
            Log.e("HotseatSpec", j.a(HotseatSpec.class).b() + "#isValid - maxAvailableSize <= 0");
        } else {
            if (orError.isValid() && orError.onlyFixedSize()) {
                z4 = true;
            } else {
                Log.e("HotseatSpec", j.a(HotseatSpec.class).b() + "#isValid - !allSpecsAreValid()");
            }
        }
        if (!z4) {
            throw new IllegalStateException("Invalid HotseatSpec found.".toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HotseatSpec) {
            HotseatSpec hotseatSpec = (HotseatSpec) obj;
            return this.maxAvailableSize == hotseatSpec.maxAvailableSize && this.specType == hotseatSpec.specType && h.a(this.hotseatQsbSpace, hotseatSpec.hotseatQsbSpace);
        }
        return false;
    }

    public final SizeSpec getHotseatQsbSpace() {
        return this.hotseatQsbSpace;
    }

    public final int getMaxAvailableSize() {
        return this.maxAvailableSize;
    }

    public final ResponsiveSpec.SpecType getSpecType() {
        return this.specType;
    }

    public final int hashCode() {
        int hashCode = this.specType.hashCode();
        return this.hotseatQsbSpace.hashCode() + ((hashCode + (Integer.hashCode(this.maxAvailableSize) * 31)) * 31);
    }

    public final String toString() {
        return "HotseatSpec(maxAvailableSize=" + this.maxAvailableSize + ", specType=" + this.specType + ", hotseatQsbSpace=" + this.hotseatQsbSpace + ")";
    }
}
