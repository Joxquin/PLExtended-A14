package com.android.launcher3.responsive;

import com.android.launcher3.responsive.ResponsiveSpec;
import com.android.launcher3.util.ResourceHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class HotseatSpecs {
    private final List specs;

    public HotseatSpecs(List list) {
        this.specs = list;
    }

    public static final HotseatSpecs create(ResourceHelper resourceHelper) {
        List parseXML = new ResponsiveSpecsParser(resourceHelper).parseXML("hotseatSpec", HotseatSpecs$Companion$create$specs$1.INSTANCE);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) parseXML).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((HotseatSpec) next).getSpecType() == ResponsiveSpec.SpecType.HEIGHT) {
                arrayList.add(next);
            }
        }
        return new HotseatSpecs(arrayList);
    }

    public final CalculatedHotseatSpec getCalculatedHeightSpec(int i4) {
        Object obj;
        boolean z4;
        Iterator it = this.specs.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (i4 <= ((HotseatSpec) obj).getMaxAvailableSize()) {
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
        HotseatSpec hotseatSpec = (HotseatSpec) obj;
        if (hotseatSpec != null) {
            return new CalculatedHotseatSpec(i4, hotseatSpec);
        }
        throw new IllegalStateException(("No available height spec found within " + i4 + ".").toString());
    }
}
