package com.android.launcher3;

import android.content.Context;
/* loaded from: classes.dex */
public final class ContextualItem extends Item {

    /* renamed from: default  reason: not valid java name */
    private Object f0default;
    private final m3.l defaultSupplier;
    private final boolean isBootAware;
    private final Class type;
    private final String sharedPrefKey = "pref_allowRotation";
    private final boolean isBackedUp = true;

    public ContextualItem(m3.l lVar, boolean z4, Class cls) {
        this.defaultSupplier = lVar;
        this.isBootAware = z4;
        this.type = cls;
    }

    public final Object defaultValueFromContext(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        if (this.f0default == null) {
            this.f0default = this.defaultSupplier.invoke(context);
        }
        Object obj = this.f0default;
        kotlin.jvm.internal.h.b(obj);
        return obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContextualItem) {
            ContextualItem contextualItem = (ContextualItem) obj;
            return kotlin.jvm.internal.h.a(this.sharedPrefKey, contextualItem.sharedPrefKey) && this.isBackedUp == contextualItem.isBackedUp && kotlin.jvm.internal.h.a(this.defaultSupplier, contextualItem.defaultSupplier) && this.isBootAware == contextualItem.isBootAware && kotlin.jvm.internal.h.a(this.type, contextualItem.type);
        }
        return false;
    }

    @Override // com.android.launcher3.Item
    public final String getSharedPrefKey() {
        return this.sharedPrefKey;
    }

    @Override // com.android.launcher3.Item
    public final Class getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.sharedPrefKey.hashCode() * 31;
        boolean z4 = this.isBackedUp;
        int i4 = z4;
        if (z4 != 0) {
            i4 = 1;
        }
        int hashCode2 = (this.defaultSupplier.hashCode() + ((hashCode + i4) * 31)) * 31;
        boolean z5 = this.isBootAware;
        return this.type.hashCode() + ((hashCode2 + (z5 ? 1 : z5 ? 1 : 0)) * 31);
    }

    @Override // com.android.launcher3.Item
    public final boolean isBackedUp() {
        return this.isBackedUp;
    }

    public final String toString() {
        return "ContextualItem(sharedPrefKey=" + this.sharedPrefKey + ", isBackedUp=" + this.isBackedUp + ", defaultSupplier=" + this.defaultSupplier + ", isBootAware=" + this.isBootAware + ", type=" + this.type + ")";
    }
}
