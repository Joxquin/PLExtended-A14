package com.android.launcher3.responsive;

import com.android.launcher3.responsive.ResponsiveSpec;
import com.android.launcher3.util.ResourceHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class FolderSpecs extends ResponsiveSpecs {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FolderSpecs(List widthSpecs, List heightSpecs) {
        super(widthSpecs, heightSpecs);
        h.e(widthSpecs, "widthSpecs");
        h.e(heightSpecs, "heightSpecs");
    }

    public static final FolderSpecs create(ResourceHelper resourceHelper) {
        List parseXML = new ResponsiveSpecsParser(resourceHelper).parseXML("folderSpec", FolderSpecs$Companion$create$specs$1.INSTANCE);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = ((ArrayList) parseXML).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((FolderSpec) next).getSpecType() == ResponsiveSpec.SpecType.WIDTH) {
                arrayList.add(next);
            } else {
                arrayList2.add(next);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        return new FolderSpecs((List) pair.a(), (List) pair.b());
    }
}
