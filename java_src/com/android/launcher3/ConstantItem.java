package com.android.launcher3;
/* loaded from: classes.dex */
public final class ConstantItem extends Item {
    private final Object defaultValue;
    private final boolean isBackedUp;
    private final boolean isBootAware;
    private final String sharedPrefKey;
    private final Class type;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ConstantItem(String str, boolean z4, Object obj, boolean z5) {
        this(str, z4, obj, z5, obj.getClass());
        kotlin.jvm.internal.h.b(obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConstantItem) {
            ConstantItem constantItem = (ConstantItem) obj;
            return kotlin.jvm.internal.h.a(this.sharedPrefKey, constantItem.sharedPrefKey) && this.isBackedUp == constantItem.isBackedUp && kotlin.jvm.internal.h.a(this.defaultValue, constantItem.defaultValue) && this.isBootAware == constantItem.isBootAware && kotlin.jvm.internal.h.a(this.type, constantItem.type);
        }
        return false;
    }

    public final Object getDefaultValue() {
        return this.defaultValue;
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
        int i5 = (hashCode + i4) * 31;
        Object obj = this.defaultValue;
        int hashCode2 = (i5 + (obj == null ? 0 : obj.hashCode())) * 31;
        boolean z5 = this.isBootAware;
        return this.type.hashCode() + ((hashCode2 + (z5 ? 1 : z5 ? 1 : 0)) * 31);
    }

    @Override // com.android.launcher3.Item
    public final boolean isBackedUp() {
        return this.isBackedUp;
    }

    public final String toString() {
        return "ConstantItem(sharedPrefKey=" + this.sharedPrefKey + ", isBackedUp=" + this.isBackedUp + ", defaultValue=" + this.defaultValue + ", isBootAware=" + this.isBootAware + ", type=" + this.type + ")";
    }

    public ConstantItem(String sharedPrefKey, boolean z4, Object obj, boolean z5, Class type) {
        kotlin.jvm.internal.h.e(sharedPrefKey, "sharedPrefKey");
        kotlin.jvm.internal.h.e(type, "type");
        this.sharedPrefKey = sharedPrefKey;
        this.isBackedUp = z4;
        this.defaultValue = obj;
        this.isBootAware = z5;
        this.type = type;
        if (z5) {
            int i4 = LauncherPrefsKt.f4461a;
        }
    }
}
