package com.android.launcher3.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public final class ResourceHelper {
    private final Context context;
    private final int specsFileId;

    public ResourceHelper(int i4, Context context) {
        this.context = context;
        this.specsFileId = i4;
    }

    public final XmlResourceParser getXml() {
        XmlResourceParser xml = this.context.getResources().getXml(this.specsFileId);
        kotlin.jvm.internal.h.d(xml, "context.resources.getXml(specsFileId)");
        return xml;
    }

    public final TypedArray obtainStyledAttributes(AttributeSet attributeSet, int[] iArr) {
        TypedArray obtainStyledAttributes = this.context.obtainStyledAttributes(attributeSet, iArr);
        kotlin.jvm.internal.h.d(obtainStyledAttributes, "context.obtainStyledAttributes(attrs, styleId)");
        return obtainStyledAttributes;
    }
}
