package com.android.launcher3;
/* loaded from: classes.dex */
public abstract class Item {
    public abstract String getSharedPrefKey();

    public abstract Class getType();

    public abstract boolean isBackedUp();
}
