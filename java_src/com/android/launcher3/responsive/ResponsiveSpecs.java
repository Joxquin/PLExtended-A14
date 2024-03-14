package com.android.launcher3.responsive;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
/* loaded from: classes.dex */
public abstract class ResponsiveSpecs {
    private final List heightSpecs;
    private final List widthSpecs;

    public ResponsiveSpecs(List widthSpecs, List heightSpecs) {
        h.e(widthSpecs, "widthSpecs");
        h.e(heightSpecs, "heightSpecs");
        this.widthSpecs = widthSpecs;
        this.heightSpecs = heightSpecs;
        boolean z4 = true;
        if (((widthSpecs.isEmpty() ^ true) && (heightSpecs.isEmpty() ^ true)) ? false : false) {
            return;
        }
        String b4 = j.a(getClass()).b();
        int size = widthSpecs.size();
        int size2 = heightSpecs.size();
        throw new IllegalStateException((b4 + " is incomplete - width list size = " + size + "; height list size = " + size2 + ".").toString());
    }

    public final ResponsiveSpec getHeightSpec(int i4) {
        Object obj;
        boolean z4;
        Iterator it = this.heightSpecs.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (i4 <= ((ResponsiveSpec) obj).getMaxAvailableSize()) {
                z4 = true;
                continue;
            } else {
                z4 = false;
                continue;
            }
            if (z4) {
                break;
            }
        }
        ResponsiveSpec responsiveSpec = (ResponsiveSpec) obj;
        if (responsiveSpec != null) {
            return responsiveSpec;
        }
        throw new IllegalStateException(("No available height spec found within " + i4 + ".").toString());
    }

    public final ResponsiveSpec getWidthSpec(int i4) {
        Object obj;
        boolean z4;
        Iterator it = this.widthSpecs.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (i4 <= ((ResponsiveSpec) obj).getMaxAvailableSize()) {
                z4 = true;
                continue;
            } else {
                z4 = false;
                continue;
            }
            if (z4) {
                break;
            }
        }
        ResponsiveSpec responsiveSpec = (ResponsiveSpec) obj;
        if (responsiveSpec != null) {
            return responsiveSpec;
        }
        throw new IllegalStateException(("No available width spec found within " + i4 + ".").toString());
    }
}
