package com.android.launcher3.responsive;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
/* loaded from: classes.dex */
public final class CalculatedHotseatSpec {
    private final int availableSpace;
    private int hotseatQsbSpace;
    private final HotseatSpec spec;

    public CalculatedHotseatSpec(int i4, HotseatSpec spec) {
        h.e(spec, "spec");
        this.availableSpace = i4;
        this.spec = spec;
        this.hotseatQsbSpace = spec.getHotseatQsbSpace().getCalculatedValue(i4, 0);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CalculatedHotseatSpec) {
            CalculatedHotseatSpec calculatedHotseatSpec = (CalculatedHotseatSpec) obj;
            if (this.availableSpace == calculatedHotseatSpec.availableSpace && this.hotseatQsbSpace == calculatedHotseatSpec.hotseatQsbSpace && h.a(this.spec, calculatedHotseatSpec.spec)) {
                return true;
            }
        }
        return false;
    }

    public final int getHotseatQsbSpace() {
        return this.hotseatQsbSpace;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.hotseatQsbSpace);
        return this.spec.hashCode() + ((hashCode + (Integer.hashCode(this.availableSpace) * 31)) * 31);
    }

    public final String toString() {
        String b4 = j.a(CalculatedHotseatSpec.class).b();
        int i4 = this.hotseatQsbSpace;
        HotseatSpec hotseatSpec = this.spec;
        String b5 = j.a(hotseatSpec.getClass()).b();
        int maxAvailableSize = hotseatSpec.getMaxAvailableSize();
        StringBuilder a4 = t.j.a(b4, "(availableSpace=");
        a4.append(this.availableSpace);
        a4.append(", hotseatQsbSpace=");
        a4.append(i4);
        a4.append(", ");
        a4.append(b5);
        a4.append(".maxAvailableSize=");
        a4.append(maxAvailableSize);
        a4.append(")");
        return a4.toString();
    }
}
