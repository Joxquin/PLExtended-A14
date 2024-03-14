package com.android.launcher3.responsive;

import android.content.res.TypedArray;
import java.util.Map;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.h;
import m3.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class AllAppsSpecs$Companion$create$specs$1 extends FunctionReferenceImpl implements p {
    public static final AllAppsSpecs$Companion$create$specs$1 INSTANCE = new AllAppsSpecs$Companion$create$specs$1();

    public AllAppsSpecs$Companion$create$specs$1() {
        super(2, AllAppsSpec.class, "<init>", "<init>(Landroid/content/res/TypedArray;Ljava/util/Map;)V", 0);
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        TypedArray p02 = (TypedArray) obj;
        Map p12 = (Map) obj2;
        h.e(p02, "p0");
        h.e(p12, "p1");
        return new AllAppsSpec(p02, p12);
    }
}
